/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2020/634.pdf
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2021, Pascal Sasdrich
 *
 * All rights reserved.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTERS BE LIABLE FOR ANY
 * DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 * LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 * ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 * Please see license.rtf and README for license and further instructions.
 */

#include "preprocessor/ConfigurationElaborate.hpp"

void
ConfigurationElaborate::execute(const Settings *settings, State *state)
{
    int cores = settings->getCores();

    /* Resize vectors that contain BDDs */
    for(auto w : state->m_netlist_model->module_under_test()->wires()) {
        state->m_netlist_model->resize_bdd_vectors(w->uid(), cores);
    }

    /* Elaborate all BDDs in parallel */ 
    #pragma omp parallel for schedule(dynamic) num_threads(cores)
    for(int i=0;i<cores;i++){
        elaborate(state->m_netlist_model, state->m_managers[i], i, settings->getMasking());
    }

    /* Hierarchical details */ 
    const verica::Module* mut = state->m_netlist_model->module_under_test();

    // First, identify depth index
    for(auto w : mut->wires()){
        if(std::find(mut->input_pins().begin(), mut->input_pins().end(), w->source_pin()) != mut->input_pins().end()){
            state->m_netlist_model->set_depth_index(w->uid(), 0);
        } else if(w->source_pin()->parent_module()->is_sequential()){
            state->m_netlist_model->set_depth_index(w->uid(), w->source_pin()->parent_module()->input_pins()[0]->fan_in()->depth_index()+1);
        } else {
            int maximum_layer = 0;
            if(w->source_pin()->fan_in() != nullptr){
                maximum_layer = w->source_pin()->fan_in()->depth_index();
            } else {
                for(auto p : w->source_pin()->parent_module()->input_pins()) {
                    if(p->fan_in() != nullptr) maximum_layer = (p->fan_in()->depth_index() > maximum_layer) ? p->fan_in()->depth_index() : maximum_layer;
                }
            }
            state->m_netlist_model->set_depth_index(w->uid(), maximum_layer+1);
        }
    }    

    // Second, identify the register stages - first register stage gets index 0
    for(auto w : mut->wires()) {
        if(w->source_pin()->parent_module()->is_sequential()) {
            state->m_netlist_model->set_stage_index(w->uid(), find_input_register_index(state->m_netlist_model, w)+1);
        } 
        state->m_netlist_model->register_stages() += (state->m_netlist_model->register_stages() <= w->stage_index());
    }

    // Third, identify stage_index for all remaining gates
    for(auto w : mut->wires()) {
        if(!w->source_pin()->parent_module()->is_sequential()){
            state->m_netlist_model->set_stage_index(w->uid(), find_output_register_index(state->m_netlist_model, w));
            state->m_netlist_model->logic_stages() += (state->m_netlist_model->logic_stages() <= w->stage_index());
        }
    }

    // Fourth, determine inputs and outputs of the Module Under Test (MUT)
    state->m_mut_input_size = state->m_netlist_model->module_under_test()->input_pins().size();
    for (auto p : state->m_netlist_model->module_under_test()->output_pins()) state->m_mut_outputs.push_back(p->fan_in());
}

void
ConfigurationElaborate::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
{   
    (void)settings; // We do not need a settings object in this function. However, it must be given as paramter due to an overwriting. 

    /* Print header */
    logger->header();

    /* Print results */
    logger->log(service, this->m_name, "stage(s): ");

    logger->log(service, this->m_name, ITEM + "logic    : " + std::to_string(state->m_netlist_model->logic_stages()));
    logger->log(service, this->m_name, ITEM + "register : " + std::to_string(state->m_netlist_model->register_stages()));            

    /* Print footer */
    logger->footer(service, this->m_name, SUCCESS);
}


void
ConfigurationElaborate::elaborate(verica::Netlist* model, Cudd_Manager &manager, int core, int masking = 0){
    /* Select masking scheme */
    std::map<int, BDD> secrets;
    switch(masking) {
        case 0:
            secrets = booleanMasking(manager, netlistToMap(model, manager));
            break;
        case 1:
            secrets = additiveMasking(manager, netlistToMap(model, manager))[0];
            break;
        default:
            throw std::logic_error("[ELABORATION] Invalid masking scheme detected!");
    }

    /* Elaborate each BDD associated with the corresponding gates */
    for(auto w:model->module_under_test()->wires()){
        /* For each gate, store the corresponding BDD functions */
        gate_store_functions(model, w, manager, core);

        /* For each gate, store the input variables */
        gate_store_variables(model, w, core);

        /* For each gate, store the registers */
        gate_store_registers(model, w, core);

        /* For each gate, store the secrets */
        gate_store_secrets(model, w, secrets, manager, core);
    }

    // model->info();
}

void 
ConfigurationElaborate::gate_store_functions(verica::Netlist* model, const verica::Wire* wire, Cudd_Manager &manager, int core)
{
    /* Current module under test */
    const verica::Module* mut = model->module_under_test();

    /* Create BDD variable for all (global) inputs */
    if (wire->source_pin()->is_const()){
        // handle constant inputs @TODO: this can also be accomplished by the identifier 8 and 9 (see injection.cpp) 
        if (wire->source_pin()->const_input() == 0)
            model->set_bdd_golden_function(wire->uid(), manager.bddZero(), core);
        else if (wire->source_pin()->const_input() == 1)
            model->set_bdd_golden_function(wire->uid(), manager.bddOne(), core);
    }if(std::find(mut->input_pins().begin(), mut->input_pins().end(), wire->source_pin()) != mut->input_pins().end()){
        // create new BDD variable
        model->set_bdd_golden_function(wire->uid(), manager.bddVar(wire->primary_input_identifier()), core);
    } else if(wire->source_pin()->fan_in() != nullptr){
        // connection between two modules (same BDD function as input wire)
        model->set_bdd_golden_function(wire->uid(), wire->source_pin()->fan_in()->golden_functions(core), core );
    } else if(wire->source_pin()->parent_module()->input_pins().size() > 0){
        // evaluate BDDs based on the gate identifiers
        std::vector<const verica::Pin*> input_pins = wire->source_pin()->parent_module()->input_pins();
        std::vector<BDD> operands;
        for(auto p : input_pins) {
            if(p->is_const()){
                BDD const_in = p->const_input() ? manager.bddOne() : manager.bddZero();
                operands.push_back(const_in);
            } else {
                operands.push_back(p->fan_in()->golden_functions(core));
            }
        }
        switch (wire->source_pin()->gate_identifier()){
            case 0:
                model->set_bdd_golden_function(wire->uid(), operands[0], core);
                break;
            case 1:
                model->set_bdd_golden_function(wire->uid(), !operands[0], core);
                break;
            case 2:
                model->set_bdd_golden_function(wire->uid(), operands[0] & operands[1], core);
                break;
            case 3:
                model->set_bdd_golden_function(wire->uid(), !(operands[0] & operands[1]), core);
                break;
            case 4:
                model->set_bdd_golden_function(wire->uid(), operands[0] | operands[1], core);
                break;   
            case 5:
                model->set_bdd_golden_function(wire->uid(), !(operands[0] | operands[1]), core);
                break;
            case 6:
                model->set_bdd_golden_function(wire->uid(), operands[0] ^ operands[1], core);
                break;
            case 7:
                model->set_bdd_golden_function(wire->uid(), !(operands[0] ^ operands[1]), core);
                break;  
            case 11:
                model->set_bdd_golden_function(wire->uid(), operands[0], core);
                break;  
            case 12:
                model->set_bdd_golden_function(wire->uid(), !operands[0], core);
                break;                                  
            default:
                throw std::logic_error("[ELABORATE] Gate identifier " + std::to_string(wire->source_pin()->gate_identifier()) + " is not supported!");
        }
    }
    else {
        throw std::logic_error("[ELABORATE] Module with zero input pins detected (gate_store_functions())!");
    }
}

void 
ConfigurationElaborate::gate_store_variables(verica::Netlist* model, const verica::Wire* wire, int core)
{
    /* Current module under test */
    const verica::Module* mut = model->module_under_test();

    if(std::find(mut->input_pins().begin(), mut->input_pins().end(), wire->source_pin()) != mut->input_pins().end()){
        model->insert_variable(wire->uid(), wire, core);
    } else if(wire->source_pin()->fan_in() != nullptr){
        model->insert_variable(wire->uid(), wire->source_pin()->fan_in()->variables(core), core);
    } else if(wire->source_pin()->parent_module()->input_pins().size() > 0) {
        for(auto elem : wire->source_pin()->parent_module()->input_pins()){
            if(elem->fan_in() != nullptr) model->insert_variable(wire->uid(), elem->fan_in()->variables(core), core);
        }
    } else {
        throw std::logic_error("[ELABORATE] Module with zero input pins detected (gate_store_variables())!");
    }
}

void 
ConfigurationElaborate::gate_store_registers(verica::Netlist* model, const verica::Wire* wire, int core)
{
    /* Current module under test */
    const verica::Module* mut = model->module_under_test();

    if(std::find(mut->input_pins().begin(), mut->input_pins().end(), wire->source_pin()) != mut->input_pins().end()){
        model->insert_register(wire->uid(), wire, core);
    } else if(wire->source_pin()->fan_in() != nullptr){
        model->insert_register(wire->uid(), wire->source_pin()->fan_in()->registers(core), core);
    } else if(wire->source_pin()->parent_module()->input_pins().size() > 0) {
        if (wire->source_pin()->parent_module()->is_sequential()) {
            model->insert_register(wire->uid(), wire, core);
        } else {
            for(auto elem : wire->source_pin()->parent_module()->input_pins()){
                if(elem->fan_in() != nullptr) model->insert_register(wire->uid(), elem->fan_in()->registers(core), core);
            }
        }       
    } else {
        throw std::logic_error("[ELABORATE] Module with zero input pins detected (gate_store_registers())!");
    }
}

void 
ConfigurationElaborate::gate_store_secrets(verica::Netlist* model, const verica::Wire* wire, std::map<int, BDD> secrets, Cudd_Manager &manager, int core)
{
    /* Current module under test */
    const verica::Module* mut = model->module_under_test();

    if(std::find(mut->input_pins().begin(), mut->input_pins().end(), wire->source_pin()) != mut->input_pins().end()){
        if(wire->source_pin()->port_type() == verica::Refresh){
            model->set_bdd_secret(wire->uid(), manager.bddOne(), core);
        } else {
            int share_idx = wire->source_pin()->share_index();
            if(share_idx == -1){
                model->set_bdd_secret(wire->uid(), manager.bddZero(), core);
            } else {
                int module_size = model->module_under_test()->wires().size() + model->module_under_test()->output_pins().size();
                model->set_bdd_secret(wire->uid(), manager.bddVar(module_size + share_idx).Ite(secrets[share_idx], manager.bddOne()), core);
            }
        } 
    } else if(wire->source_pin()->fan_in() != nullptr){
        model->set_bdd_secret(wire->uid(), wire->source_pin()->fan_in()->secrets(core), core);
    } else if(wire->source_pin()->parent_module()->input_pins().size() > 0) {
        model->set_bdd_secret(wire->uid(), manager.bddOne(), core);
        for(auto elem : wire->source_pin()->parent_module()->input_pins()){
            if(elem->fan_in() != nullptr) model->set_bdd_secret(wire->uid(), wire->secrets(core) & elem->fan_in()->secrets(core), core);
        }     
    } else {
        throw std::logic_error("[ELABORATE] Module with zero input pins detected (gate_store_secrets())!");
    }
}


int 
ConfigurationElaborate::find_input_register_index(const verica::Netlist* model, const verica::Wire* wire){
    int res = -1; // no register detected
    std::vector<const verica::Pin*> input_pins = model->module_under_test()->input_pins();

    if (wire == nullptr) {  // In most cases, a nullptr Wire pointer is caused by an erroneous Verilog file.
        throw std::runtime_error("[ELABORATE] Wire pointer is set as nullptr.");
    }

    const verica::Pin* next_pin = wire->source_pin();
    while (!next_pin->parent_module()->gate() && std::find(input_pins.begin(), input_pins.end(), next_pin) == input_pins.end()){
        next_pin = next_pin->fan_in()->source_pin();
    }    

    // for(auto p : wire->source_pin()->parent_module()->input_pins()){
    for(auto p : next_pin->parent_module()->input_pins()){
        if(std::find(input_pins.begin(), input_pins.end(), p) == input_pins.end() && !p->is_const()){
            const verica::Pin* next_pin_next = p->fan_in()->source_pin();
            while (!next_pin_next->parent_module()->gate() && std::find(input_pins.begin(), input_pins.end(), next_pin_next) == input_pins.end()){
                next_pin_next = next_pin_next->fan_in()->source_pin();
            }    
            // if(p->fan_in()->source_pin()->parent_module()->is_sequential()) return p->fan_in()->stage_index();
            if(next_pin_next->parent_module()->is_sequential()) return next_pin_next->fan_out()->stage_index();

            int sub_res = find_input_register_index(model, p->fan_in());

            res = (sub_res > res) ? sub_res : res;
        }
    }

    return res;
}

int 
ConfigurationElaborate::find_output_register_index(const verica::Netlist* model, const verica::Wire* wire){
    int stage_idx = model->register_stages();
    std::vector<const verica::Pin*> output_pins = model->module_under_test()->output_pins();

    if (wire == nullptr) {  // In most cases, a nullptr Wire pointer is caused by an erroneous Verilog file.
        throw std::runtime_error("[ELABORATE] Wire pointer is set as nullptr.");
    }

    for(auto p : wire->target_pins()){
        if(std::find(output_pins.begin(), output_pins.end(), p) == output_pins.end()){
            if(p->parent_module()->is_sequential()) return p->parent_module()->output_pins()[0]->fan_out()->stage_index();

            const verica::Wire* next_wire;
            if(p->fan_out() != nullptr){
                next_wire = p->fan_out();
            } else{
                next_wire = p->parent_module()->output_pins()[0]->fan_out();
            }
            int sub_stage_idx = find_output_register_index(model, next_wire);
            // int sub_stage_idx = find_output_register_index(model, p->parent_module()->output_pins()[0]->fan_out());

            stage_idx = (sub_stage_idx < stage_idx) ? sub_stage_idx : stage_idx;
        }
    }

    return stage_idx;
}

std::map<int, std::vector<BDD>>
ConfigurationElaborate::netlistToMap(verica::Netlist* model, Cudd_Manager &manager){
    std::map<int, std::vector<BDD>> inputs;
    std::map<int, std::vector<int>> inputs_idx;

    for(auto p : model->module_under_test()->input_pins()){
        if(std::find(inputs_idx[p->share_index()].begin(), inputs_idx[p->share_index()].end(), p->fan_out()->primary_input_identifier()) == inputs_idx[p->share_index()].end()){
            inputs[p->share_index()].push_back(manager.bddVar(p->fan_out()->primary_input_identifier()));
            inputs_idx[p->share_index()].push_back(p->fan_out()->primary_input_identifier());
        }
    }

    return inputs;
}

std::map<int, BDD>
ConfigurationElaborate::booleanMasking(Cudd_Manager &cuddManager, std::map<int, std::vector<BDD>> inputs)
{
    std::map<int, BDD> result;
    for(auto share_idx : inputs){
        BDD tmp = cuddManager.bddZero();
        for(auto share : share_idx.second) tmp ^= share;
        result.insert(std::pair<int, BDD>(share_idx.first, tmp));
    }

    return result;
}

std::map<int, BDD>*
ConfigurationElaborate::additiveMasking(Cudd_Manager &cuddManager, std::map<int, std::vector<BDD>> inputs)
{
    static Cudd_Manager manager = cuddManager;
    static std::map<int, BDD> result[2];
    result[0].clear(); result[1].clear();

    // Ripple Carry Adder (using bdd_add in cudd_ext.cpp)
    bool is_trivial = true;
    for (std::map<int, std::vector<BDD>>::iterator shareit = inputs.begin(); shareit != inputs.end(); shareit++) 
    {
        if ((shareit->second).size() > 1) {
            is_trivial = false;
        }
    }

    // Trivial case: Share indices only contain one domain per share
    if (is_trivial) {
        for (std::map<int, std::vector<BDD>>::iterator shareit = inputs.begin(); shareit != inputs.end(); shareit++) 
        {
            result[0].insert(std::pair<int, BDD>(shareit->first, *((shareit->second).begin())));
        }
    }

    // Recursive usage of a Ripple Carry Adder (using bdd_add in sylvan_ext.cpp)
    else {
        BDD carry = cuddManager.bddZero();
        std::map<int, std::vector<BDD>> temp_map;
        
        // Add the first two domains of every share and append the result to the remaining domain vectors
        for (std::map<int, std::vector<BDD>>::iterator shareit = inputs.begin(); shareit != inputs.end(); shareit++) 
        {
            std::vector<BDD> temp_vector;
            std::vector<BDD>::iterator domainit = (shareit->second).begin();
            BDD dd1 = *domainit;
            domainit++;
            BDD dd2 = *domainit;
            domainit++;
            
            BDD* bdd_ptr = manager.bdd_add(dd1, dd2, carry);
            temp_vector.push_back(bdd_ptr[0]);
            carry = bdd_ptr[1];

            while (domainit != (shareit->second).end())
            {
                temp_vector.push_back(*domainit++);
            }
            
            temp_map.insert(std::pair<int, std::vector<BDD>>(shareit->first, temp_vector));
        }

        std::map<int, BDD>* temp_res = additiveMasking(cuddManager, temp_map);
        result[0] = temp_res[0];
        result[1] = temp_res[1];
    }

    return result;
}
