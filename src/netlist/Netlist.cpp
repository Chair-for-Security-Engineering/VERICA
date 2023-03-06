/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: 
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
 * Please see LICENSE and README for license and further instructions.
 */

#include "netlist/Netlist.hpp"

#include "util.hpp"

#include <iostream>
#include <algorithm>

/* 
 * =========================================================================================
 * Constructor(s)
 * =========================================================================================
 */
verica::Netlist::Netlist(std::string name) {
    this->m_name = name;
}
/* 
 * =========================================================================================
 * Destructor
 * =========================================================================================
 */

verica::Netlist::~Netlist(){

}

/* 
 * =========================================================================================
 * Member functions: Statistics
 * =========================================================================================
 */
int 
verica::Netlist::num_modules()
{
    int count = 0;
    for (auto const & m : this->m_modules) count += !m.second->m_is_gate;
    return count;
}

int 
verica::Netlist::num_gates()
{
    return std::count_if(this->m_modules.begin(), this->m_modules.end(),[](std::pair<const int, std::unique_ptr<verica::Module>>& m){ return m.second->m_is_gate; });
}

int 
verica::Netlist::num_combinational_gates()
{
    return std::count_if(this->m_modules.begin(), this->m_modules.end(),[](std::pair<const int, std::unique_ptr<verica::Module>>& m){ return (m.second->m_is_gate && !m.second->is_sequential()); });
}

int 
verica::Netlist::num_sequential_gates()
{
    return std::count_if(this->m_modules.begin(), this->m_modules.end(),[](std::pair<const int, std::unique_ptr<verica::Module>>& m){ return (m.second->m_is_gate && m.second->is_sequential()); });
}

int 
verica::Netlist::num_wires()
{
    return this->m_wires.size();
}

int 
verica::Netlist::num_pins()
{
    return this->m_pins.size();
}

/* 
 * =========================================================================================
 * Member functions: Utility
 * =========================================================================================
 */
std::string 
verica::Netlist::wire_vector_to_json_string(std::vector<const verica::Wire*> vec) {
    std::string s;

    s = "{ \"wires\": [ ";
    for (auto w : vec)
    {
        s += "{ ";
        s += "\"uid\": " + std::to_string(w->uid()) + ", ";
        s += "\"name\": \"" + w->name() + "\"";
        s += " }";

        if (w != vec.back()) 
            s += ", ";
    }
    s += " ] }";

    return s;
}

std::string 
verica::Netlist::fault_state_to_json_string(std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>> fault_mappings, CellLibrary* cell_library) {
    std::string s;
    std::string source_gate_type;

    // generate output
    s = "{ \"fault_mappings\": [ ";

    for(unsigned int g=0; g < fault_mappings.first.size(); g++){
        for(auto elem : cell_library->gate_types()){
            for(auto ident : elem.second->m_identifier){
                if(ident == fault_mappings.first[g]->source_pin()->gate_identifier())
                    source_gate_type = elem.first;
            }
        }

        s += "{ ";
        s += "\"from\": \"" + source_gate_type + "\", ";
        s += "\"to\": \"" + verica::fault::fault2string(fault_mappings.second[g]) + "\"";
        s += " }";

        if (g != fault_mappings.first.size()-1) 
            s += ", ";         
    }
    
    s += " ] }";

    return s;
}   


/* 
 * =========================================================================================
 * Member functions: Modules
 * =========================================================================================
 */
verica::Module* verica::Netlist::add_module(std::string name) {
    /* Create new module */
    verica::Module* m = new Module(name);

    /* Create unique ID for module */
    m->m_uid = this->m_next_module_id++;

    /* Track module in netlist */
    this->m_modules.insert(std::make_pair(m->uid(), m));

    return m;
}

verica::Module* verica::Netlist::add_module(std::string name, Module* parent) {
    /* Create new module */
    verica::Module* m = add_module(name);

    /* Update hierarchy */
    m->m_parent = parent;
    parent->m_children.push_back(m);    

    return m;
}

verica::Module* verica::Netlist::add_module(std::string name, Module* parent, CellTemplate gate_template) {
    /* Create module */
    verica::Module* m = add_module(name, parent);

    /* Module is an atomic gate */
    m->m_is_gate = true;

    /* Store cell template in gate object */
    m->m_cell_template = gate_template;

    /* Track sequential gates */
    m->m_is_sequential = gate_template.m_sequential;

    /* Create new input pins */
    for (unsigned int idx = 0; idx < gate_template.m_in_pins.size(); idx++)
    {
        this->add_pin(gate_template.m_in_pins[idx], m, true);
    }

    /* Create new output pins */
    for (unsigned int idx = 0; idx < gate_template.m_out_pins.size(); idx++) 
    {
        verica::Pin *p = this->add_pin(gate_template.m_out_pins[idx], m, false);
        p->m_out_expression  = gate_template.m_out_expr[idx];
        p->m_gate_identifier = gate_template.m_identifier[idx];
    }
    
    /* Copy output expressions */
    for (unsigned int idx = 0; idx < gate_template.m_out_expr.size(); idx++)
        m->m_out_expression.push_back(gate_template.m_out_expr[idx]);
    
    return m;
}

verica::Module* verica::Netlist::replicate_module(std::string name, verica::Module* parent, const verica::Module* origin, bool submodule) {
    verica::Module* replica;

    if (origin->m_is_gate) {
        // Replicate trivial module (gate).
        replica = add_module(name, parent, origin->m_cell_template);
        m_replica_modules.insert(std::pair<int, verica::Module*>(origin->uid(), replica));
        for (unsigned int i = 0; i < origin->input_pins().size(); i++) {
            m_replica_pin_uids.insert(std::pair<int, int>((origin->input_pins())[i]->uid(), (replica->input_pins())[i]->uid()));
        }
        for (unsigned int i = 0; i < origin->output_pins().size(); i++) {
            m_replica_pin_uids.insert(std::pair<int, int>((origin->output_pins())[i]->uid(), (replica->output_pins())[i]->uid()));
        }
    }
    else {
        // Replicate non-trivial module.
        replica = add_module(name, parent);
        m_replica_modules.insert(std::pair<int, verica::Module*>(origin->uid(), replica));
        // Replicate input pins.
        for (auto input_pin : origin->input_pins()) {
            verica::Pin* replica_input_pin = add_pin(input_pin->name(), replica, input_pin->is_input());
            m_replica_pin_uids.insert(std::pair<int, int>(input_pin->uid(), replica_input_pin->uid()));
            // Apply annotations.
            replica_input_pin->m_port_type = input_pin->m_port_type;
            replica_input_pin->m_gate_identifier = input_pin->m_gate_identifier;
            // Apply constant input information.
            replica_input_pin->m_const_input = input_pin->m_const_input;
            replica_input_pin->m_const_value = input_pin->m_const_value;
            // Apply output expression.
            replica_input_pin->m_out_expression = input_pin->m_out_expression;

        }
        // Replicate output pins.
        for (auto output_pin : origin->output_pins()) {
            verica::Pin* replica_output_pin = add_pin(output_pin->name(), replica, output_pin->is_input());
            m_replica_pin_uids.insert(std::pair<int, int>(output_pin->uid(), replica_output_pin->uid()));
            // Apply annotations.
            replica_output_pin->m_port_type = output_pin->m_port_type;
            replica_output_pin->m_gate_identifier = output_pin->m_gate_identifier;
            // Apply constant input information.
            replica_output_pin->m_const_input = output_pin->m_const_input;
            replica_output_pin->m_const_value = output_pin->m_const_value;
            // Apply output expression.
            replica_output_pin->m_out_expression = output_pin->m_out_expression;

        }
        // Replicate child modules.
        for (auto child : origin->children()) {
            replicate_module(child->name(), replica, child, true);
        }
        // Replicate wires and connections.
        if (!submodule) {   // Prevents wires from multiple replications.
            for(auto wire : origin->wires()) {
                verica::Module* parent_module = m_replica_modules.at(wire->parent()->uid());
                verica::Wire* replica_wire = add_wire(wire->name(), parent_module, wire->primary_input_identifier());
                // Apply pin connectivity.
                if (wire->source_pin() != nullptr) {
                    if (m_replica_pin_uids.find(wire->source_pin()->uid()) != m_replica_pin_uids.end()) set_wire_source(replica_wire->uid(), m_replica_pin_uids.at(wire->source_pin()->uid()));
                }
                for (auto target_pin : wire->target_pins()) {     
                    if (m_replica_pin_uids.find(target_pin->uid()) != m_replica_pin_uids.end()) set_wire_target(replica_wire->uid(), m_replica_pin_uids.at(target_pin->uid()));
                }
            }
        }
    }

    if (!submodule) {
        m_replica_pin_uids.clear();
        m_replica_modules.clear();
    }

    return replica;
}

void verica::Netlist::set_topmodule(verica::Module* new_top) {
    this->m_topmodule = new_top;
}

void verica::Netlist::set_module_under_test(verica::Module* new_module) {
    this->m_module_under_test = new_module;
}

void verica::Netlist::ignore_sca_module(int uid, bool ignore) {
    // Ignore module
    m_modules[uid]->m_sca_ignore = ignore;

    // Ignore all wires belonging to module
    for(auto w : m_modules[uid]->wires()) this->ignore_sca_wire(w->uid(), ignore);

    // Ignore output wire of each gate or all submodules
    if (m_modules[uid]->m_is_gate) {
        for(auto p:m_modules[uid]->m_output_pins){
            if (p->m_fan_out) p->m_fan_out->m_sca_ignore = ignore;
        }
    } else {
        for(auto m:m_modules[uid]->m_children) this->ignore_sca_module(m->uid(), ignore);
    }
}

void verica::Netlist::ignore_fia_module(int uid, bool ignore) {
    // Ignore module
    m_modules[uid]->m_fia_ignore = ignore;

    // Ignore all wires belonging to module
    for(auto w : m_modules[uid]->wires()) this->ignore_fia_wire(w->uid(), ignore);

    // Ignore output wire of each gate or all submodules
    if (m_modules[uid]->m_is_gate) {
        for(auto p:m_modules[uid]->m_output_pins){
            if (p->m_fan_out)
                p->m_fan_out->m_fia_ignore = ignore;
        }
    } else {
        for(auto m:m_modules[uid]->m_children) this->ignore_fia_module(m->uid(), ignore);
    }
}

std::vector<const verica::Module*> verica::Netlist::get_gates(uint uid){
    std::vector<const verica::Module*> gates;
    for(auto m : m_modules[uid]->children()){
        if(m->gate()){
            gates.push_back(m);
        } else {
            std::vector<const verica::Module*> temp = get_gates(m->uid());
            gates.insert(gates.end(), temp.begin(), temp.end());
        }
    }

    return gates;
} 

void verica::Netlist::remove_module(int uid) {
    /* Get module */
    verica::Module* m = this->m_modules.at(uid).get();

    if (!m->m_is_gate) {
        /* Remove input pins */
        for (auto input_pin : m->input_pins()) {
            if (this->m_pins.find(input_pin->uid()) != m_pins.end()) this->remove_pin(input_pin->uid());
        }
        
        /* Remove output pins */
        for (auto output_pin : m->output_pins()) {
            if (this->m_pins.find(output_pin->uid()) != m_pins.end()) this->remove_pin(output_pin->uid());
        }

        /* Remove child modules */
        for (auto child : m->children()) remove_module(child->uid());

        /* Remove wires */
        for(auto wire : m->wires()) {
            if (this->m_wires.find(wire->uid()) != m_wires.end()) this->remove_wire(wire->uid());
        }
    }

    /* Remove module pointer from netlist */
    this->m_modules.erase(uid);
}


/* 
 * =========================================================================================
 * Member functions: Wires
 * =========================================================================================
 */
verica::Wire* verica::Netlist::add_wire(std::string name) {
    /* Create new wire */
    verica::Wire* w = new Wire(name);

    /* Create unique ID for wire */
    w->m_uid = this->m_next_wire_id++;

    /* Track wire in netlist */
    this->m_wires.insert(std::make_pair(w->uid(), w));

    return w;
}

verica::Wire* verica::Netlist::add_wire(std::string name, Module *parent) {    
    /* Create new wire */
    verica::Wire* w = add_wire(name);

    /* Update hierarchy */
    w->m_parent = parent;
    // parent->m_wires.push_back(w);   
    add_wire_to_parents(parent, w); 
    return w;
}

verica::Wire* verica::Netlist::add_wire(std::string name, Module *parent, int primary_input_identifier) {    
    /* Create new wire */
    verica::Wire* w = add_wire(name, parent);

    /* Set primary input identifier */ 
    w->m_primary_input_identifier = primary_input_identifier;

    return w;
}

void verica::Netlist::rename_wire(int uid, std::string new_name){
    m_wires.at(uid)->m_name = new_name;
}

void verica::Netlist::sort_wires(){
    for (auto & m : this->m_modules){
        if (!m.second->gate()){
            m.second->sort_wires();
        }
    }
}

void verica::Netlist::ignore_sca_wire(int uid, bool ignore){
    m_wires.at(uid)->m_sca_ignore = ignore;
}

void verica::Netlist::ignore_fia_wire(int uid, bool ignore){
    m_wires.at(uid)->m_fia_ignore = ignore;
}

void verica::Netlist::remove_wire(int uid){
    /* Get wire */
    verica::Wire* w = this->m_wires.at(uid).get();
    
    /* List of modules that point to the wire */ 
    std::vector<verica::Module*> modules;
    modules.push_back(m_topmodule);

    /* Remove wires from current module and add children if target module is not reached */
    while(!modules.empty()){
        verica::Module* current_module = modules[0];
        modules.erase(modules.begin());

        current_module->remove_wire(uid);
        if(current_module != w->parent()){
            for(auto const & m : current_module->children()) modules.push_back(m_modules.at(m->uid()).get());
        }
    }

    /* Remove wire pointer from pin */
    if(w->m_source_pin){
        w->m_source_pin->m_fan_out = nullptr;
    }
    for(auto pin : w->target_pins()){
        // pin->m_fan_in = nullptr;  
        m_pins[pin->uid()]->m_fan_in = nullptr;
    }

    /* Remove wire pointer from netlist */
    this->m_wires.erase(uid);
}

void verica::Netlist::resize_bdd_vectors(int uid, int size){
    m_wires[uid]->m_golden_functions.resize(size);
    m_wires[uid]->m_faulty_functions.resize(size);
    m_wires[uid]->m_variables.resize(size);
    m_wires[uid]->m_registers.resize(size);
    m_wires[uid]->m_secrets.resize(size);
    m_wires[uid]->m_faulty_gate_identifier.resize(size);
}

void verica::Netlist::set_bdd_golden_function(int uid, BDD function, int idx){
    m_wires[uid]->m_golden_functions[idx] = function;
}

void verica::Netlist::set_bdd_faulty_function(int uid, BDD function, int idx){
    m_wires[uid]->m_faulty_functions[idx] = function;
}

void verica::Netlist::set_bdd_secret(int uid, BDD function, int idx){
    m_wires[uid]->m_secrets[idx] = function;
}

void verica::Netlist::insert_variable(int uid, const Wire* wire, int idx){
    // m_wires[uid]->m_variables[idx] = function;
    m_wires[uid]->m_variables[idx].insert(wire);
}

void verica::Netlist::insert_variable(int uid, std::set<const Wire*> wires, int idx){
    // m_wires[uid]->m_variables[idx] = function;
    m_wires[uid]->m_variables[idx].insert(wires.begin(), wires.end());
}

void verica::Netlist::insert_register(int uid, const Wire* wire, int idx){
    // m_wires[uid]->m_registers[idx] = function;
    m_wires[uid]->m_registers[idx].insert(wire);
}

void verica::Netlist::insert_register(int uid, std::set<const Wire*> wires, int idx){
    // m_wires[uid]->m_registers[idx] = function;
    m_wires[uid]->m_registers[idx].insert(wires.begin(), wires.end());
}

void verica::Netlist::set_depth_index(int uid, int index){
    m_wires[uid]->m_depth_index = index;
}

void verica::Netlist::set_stage_index(int uid, int index){
    m_wires[uid]->m_stage_index = index;
}

void verica::Netlist::add_share(verica::Module* module, int index, int share){
    module->m_shares[index].insert(share);
}

void verica::Netlist::push_back_to_propagation_path(int uid, const Wire* new_item){
    m_wires[uid]->m_propagation_path.push_back(new_item);
}

void verica::Netlist::set_faulty_gate_identifier(int uid, int new_identifier, int core){
    m_wires[uid]->m_faulty_gate_identifier[core] = new_identifier;
}

void verica::Netlist::set_primary_input_identifier(int uid, int identifier){
    m_wires[uid]->m_primary_input_identifier = identifier;
}


/* 
 * =========================================================================================
 * Member functions: Pins
 * =========================================================================================
 */
verica::Pin* verica::Netlist::add_pin(std::string name) {
    /* Create new pin */
    Pin *p = new Pin(name);
    
    /* Create unique ID for pin */
    p->m_uid = this->m_next_pin_id++;

    /* Track module in netlist */
    this->m_pins.insert(std::make_pair(p->uid(), p));

    return p;
}

verica::Pin* verica::Netlist::add_pin(std::string name, Module *parent, bool is_input) {
    /* Create new pin */
    Pin *p = this->add_pin(name);
    
    /* Store pin direction */
    p->m_is_input = is_input;

    /* Update hierarchy */
    p->m_parent_module = parent;
    if (is_input) {
        parent->m_input_pins.push_back(p);
    } else {
        parent->m_output_pins.push_back(p);
    }

    return p;
}

verica::Pin* verica::Netlist::add_pin(std::string name, Module *parent, bool is_input, int gate_identifier) {
    /* Create new pin */
    Pin *p = add_pin(name, parent, is_input);

    /* set gate_identifier*/
    p->m_gate_identifier = gate_identifier;

    return p;
}

void verica::Netlist::set_pin_share_domain(int uid, int share_domain) {
    m_pins[uid]->m_share_domain = share_domain;
}

void verica::Netlist::set_pin_share_index(int uid, int share_index) {
    m_pins[uid]->m_share_index = share_index;
}

void verica::Netlist::set_pin_fault_domain(int uid, int fault_domain) {
    m_pins[uid]->m_fault_domain = fault_domain;
}

void verica::Netlist::set_pin_type(Pin *p, Flag type) {
    p->m_port_type = type;
}

void verica::Netlist::set_pin_type(int uid, Flag type) {
    m_pins.at(uid)->m_port_type = type;
}

void verica::Netlist::set_pin_gate_identifier(int uid, int gate_identifier){
    m_pins[uid]->m_gate_identifier = gate_identifier;
}

void verica::Netlist::remove_pin(int uid){

    verica::Pin* p = this->m_pins.at(uid).get();

    /* Remove pin pointer from wire */
    if(p->fan_out()){
        p->m_fan_out->m_source_pin = nullptr;
    }
    if(p->fan_in()){
        p->m_fan_in->remove_target_pin(p->uid());
    }
    
    /* Remove pin from current parent_module */
    p->m_parent_module->remove_pin(uid);
    this->m_pins.erase(uid);
}


/* 
 * =========================================================================================
 * Member functions: Connectivity
 * =========================================================================================
 */
void verica::Netlist::set_wire_source(int uid, int pin_uid) {
    m_wires[uid]->m_source_pin = m_pins[pin_uid].get();
    m_pins[pin_uid]->m_fan_out = m_wires[uid].get();
}

void verica::Netlist::set_wire_target(int uid, int pin_uid) {
    if(std::find(m_wires[uid]->m_target_pins.begin(), m_wires[uid]->m_target_pins.end(), m_pins[pin_uid].get()) == m_wires[uid]->m_target_pins.end()){
        m_wires[uid]->m_target_pins.push_back(m_pins[pin_uid].get());
        m_pins[pin_uid]->m_fan_in = m_wires[uid].get();
    }
}

void verica::Netlist::set_constant_input(int pin_uid, int const_value) {
    m_pins[pin_uid]->m_const_input = true;
    m_pins[pin_uid]->m_const_value = const_value;
}


/* 
 * =========================================================================================
 * Member functions: Hierarchy
 * =========================================================================================
 */
void verica::Netlist::set_parent_module(Module *child, Module *parent){
    // parent->m_children.push_back(child);
    // child->m_parent = parent;

    // for(auto w : child->m_wires){
    //     add_wire_to_parents(parent, w);
    // }


    parent->m_children.push_back(child);
    size_t index = 0;

    if(child->m_parent != nullptr){
        for (std::vector<const verica::Module*>::iterator it = child->m_parent->m_children.begin(); it != child->m_parent->m_children.end(); ) {
            if (*it == child) {
                it = child->m_parent->m_children.erase(it);
            } else {
                ++it;
            }   
        }
    }
        

    for(auto w : child->m_wires){
        if(child->m_parent != nullptr){
            for (std::vector<const verica::Wire*>::iterator it = child->m_parent->m_wires.begin(); it != child->m_parent->m_wires.end(); ) {
                if (*it == w) {
                    it = child->m_parent->m_wires.erase(it);
                } else {
                    ++it;
                }
            }
        }
        add_wire_to_parents(parent, w);
    }
    
    child->m_parent = parent;
}

void verica::Netlist::add_wire_to_parents(Module *parent, const Wire *wire){
    parent->m_wires.push_back(wire);
    if(parent->m_parent != nullptr) add_wire_to_parents(parent->m_parent, wire);
}

void verica::Netlist::remove_type_from_netlist(Flag type){
    /* Collect pins with Flag type */
    std::set<const verica::Pin*> pins_to_remove; 
    for (auto const& pin_id_pair : m_pins){
        const verica::Pin* p = pin_id_pair.second.get();
        if (p->port_type() == type){
            pins_to_remove.insert(p);
        }
    }
    
    while (!pins_to_remove.empty()){
        const verica::Pin* current_pin = *pins_to_remove.begin();
        pins_to_remove.erase(pins_to_remove.begin());
        if (current_pin->fan_out()){ 
            for (auto p : current_pin->fan_out()->target_pins()){
                pins_to_remove.insert(p);
            }
            remove_wire(current_pin->fan_out()->uid());             
        }
        remove_pin(current_pin->uid());
    }
}

int
verica::Netlist::remove_unconnected_pins(){
    int cnt_pins = 0;
    std::vector<verica::Pin*> pins_to_remove;
    for (auto const & p : m_pins){
        if(p.second->fan_in() == nullptr && p.second->fan_out() == nullptr && !p.second->is_const()) {
                pins_to_remove.push_back(p.second.get());
        }
    }
    for (auto p : pins_to_remove){
        remove_pin(p->uid());
        cnt_pins++;
    }

    return cnt_pins;
}

int
verica::Netlist::remove_unconnected_wires(){
    std::vector<verica::Wire*> wires_to_remove;
    for(auto const & w : this->m_wires){
        if(w.second->source_pin() == nullptr && w.second->target_pins().empty()){
            wires_to_remove.push_back(w.second.get());
        }
    }
    for(auto w : wires_to_remove){
        remove_wire(w->uid());
    }

    return wires_to_remove.size();
}


/* 
 * =========================================================================================
 * Member functions: Debugging
 * =========================================================================================
 */
void verica::Netlist::print_hierarchy(const verica::Module* top, int level)
{   
    if (level > 0) {
        for (int idx = 0; idx < 2 * (level - 1); idx++) std::cout << " ";
        std::cout << "+-";
    }
    std::cout << top->m_name << std::endl;

    if (top->m_children.size() > 0) for(auto elem : top->m_children) print_hierarchy(elem, level+1);
}

void verica::Netlist::info() {
    std::cout << "In the parsed Netlist object" << std::endl;
    std::cout << "There are " << this->m_modules.size() << " modules in the Netlist" << std::endl;
    for (auto const & m : m_modules){
        std::cout << "Module name: " << m.second.get()->m_name << std::endl;
    }
    int number_of_target_pins = 0;
    for (auto const & module_pair : m_modules){
        verica::Module* m = module_pair.second.get();
        //verica::Module* test_top = m_modules.at(0);
        std::cout << "Module : " << m->m_name << std::endl;
        std::cout << "\tUID: " << m->m_uid << std::endl;
        std::cout << "\tChildren: " << m->m_children.size() << std::endl;
        std::cout << "\tWires: " << m->m_wires.size() << std::endl;
        std::cout << "\tInput-Pins: " << m->m_input_pins.size() << std::endl;
        std::cout << "\tOutput-Pins: " << m->m_output_pins.size() << std::endl;
        for (auto p : m->m_input_pins){
            std::cout << "\t\tPin Name: " << p->m_name;
            if (p->m_port_type == None){
                std::cout << " - Flag: None" << std::endl;
            } else if (p->m_port_type == Control){
                std::cout << " - Flag: Control" << std::endl;
            } else if (p->m_port_type == Clock){
                std::cout << " - Flag: Clock" << std::endl;
            } else if (p->m_port_type == Refresh){
                std::cout << " - Flag: Refresh" << std::endl;
            }
            if (p->m_share_domain != -1){
                std::cout << "\t\t\tIndex: " << p->m_share_index << " - Share: " << p->m_share_domain << std::endl;
            }
            std::cout << "\t\t\tConst input: " << std::boolalpha << p->is_const() << ". Value: " << p->const_input() << std::endl; 
        }
        for (auto p : m->m_output_pins){
            std::cout << "\t\tPin Name: " << p->m_name;
            if (p->m_port_type == None){
                std::cout << " - Flag: None" << std::endl;
            } else if (p->m_port_type == Control){
                std::cout << " - Flag: Control" << std::endl;
            } else if (p->m_port_type == Clock){
                std::cout << " - Flag: Clock" << std::endl;
            } else if (p->m_port_type == Refresh){
                std::cout << " - Flag: Refresh" << std::endl;
            }
            if (p->m_share_domain != -1){
                std::cout << "\t\t\tIndex: " << p->m_share_index << " - Share: " << p->m_share_domain << std::endl;
            }
        }
        if (m->m_is_gate){
            std::cout << "\tOutput Expression of Gate: " << std::endl;
            for (std::string s : m->m_out_expression){
                std::cout << "\t\t" << s << std::endl; 
            }
        }else
            std::cout << "\tNo Gate" << std::endl;
        for (const verica::Wire* w : m->m_wires){
            std::cout << "\t\tWire \"" << w->m_name << "\" goes" << std::endl;
            if (w->m_source_pin != 0){
                std::cout << "\t\t\tfrom \"" << w->m_source_pin->m_name << "\" of \"" << w->m_source_pin->m_parent_module->m_name << "\"" << std::endl;
            }
            if (w->m_target_pins.size() != 0){
                number_of_target_pins += w->m_target_pins.size();
                for (const verica::Pin* p : w->m_target_pins){
                    std::cout << "\t\t\tto \"" << p->m_name << "\" of \"" << p->m_parent_module->m_name << "\"" << std::endl;
                }
            }
            // std::cout << "\t\t\tVariables: " << w->variables(0) << std::endl;
            // std::cout << "\t\t\tRegisters: " << w->registers(0) << std::endl;
        }
    }

    for (auto const & w_pair : this->m_wires){
        std::cout << "Wire " << w_pair.second->name() << " (UID: " << w_pair.second->uid() << ")"<< " of module " << w_pair.second->parent()->name() << "\ngoes from " << w_pair.second->source_pin()->name() << " to " << std::endl;
        for (auto p_pair : w_pair.second->target_pins())
            std::cout << "\t " << p_pair->name() << " of gate " << p_pair->parent_module()->name() <<  std::endl;
    }

    for (auto const & elem_pair : this->m_modules){
        verica::Module* elem = elem_pair.second.get();
        if (elem->gate()){
            std::cout << "Gate name: " << elem->name() << " ";
            for(auto ident : elem->cell_template().m_identifier) std::cout << ident << " ";
            std::cout << std::endl;
            /*
            for (auto p : elem->input_pins()){
                std::cout << "\tConnected from: " << p->fan_in()->source_pin()->parent_module()->name() << std::endl;
            }
            */
        }
        /*
        else {
            std::cout << "Module name: " << elem->name() << std::endl;
            for (auto p : elem->output_pins()){
                std::cout << "\tConnected from: " << p->fan_in()->source_pin()->parent_module()->name() << std::endl;
            }
        }
        */
    }
    std::cout << "Module hierarchy:" << std::endl; 
    for (auto const& elem : this->m_modules) if (elem.second->m_parent == nullptr) print_hierarchy(elem.second.get(), 0);

     std::cout << "Targets: " << number_of_target_pins << std::endl;
}





