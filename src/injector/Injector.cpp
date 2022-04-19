/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2020/634.pdf
 *           https://eprint.iacr.org/2021/936.pdf
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

#include "injector/Injector.hpp"

/* 
 * =========================================================================================
 * Constructor(s)
 * =========================================================================================
 */

Injector::Injector(std::string name, Logger *logger, Settings *settings, State *state) : Service(name, logger, settings, state)
{
}

/* 
 * =========================================================================================
 * Destructor
 * =========================================================================================
 */

Injector::~Injector()
{

}

/* 
 * =========================================================================================
 * Generate Permuted Fault Locations
 * =========================================================================================
 */
void Injector::get_next_fault_locations(unsigned int number_of_faults){
    /* Repeatedly used variables */ 
    int variate = this->m_settings->getFaultVariate();

    if(m_permutation_done && number_of_faults != m_current_number_of_faults){
        // Determine if complexity should be reduced
        if(number_of_faults > 1 && this->m_settings->getReduceComplexity() != 0){
            m_validFaultLocationsIn = this->m_state->m_faultLocationsReduced;
        }
        else {
            m_validFaultLocationsIn = this->m_state->m_faultLocations;
        }

        // Determine different stage in validFaultLocationIn
        m_stage_numbers.clear();
        for(auto w : m_validFaultLocationsIn){
            if(find(m_stage_numbers.begin(), m_stage_numbers.end(), w->stage_index()) == m_stage_numbers.end()) {
                m_stage_numbers.push_back(w->stage_index());
            }
        }
        if(this->m_settings->getVerbose() > 0) this->m_logger->log(this->m_name, "Found " + std::to_string(m_stage_numbers.size()) + " valid stages to inject faults."); 

        // create a bitmask with number of logic stages indices
        // fill with selected variate value
        m_bitmask.clear();
        m_bitmask.resize(m_stage_numbers.size());
        std::fill(m_bitmask.begin(), m_bitmask.begin() + variate, true);

        // update state
        m_current_number_of_faults = number_of_faults;
        m_permutation_done = false;
    }

    if(m_batch_computing_done){
        // Handling univariate, bivariate and multivariate fault injections
        // start to fill a vector with all valid faultLocations for the current analysis
        m_faultLocations.clear();
        for(unsigned int i=0; i < m_stage_numbers.size(); ++i){
            if(m_bitmask[i]){
                std::vector<const verica::Wire*> temp;
                for(auto loc : m_validFaultLocationsIn){
                    if((unsigned int)loc->stage_index() == m_stage_numbers[i]){
                        // if logical stage i should be considered, add all corresponding gates to faultLocations
                        temp.push_back(loc);
                    }
                }
                m_faultLocations.push_back(temp);
            }
        }

        // compute total number of combinations to be tested
        m_num_of_combinations = 1;
        for(int v=0; v<variate; ++v){
            m_num_of_combinations *=  binomial_coeff((uint64_t)m_faultLocations[v].size(), (uint64_t)m_current_number_of_faults); 
        }

        // define bitmasks
        m_bitmasks.clear();
        for(int var=0; var<variate; ++var){
                std::vector<bool> bitmask(m_faultLocations[var].size());
                std::fill(bitmask.begin(), bitmask.begin() + m_current_number_of_faults, true);
                m_bitmasks.push_back(bitmask);
        }

        // reset state variables
        m_batch_computing_done = false;
        m_batch_start = 0;
        m_batch_range = 10e6; // TODO: config?
    }

    /* Determine new batch of permuted fault locations (max. m_batch_range different sets of fault locations) */ 
    if(m_batch_start+m_batch_range > m_num_of_combinations){
        m_batch_range = m_num_of_combinations - m_batch_start;
    }

    // generate list of permuted fault locations
    m_permutedFaultLocations.clear();
    generate_fault_combinations_partly(m_faultLocations, m_permutedFaultLocations, m_bitmasks, variate, m_batch_start, m_batch_range);

    // update state
    m_batch_start += m_batch_range;

    // check if batch computation is done
    if(m_batch_start == m_num_of_combinations){
        m_batch_computing_done = true;
    }

    // check if there are any other permutations
    if(m_batch_computing_done){
        if(!std::prev_permutation(m_bitmask.begin(), m_bitmask.end())){
            m_permutation_done = true;
        }
    }
}

void Injector::generate_fault_combinations_partly(std::vector<std::vector<const verica::Wire* >> &faultLocations, std::vector<std::vector<const verica::Wire*>> &permutedFaultLocations, std::vector<std::vector<bool>> &bitmasks, int variate, uint64_t start, uint64_t range){
    // Main loop to determine permutations
    for(uint64_t i=start; i < (start+range); ++i){
        // Determine subpermutations that should be used to determine the target permutation
        std::vector<const verica::Wire*> temp, temp2;
        // determine valid combinations for each logic stage
        for(int v=0; v<variate; ++v){
            // get valid combination of gates
            temp = generate_specific_fault_combinations(faultLocations[v], bitmasks[v]);
            // shouldn't be empty
            if(temp.size() == 0){
                throw std::logic_error("[ERR-GEN-COMB] Generate fault combinations partly failed!");
                return;
            } else {
                temp2.insert(temp2.end(), temp.begin(), temp.end());
            }
            // generate next valid permutation
            std::prev_permutation(bitmasks[v].begin(), bitmasks[v].end());
        }
        // push generated combination over all logic stages to permutedFaultLocations
        permutedFaultLocations.push_back(temp2);
    }
}

std::vector<const verica::Wire*> Injector::generate_specific_fault_combinations(std::vector<const verica::Wire*> &faultLocations,  std::vector<bool> &bitmask){
    std::vector<const verica::Wire*> temp;
    for(unsigned int i=0; i < faultLocations.size(); ++i){
        if(bitmask[i]){
            temp.push_back(faultLocations[i]);
        }
    }
    return temp;
}


// @TODO: not implemented - does not need to be tested
void Injector::adapt_permuted_fault_locations_for_sna(){
    if(!this->m_settings->getFaultFSNI()){
        throw std::logic_error("[INJECTOR] FSNI is disabled: I am not allowed to adapt the permuted fault locations!");
    }
    else{
        // for(auto p : state->m_netlist_model->module_under_test()->input_pins()){
        //     state->m_faultLocations.push_back(p->fan_out());
        // }
    }
}




/* 
 * =========================================================================================
 * Fault Injection
 * =========================================================================================
 */
std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> Injector::prepeare_fault_mappings_for_injection(std::vector<const verica::Wire*> &permutation){
    // final vector of pairs
    std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> collection;

    // required varibales
    std::vector<unsigned int> cnt(permutation.size(), 0);
    std::vector<verica::fault::Fault> new_set_of_mappings;
    std::vector<const verica::Wire*> new_set_of_wires;
    std::vector<verica::fault::Fault> currently_considered_faults;
    bool done = true;

    // push first set of target wires and mappings to context lists
    for(auto w : permutation) {
        new_set_of_mappings.push_back(this->m_state->m_faultMap[w->source_pin()->gate_identifier()][0]);
        currently_considered_faults.push_back(this->m_state->m_faultMap[w->source_pin()->gate_identifier()][0]);
    }
    collection.push_back(std::make_pair(permutation, new_set_of_mappings));

    // check if mappings alread complete (e.g., for bitflip model)
    for(unsigned int idx=0; idx<permutation.size(); ++idx)
        done = (cnt[idx] == this->m_state->m_faultMap[permutation[idx]->source_pin()->gate_identifier()].size()-1) ? done & true : done & false;

    // generate all remaining sets of wires and corresponding fault mappings
    int carry = 0;
    while(!done){
        done = true;

        // increase counters
        cnt[0] = (cnt[0] + 1) % this->m_state->m_faultMap[permutation[0]->source_pin()->gate_identifier()].size();
        carry = (cnt[0] == 0)? 1 : 0;
        for(unsigned int i=1; i<permutation.size(); ++i){
            cnt[i] = (cnt[i] + carry) % this->m_state->m_faultMap[permutation[i]->source_pin()->gate_identifier()].size();
            carry = (cnt[i] == 0 && carry == 1)? 1 : 0;
        }

        // determine next mappings
        new_set_of_mappings.clear();
        new_set_of_wires.clear();
        for(unsigned int idx=0; idx<permutation.size(); ++idx){
            if(currently_considered_faults[idx] != this->m_state->m_faultMap[permutation[idx]->source_pin()->gate_identifier()][cnt[idx]]){
                new_set_of_mappings.push_back(this->m_state->m_faultMap[permutation[idx]->source_pin()->gate_identifier()][cnt[idx]]);
                new_set_of_wires.push_back(permutation[idx]);
                currently_considered_faults[idx] = this->m_state->m_faultMap[permutation[idx]->source_pin()->gate_identifier()][cnt[idx]];
            }
            done = (cnt[idx] == this->m_state->m_faultMap[permutation[idx]->source_pin()->gate_identifier()].size()-1) ? done & true : done & false;
        }

        // push mapping to list of mappings and wires
        collection.push_back(std::make_pair(new_set_of_wires, new_set_of_mappings));
    }

    return collection;
}

void Injector::inject(std::vector<const verica::Wire*> &wires, std::vector<verica::fault::Fault> &faultList, int core){
    // store current fault injection to share it between different operations
    for(unsigned int idx=0; idx < wires.size(); ++idx){
        unsigned int it;
        for(it=0; it < this->m_state->m_current_fault_injections[core].first.size(); ++it){
            if(this->m_state->m_current_fault_injections[core].first[it] == wires[idx]) break;
        }
        if(it == this->m_state->m_current_fault_injections[core].first.size()){
            this->m_state->m_current_fault_injections[core].first.push_back(wires[idx]);
            this->m_state->m_current_fault_injections[core].second.push_back(faultList[idx]);
        } else {
            this->m_state->m_current_fault_injections[core].first[it] = wires[idx];
            this->m_state->m_current_fault_injections[core].second[it] = faultList[idx];
        }
    }
    
    // call injection strategy
    fault_injection_incremental(wires, faultList, core);
}

void Injector::interrupt_fault_injection(std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> fault_mappings, int &thread_num, bool &cancel){
    // This code snippet outputs detailed information about effective fault injections
    if(this->m_state->m_effective[thread_num] != 0 && cancel == false){
        cancel = true;
        #pragma omp critical 
        {
        std::vector<BDD> output_bdds;
        float mindterms_out;
        std::cout << "Effective faults detected: ~2^" << this->m_state->m_effective[thread_num] << std::endl;
        for (unsigned int out = 0; out < this->m_state->m_mut_outputs.size(); out++) {
            mindterms_out = std::log10((this->m_state->m_mut_outputs[out]->faulty_functions(thread_num) ^ this->m_state->m_mut_outputs[out]->golden_functions(thread_num)).CountMinterm(this->m_state->m_mut_input_size));
            if(mindterms_out != 0){
                std::cout << "Effected output node: " << out << std::endl;
                std::cout  << "Faulted node(s): ";
                for(auto l : fault_mappings[0].first) std::cout << l->uid() << " ";
                std::cout << std::endl;
                std::cout << "Fault mappings: ";
                std::cout << this->m_state->m_netlist_model->fault_state_to_json_string(this->m_state->m_current_fault_injections[thread_num], this->m_state->m_cell_library) << std::endl;
                std::cout << std::endl;
                std::cout <<"Each line indicates the variable allocation leading to effective faults. Minus signs (-) indicate a dont_care allocation of the corresponding variable." << std::endl;
                Cudd_PrintDebug(this->m_state->m_managers[thread_num].getManager(), (this->m_state->m_mut_outputs[out]->faulty_functions(thread_num) ^ this->m_state->m_mut_outputs[out]->golden_functions(thread_num)).getNode(), this->m_state->m_mut_input_size, 2);
                std::cout << std::endl;
                // break;
            }
        }
        }
    } 
}

void Injector::restore_faulty_models(std::vector<const verica::Wire*> &locations, int &thread_num){
    for(auto r : locations){
        this->m_state->m_netlist_model->set_faulty_gate_identifier(r->uid(), r->source_pin()->gate_identifier(), thread_num);
        elaborate_node(r, thread_num);
        for(int n=r->propagation_path().size()-1; n >=0; --n){  
            elaborate_node(r->propagation_path()[n], thread_num);
        }
    }

    // reset temporary veriable
    this->m_state->m_current_fault_injections[thread_num].first.clear();
    this->m_state->m_current_fault_injections[thread_num].second.clear();
}

void Injector::fault_injection_incremental(std::vector<const verica::Wire*> &nodes, std::vector<verica::fault::Fault> &faultList, int core){
    for(unsigned int it=0; it < nodes.size(); it++){
        fault_node(nodes[it], faultList[it], core);
        for(int pos=nodes[it]->propagation_path().size()-1; pos >=0; --pos){   
            elaborate_node(nodes[it]->propagation_path()[pos], core);
        }
    }
}

void Injector::fault_node(const verica::Wire* wire, verica::fault::Fault fault, int core){
    // Operand gates
    std::vector<const verica::Wire*> operands;

    // Read operand function(s) from source nodes(s)
    for(auto p : wire->source_pin()->parent_module()->input_pins()) operands.push_back(p->fan_in());

    // Generate faulty function for gate
    switch (fault){
        case verica::fault::SET:
            this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), this->m_state->m_managers[core].bddOne(), core);
            this->m_state->m_netlist_model->set_faulty_gate_identifier(wire->uid(), 8, core);
            break;
        case verica::fault::RESET:
            this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), this->m_state->m_managers[core].bddZero(), core);
            this->m_state->m_netlist_model->set_faulty_gate_identifier(wire->uid(), 9, core);
            break;
        case verica::fault::AND:
            this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), operands[0]->faulty_functions(core) & operands[1]->faulty_functions(core), core);
            this->m_state->m_netlist_model->set_faulty_gate_identifier(wire->uid(), 2, core);
            break;
        case verica::fault::NAND:
            this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), !(operands[0]->faulty_functions(core) & operands[1]->faulty_functions(core)), core);
            this->m_state->m_netlist_model->set_faulty_gate_identifier(wire->uid(), 3, core);
            break;
        case verica::fault::OR:
            this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), operands[0]->faulty_functions(core) | operands[1]->faulty_functions(core), core);
            this->m_state->m_netlist_model->set_faulty_gate_identifier(wire->uid(), 4, core);
            break;
        case verica::fault::NOR:
            this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), !(operands[0]->faulty_functions(core) | operands[1]->faulty_functions(core)), core);
            this->m_state->m_netlist_model->set_faulty_gate_identifier(wire->uid(), 5, core);
            break;
        case verica::fault::XOR:
            this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), operands[0]->faulty_functions(core) ^ operands[1]->faulty_functions(core), core);
            this->m_state->m_netlist_model->set_faulty_gate_identifier(wire->uid(), 6, core);
            break;
        case verica::fault::XNOR:
            this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), !(operands[0]->faulty_functions(core) ^ operands[1]->faulty_functions(core)), core);
            this->m_state->m_netlist_model->set_faulty_gate_identifier(wire->uid(), 7, core);
            break;
        case verica::fault::NOTA:
            this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), !operands[0]->faulty_functions(core), core);
            this->m_state->m_netlist_model->set_faulty_gate_identifier(wire->uid(), 1, core);
            break;
        case verica::fault::A:
            this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), operands[0]->faulty_functions(core), core);
            this->m_state->m_netlist_model->set_faulty_gate_identifier(wire->uid(), 0, core);
            break;
        default:
            throw std::logic_error("[INJECTOR] Invalid fault type detected during fault injection!");
            break;
    } 
}

void Injector::elaborate_node(const verica::Wire* wire, int core){
    if(wire->faulty_gate_identifier(core) == 10){
        this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), this->m_state->m_managers[core].bddVar(wire->primary_input_identifier()), core);
    } else if(wire->source_pin()->fan_in() != nullptr){
        this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), wire->source_pin()->fan_in()->faulty_functions(core), core );
    } else {
        std::vector<const verica::Pin*> input_pins = wire->source_pin()->parent_module()->input_pins();
        std::vector<BDD> operands;
        for(auto p : input_pins) operands.push_back(p->fan_in()->faulty_functions(core));
        switch (wire->faulty_gate_identifier(core)){
            case 0:
                this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), operands[0], core);
                break;
            case 1:
                this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), !operands[0], core);
                break;
            case 2:
                this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), operands[0] & operands[1], core);
                break;
            case 3:
                this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), !(operands[0] & operands[1]), core);
                break;
            case 4:
                this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), operands[0] | operands[1], core);
                break;   
            case 5:
                this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), !(operands[0] | operands[1]), core);
                break;
            case 6:
                this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), operands[0] ^ operands[1], core);
                break;
            case 7:
                this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), !(operands[0] ^ operands[1]), core);
                break;  
            case 8:
                this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), this->m_state->m_managers[core].bddOne(), core);
                break;  
            case 9:
                this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), this->m_state->m_managers[core].bddZero(), core);
                break;      
            case 11:
                this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), operands[0], core);
                break;  
            case 12:
                this->m_state->m_netlist_model->set_bdd_faulty_function(wire->uid(), !operands[0], core);
                break;                                   
            default:
                throw std::logic_error("[INJECTOR] Gate identifier " + std::to_string(wire->source_pin()->gate_identifier()) + " is not supported!");
        }
    }
}
