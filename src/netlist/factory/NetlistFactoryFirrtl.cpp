/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Niklas Entschladen (niklas.entschladen@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2022/484
 *           https://eprint.iacr.org/2022/1131
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2022, Pascal Sasdrich
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

#include "netlist/factory/NetlistFactoryFirrtl.hpp"

// Add the circuit and declare it as topmodule of the netlist (defined by the circuit keyword).
void
NetlistFactoryFirrtl::set_circuit(std::string name)
{   
    circuit_name = name;
}

// Add a module to the netlist (defined by the module keyword).
verica::Module* 
NetlistFactoryFirrtl::add_module(std::string name)
{
    verica::Module* m = m_state->m_netlist_model->add_module(name);

    // Declare module with circuit name as topmodule.
    if (name == circuit_name) {
        m_state->m_netlist_model->set_topmodule(m);
        m_state->m_netlist_model->set_module_under_test(m);
    }

    m_module_map.insert(std::pair<std::string, verica::Module*>(name, m));
    return m;
}

// Add ports to a module (input/ output).
void
NetlistFactoryFirrtl::add_ports(verica::Module *module, std::string dir, std::string identifier, boost::variant<INTEGER_TYPE, FIXED_TYPE, CLOCK_TYPE> type) {
    bool is_input;
    bool vector_set = false;
    if (dir == "input") is_input = true;
    else if (dir == "output") is_input = false;
    else throw std::logic_error("[PARSER] Error: Port direction for port " + identifier + " must either be 'input' or 'output'!");

    verica::Flag port_flag = type.which() == 2 ? verica::Clock : verica::None;

    int vectorLength = 1;
    int width = 1;
    std::string pin_identifier = "";
    switch (type.which()) {
        case 0:
        {
            INTEGER_TYPE typeInstance = boost::get<INTEGER_TYPE>(type);
            if (typeInstance.get<0>() != boost::none) {
                if (*typeInstance.get<0>() <= 0) throw std::logic_error("[PARSER] Error: Width for port " + identifier + " must be positive!");
                else width = *typeInstance.get<0>();
            }
            if (typeInstance.get<1>() != boost::none) {
                if (*typeInstance.get<1>() <= 0) throw std::logic_error("[PARSER] Error: Vector length for port " + identifier + " must be positive!");
                else vectorLength = *typeInstance.get<1>();
                vector_set = true;
            }

            std::vector<verica::Pin*> pin_vector;
            std::vector<verica::Wire*> wire_vector;
            for (int i = 0; i < vectorLength; i++) {
                std::string pin_identifier;
                if (vector_set) pin_identifier = identifier + "[" + std::to_string(i) + "]";
                else pin_identifier = identifier;

                for (int j = 0; j < width; j++) {
                    verica::Pin* p;
                    if (module == m_state->m_netlist_model->topmodule()) p = m_state->m_netlist_model->add_pin(pin_identifier + "[" + std::to_string(j) + "]", module, is_input);
                    else p = m_state->m_netlist_model->add_pin(pin_identifier, module, is_input);
                    m_state->m_netlist_model->set_pin_type(p, port_flag);
                    pin_vector.push_back(p);
                    
                    if (!is_input){
                        // Output pins get assigned a placeholder input wire which can then be used to connect the output pin to an input pin of a gate.
                        verica::Wire* w = m_state->m_netlist_model->add_wire(p->name(), module);
                        wire_vector.push_back(w);
                        m_state->m_netlist_model->set_wire_source(w->uid(), p->uid());
                    }
                }

                std::pair<verica::Module*, std::string> map_key = std::make_pair(module, pin_identifier);
                m_port_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<verica::Pin*>> (map_key, pin_vector));
                if (!wire_vector.empty()) m_wire_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<verica::Wire*>> (map_key, wire_vector));
                pin_vector.clear();
                wire_vector.clear();
            }
            break;
        }
        case 1:
        {
            FIXED_TYPE typeInstance = boost::get<FIXED_TYPE>(type);
            if (typeInstance.get<0>() != boost::none) {
                if (*typeInstance.get<0>() <= 0) throw std::logic_error("[PARSER] Error: Width for port " + identifier + " must be positive!");
                else vectorLength = *typeInstance.get<0>();
            }
            if (typeInstance.get<2>() != boost::none) {
                if (*typeInstance.get<2>() <= 0) throw std::logic_error("[PARSER] Error: Vector length for port " + identifier + " must be positive!");
                else vectorLength = *typeInstance.get<2>();
                vector_set = true;
            }

            std::vector<verica::Pin*> pin_vector;
            std::vector<verica::Wire*> wire_vector;
            for (int i = 0; i < vectorLength; i++) {
                std::string pin_identifier;
                if (vector_set) pin_identifier = identifier + "[" + std::to_string(i) + "]";
                else pin_identifier = identifier;

                for (int j = 0; j < width; j++) {
                    verica::Pin* p;
                    if (module == m_state->m_netlist_model->topmodule()) p = m_state->m_netlist_model->add_pin(pin_identifier + "[" + std::to_string(j) + "]", module, is_input);
                    else p = m_state->m_netlist_model->add_pin(pin_identifier, module, is_input);
                    m_state->m_netlist_model->set_pin_type(p, port_flag);
                    pin_vector.push_back(p);
                    
                    if (!is_input){
                        // Output pins get assigned a placeholder input wire which can then be used to connect the output pin to an input pin of a gate.
                        verica::Wire* w = m_state->m_netlist_model->add_wire(p->name(), module);
                        wire_vector.push_back(w);
                        m_state->m_netlist_model->set_wire_source(w->uid(), p->uid());
                    }
                }

                std::pair<verica::Module*, std::string> map_key = std::make_pair(module, pin_identifier);
                m_port_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<verica::Pin*>> (map_key, pin_vector));
                if (!wire_vector.empty()) m_wire_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<verica::Wire*>> (map_key, wire_vector));
                pin_vector.clear();
                wire_vector.clear();
            }
            break;
        }
        case 2:
        {
            CLOCK_TYPE typeInstance = boost::get<CLOCK_TYPE>(type);
            if (typeInstance.get<0>() != boost::none) {
                if (*typeInstance.get<0>() <= 0) throw std::logic_error("[PARSER] Error: Vector length for port " + identifier + " must be positive!");
                else vectorLength = *typeInstance.get<0>();
                vector_set = true;
            }

            std::vector<verica::Pin*> pin_vector;
            std::vector<verica::Wire*> wire_vector; 
            for (int i = 0; i < vectorLength; i++) {
                std::string pin_identifier;
                if (vector_set) pin_identifier = identifier + "[" + std::to_string(i) + "]";
                else pin_identifier = identifier;

                verica::Pin* p = m_state->m_netlist_model->add_pin(pin_identifier, module, is_input);
                m_state->m_netlist_model->set_pin_type(p, port_flag);
                pin_vector.push_back(p);
                
                if (!is_input){
                    // Output pins get assigned a placeholder input wire which can then be used to connect the output pin to an input pin of a gate.
                    verica::Wire* w = m_state->m_netlist_model->add_wire(p->name(), module);
                    wire_vector.push_back(w);
                    m_state->m_netlist_model->set_wire_source(w->uid(), p->uid());
                }

                std::pair<verica::Module*, std::string> map_key = std::make_pair(module, pin_identifier);
                m_port_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<verica::Pin*>> (map_key, pin_vector));
                if (!wire_vector.empty()) m_wire_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<verica::Wire*>> (map_key, wire_vector));
                pin_vector.clear();
                wire_vector.clear();
            }
            break;
        }
        default:
            break;
    }
}

// Add wires to a module (defined by the wire keyword).
void
NetlistFactoryFirrtl::add_wires(verica::Module *module, std::string identifier, boost::variant<INTEGER_TYPE, FIXED_TYPE, CLOCK_TYPE> type) {
    bool vector_set = false;
    int vectorLength = 1;
    int width = 1;
    switch (type.which()) {
        case 0:
        {
            INTEGER_TYPE typeInstance = boost::get<INTEGER_TYPE>(type);
            if (typeInstance.get<0>() != boost::none) {
                if (*typeInstance.get<0>() <= 0) throw std::logic_error("[PARSER] Error: Width for port " + identifier + " must be positive!");
                else width = *typeInstance.get<0>();
            }
            if (typeInstance.get<1>() != boost::none) {
                if (*typeInstance.get<1>() <= 0) throw std::logic_error("[PARSER] Error: Vector length for wire " + identifier + " must be positive!");
                else vectorLength = *typeInstance.get<1>();
                vector_set = true;
            }

            std::vector<verica::Wire*> wire_vector;
            for (int i = 0; i < vectorLength; i++) {
                std::string wire_identifier;
                if (vector_set) wire_identifier = identifier + "[" + std::to_string(i) + "]";
                else wire_identifier = identifier;

                for (int j = 0; j < width; j++) {
                    bool found = false;
                    for (auto s: module->wires()){
                        if (s->name() == wire_identifier){
                            found = true;
                            break;
                        }
                    }
                    if (!found){
                        verica::Wire* w = m_state->m_netlist_model->add_wire(wire_identifier + "[" + std::to_string(j) + "]", module);
                        wire_vector.push_back(w);
                    }
                }

                std::pair<verica::Module*, std::string> map_key = std::make_pair(module, wire_identifier);
                m_wire_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<verica::Wire*>>(map_key, wire_vector));
                wire_vector.clear();
            }
            break;
        }
        case 1:
        {
            FIXED_TYPE typeInstance = boost::get<FIXED_TYPE>(type);
            if (typeInstance.get<0>() != boost::none) {
                if (*typeInstance.get<0>() <= 0) throw std::logic_error("[PARSER] Error: Width for port " + identifier + " must be positive!");
                else width = *typeInstance.get<0>();
            }
            if (typeInstance.get<2>() != boost::none) {
                if (*typeInstance.get<2>() <= 0) throw std::logic_error("[PARSER] Error: Vector length for wire " + identifier + " must be positive!");
                else vectorLength = *typeInstance.get<2>();
                vector_set = true;
            }

            std::vector<verica::Wire*> wire_vector;
            for (int i = 0; i < vectorLength; i++) {
                std::string wire_identifier;
                if (vector_set) wire_identifier = identifier + "[" + std::to_string(i) + "]";
                else wire_identifier = identifier;

                for (int j = 0; j < width; j++) {
                    bool found = false;
                    for (auto s: module->wires()){
                        if (s->name() == wire_identifier){
                            found = true;
                            break;
                        }
                    }
                    if (!found){
                        verica::Wire* w = m_state->m_netlist_model->add_wire(wire_identifier + "[" + std::to_string(j) + "]", module);
                        wire_vector.push_back(w);
                    }
                }

                std::pair<verica::Module*, std::string> map_key = std::make_pair(module, wire_identifier);
                m_wire_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<verica::Wire*>>(map_key, wire_vector));
                wire_vector.clear();
            }
            break;
        }
        case 2:
        {
            CLOCK_TYPE typeInstance = boost::get<CLOCK_TYPE>(type);
            if (typeInstance.get<0>() != boost::none) {
                if (*typeInstance.get<0>() <= 0) throw std::logic_error("[PARSER] Error: Vector length for wire " + identifier + " must be positive!");
                else vectorLength = *typeInstance.get<0>();
                vector_set = true;
            }

            std::vector<verica::Wire*> wire_vector;
            for (int i = 0; i < vectorLength; i++) {
                std::string wire_identifier;
                if (vector_set) wire_identifier = identifier + "[" + std::to_string(i) + "]";
                else wire_identifier = identifier;

                bool found = false;
                for (auto s: module->wires()){
                    if (s->name() == wire_identifier){
                        found = true;
                        break;
                    }
                }
                if (!found){
                    verica::Wire* w = m_state->m_netlist_model->add_wire(wire_identifier, module);
                    wire_vector.push_back(w);
                }

                std::pair<verica::Module*, std::string> map_key = std::make_pair(module, wire_identifier);
                m_wire_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<verica::Wire*>>(map_key, wire_vector));
                wire_vector.clear();
            }
            break;
        }
        default:
            break;
    }
}

void
NetlistFactoryFirrtl::add_register(verica::Module *module, std::string identifier, boost::variant<INTEGER_TYPE, FIXED_TYPE, CLOCK_TYPE> type) {
    // Get register cell template.
    CellTemplate reg_template = CellTemplate();
    for (auto cell : m_state->m_cell_library->gate_types()) {
        if (cell.first == "reg") {
            reg_template = *cell.second;
        }
    }
    if (reg_template == CellTemplate()) throw std::logic_error("[PARSER] Error: Cannot find register (reg) cell template!");

    verica::Module* reg_module = m_state->m_netlist_model->add_module(identifier, module);
    std::pair<verica::Module*, std::string> map_key = std::make_pair(module, identifier);
    m_reg_map.insert(std::pair<std::pair<verica::Module*, std::string>, verica::Module*>(map_key, reg_module));

    // Get register width.
    int reg_width = 1;
    switch (type.which()) {
        case 0:
        {
            INTEGER_TYPE typeInstance = boost::get<INTEGER_TYPE>(type);
            if (typeInstance.get<0>() != boost::none) 
            {
                if (*typeInstance.get<0>() <= 0) throw std::logic_error("[PARSER] Error: Width for register " + identifier + " must be positive!");
                else reg_width = *typeInstance.get<0>();
            }
            break;
        }
        case 1:
        {
            FIXED_TYPE typeInstance = boost::get<FIXED_TYPE>(type);
            if (typeInstance.get<0>() != boost::none) {
                if (*typeInstance.get<0>() <= 0) throw std::logic_error("[PARSER] Error: Width for register " + identifier + " must be positive!");
                else reg_width = *typeInstance.get<0>();
            }
            break;
        }
        case 2:
        {
            break;
        }
        default:
        {
            break;
        }
    }

    for (int i = 0; i < reg_width; i++) {
        // Add registers to model.
        m_state->m_netlist_model->add_module(identifier + "_" + std::to_string(i), reg_module, reg_template);
    }
}

void 
NetlistFactoryFirrtl::add_instance(verica::Module *module, std::string instance_identifier, std::string identifier) {
    // Check if module was declared before.
    if (m_module_map.find(identifier) == m_module_map.end()) throw std::logic_error("[PARSER] Error: Cannot instantiate from unknown module '" + identifier + "'!");
    
    // Add instance of the module to the netlist.
    const verica::Module* orig_module = m_module_map[identifier];

    verica::Module* instance = m_state->m_netlist_model->replicate_module(instance_identifier, module, orig_module, false);

    std::string pin_identifier;
    std::pair<verica::Module*, std::string> map_key;

    // Register new input pins.
    for (auto input_pin : instance->input_pins()) {
        pin_identifier = instance_identifier + "." + input_pin->name();
        map_key = std::make_pair(module, pin_identifier);
        std::vector<const verica::Pin*> pin_vector;
        if (m_inst_pin_vector_map.find(map_key) == m_inst_pin_vector_map.end()) {
            pin_vector = {input_pin};
        }
        else {
            pin_vector = m_inst_pin_vector_map.at(map_key);
            pin_vector.push_back(input_pin);
            m_inst_pin_vector_map.erase(map_key);
        }
        m_inst_pin_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<const verica::Pin*>>(map_key, pin_vector));
    }
    // Register new output pins.
    for (auto output_pin : instance->output_pins()) {
        pin_identifier = instance_identifier + "." + output_pin->name();
        map_key = std::make_pair(module, pin_identifier);
        std::vector<const verica::Pin*> pin_vector;
        if (m_inst_pin_vector_map.find(map_key) == m_inst_pin_vector_map.end()) {
            pin_vector = {output_pin};
        }
        else {
            pin_vector = m_inst_pin_vector_map.at(map_key);
            pin_vector.push_back(output_pin);
            m_inst_pin_vector_map.erase(map_key);
        }
        m_inst_pin_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<const verica::Pin*>>(map_key, pin_vector));
    }

    map_key = std::make_pair(module, instance_identifier);
    m_inst_map.insert(std::pair<std::pair<verica::Module*, std::string>, verica::Module*>(map_key, instance));
}

void 
NetlistFactoryFirrtl::add_node(verica::Module* module, std::string identifier, EXP_TYPE exp) {
    m_node_map.insert(std::pair<std::pair<verica::Module*, std::string>, EXP_TYPE>(std::make_pair(module, identifier), exp));
}

void 
NetlistFactoryFirrtl::add_connection(verica::Module *module, EXP_TYPE exp_left, EXP_TYPE exp_right) {
    boost::variant<const std::vector<const verica::Pin*>, const std::vector<const verica::Wire*>> left_side = get_pins_or_wires_from_expression(module, exp_left, true);
    boost::variant<const std::vector<const verica::Pin*>, const std::vector<const verica::Wire*>> right_side = get_pins_or_wires_from_expression(module, exp_right, false);

    if (left_side.which() == 0) {
        const std::vector<const verica::Pin*> left_pins = boost::get<const std::vector<const verica::Pin*>>(left_side);
        if (left_pins.size() == 0) throw std::logic_error("[PARSER] Error: Could not assign a connection due to missing pins.");
        else {
            if (exp_right.which() == 0) {   // Handling constant input.
                std::vector<int> const_values = boost::get<std::vector<int>>(exp_right);
                if (const_values.size() > left_pins.size()) throw std::logic_error("[PARSER] Error: Could not assign a connection due to unmatching bit widths.");
                for (unsigned int i = 0; i < const_values.size(); i++) {
                    m_state->m_netlist_model->set_constant_input(left_pins[i]->uid(), const_values[i]);
                }
            }
            else {
                if (right_side.which() == 0) {  // Left side pins, right side pins.
                    const std::vector<const verica::Pin*> right_pins = boost::get<const std::vector<const verica::Pin*>>(right_side);
                    if (right_pins.size() > left_pins.size()) throw std::logic_error("[PARSER] Error: Could not assign a connection due to unmatching bit widths.");
                    for (unsigned int i = 0; i < right_pins.size(); i++) {
                        const verica::Wire* connection_wire;
                        if (right_pins[i]->fan_out()) {
                            connection_wire = right_pins[i]->fan_out();
                        }
                        else {
                            connection_wire = m_state->m_netlist_model->add_wire(right_pins[i]->name(), module);
                            m_state->m_netlist_model->set_wire_source(connection_wire->uid(), right_pins[i]->uid());
                        }
                        m_state->m_netlist_model->set_wire_target(connection_wire->uid(), left_pins[i]->uid());
                    }
                }
                else {                          // Left side pins, right side wires.
                    const std::vector<const verica::Wire*> right_wires = boost::get<const std::vector<const verica::Wire*>>(right_side);
                    if (right_wires.size() > left_pins.size()) throw std::logic_error("[PARSER] Error: Could not assign a connection due to unmatching bit widths.");
                    for (unsigned int i = 0; i < right_wires.size(); i++) {
                        m_state->m_netlist_model->set_wire_target(right_wires[i]->uid(), left_pins[i]->uid());
                    }
                }
            }
        }
    }
    else {
        const std::vector<const verica::Wire*> left_wires = boost::get<const std::vector<const verica::Wire*>>(left_side);
        if (left_wires.size() == 0) throw std::logic_error("[PARSER] Error: Could not assign a connection due to missing wires.");
        else {
            if (right_side.which() == 0) {      // Left side wires, right side pins.
                const std::vector<const verica::Pin*> right_pins = boost::get<const std::vector<const verica::Pin*>>(right_side);
                if (right_pins.size() > left_wires.size()) throw std::logic_error("[PARSER] Error: Could not assign a connection due to unmatching bit widths.");
                for (unsigned int i = 0; i < right_pins.size(); i++) {
                    m_state->m_netlist_model->set_wire_source(left_wires[i]->uid(), right_pins[i]->uid());
                }
            }
            else {                              // Left side wires, right side wires.
                const std::vector<const verica::Wire*> right_wires = boost::get<const std::vector<const verica::Wire*>>(right_side);
                if (right_wires.size() > left_wires.size()) throw std::logic_error("[PARSER] Error: Could not assign a connection due to unmatching bit widths.");
                for (unsigned int i = 0; i < right_wires.size(); i++) {
                    const verica::Pin* wire_source = right_wires[i]->source_pin();    // Connect left wire to source pin of right wire.
                    m_state->m_netlist_model->set_wire_source(left_wires[i]->uid(), wire_source->uid());
                }
            }
        }
    }
}

std::vector<int>
NetlistFactoryFirrtl::read_int(boost::optional<int> width, int value, bool signedInteger) {
    // Convert a FIRRTL UInt/SInt into a vector of bits. Having the bits in a vector makes connecting them to input pins easier. 
    std::vector<int> bits;
    int bitWidth;

    if (!signedInteger) {
        if (value < 0) throw std::logic_error("[PARSER] Error: Cannot parse negative integer (" + std::to_string(value) + ") as UInt!");
        else {
            bitWidth = floor(log2(value)) + 1;
            if (width) {
                if (width.get() < bitWidth) throw std::logic_error("[PARSER] Error: Too small bit width (" + std::to_string(width.get()) + ") for integer value " + std::to_string(value) + "!");
                else bitWidth = width.get();
            }
            else {
                throw std::logic_error("[PARSER] Error: No width defined for integer value " + std::to_string(value));  // Widths must be explicitly defined for LoFIRRTL.
            }

            for (int i = 0; i < bitWidth; i++) {
                bits.push_back(value & 1);
                value = value >> 1;
            } 
        }
    }
    else {
        int bitWidth = (value < 0) ? floor(log2(value*(-1))) + 2 : floor(log2(value)) + 2;
        if (width) {
            if (width.get() < bitWidth) throw std::logic_error("[PARSER] Error: Too small bit width (" + std::to_string(width.get()) + ") for integer value " + std::to_string(value) + "!");
            else bitWidth = width.get();
        }
        else {
            throw std::logic_error("[PARSER] Error: No width defined for integer value " + std::to_string(value));  // Widths must be explicitly defined for LoFIRRTL.
        }

        for (int i = 0; i < bitWidth; i++) {
            bits.push_back(value & 1);
            value = value >> 1;
        }
    }

    return bits;
}

std::vector<int>
NetlistFactoryFirrtl::read_int_from_bits(boost::optional<int> width, std::string value, bool signedInteger) {
    // Convert a FIRRTL UInt/SInt into a vector of bits. Having the bits in a vector makes connecting them to input pins easier. 
    std::vector<int> bits;
    int bitWidth;
    
    std::string format = value.substr(0, 1);
    if (format == "-") format = value.substr(0,2);
    int base = (format == "b" || format == "B") ? 2 : (format == "o" || format == "O") ? 8 : (format == "h" || format == "H") ? 16  : (format == "#" || format == "-#") ? 10 : throw std::logic_error("[PARSER] Error: Unsupported format '" + format + "' for integer value " + value + "!");
    if (format == "-#") value.erase(1,2);
    else value.erase(0,1);

    int int_value = std::stoi(value, 0, base);

    if (!signedInteger) {
        if (int_value < 0) throw std::logic_error("[PARSER] Error: Cannot parse negative integer (" + std::to_string(int_value) + ") as UInt!");
        else {
            bitWidth = floor(log2(int_value)) + 1;
            if (width) {
                if (width.get() < bitWidth) throw std::logic_error("[PARSER] Error: Too small bit width (" + std::to_string(width.get()) + ") for integer value " + std::to_string(int_value) + "!");
                else bitWidth = width.get();
            }
            else {
                throw std::logic_error("[PARSER] Error: No width defined for integer value " + std::to_string(int_value));  // Widths must be explicitly defined for LoFIRRTL.
            }

            for (int i = 0; i < bitWidth; i++) {
                bits.push_back(int_value & 1);
                int_value = int_value >> 1;
            } 
        }
    }
    else {
        int bitWidth = (int_value < 0) ? floor(log2(int_value*(-1))) + 2 : floor(log2(int_value)) + 2;
        if (width) {
            if (width.get() < bitWidth) throw std::logic_error("[PARSER] Error: Too small bit width (" + std::to_string(width.get()) + ") for integer value " + std::to_string(int_value) + "!");
            else bitWidth = width.get();
        }
        else {
            throw std::logic_error("[PARSER] Error: No width defined for integer value " + std::to_string(int_value));  // Widths must be explicitly defined for LoFIRRTL.
        }

        for (int i = 0; i < bitWidth; i++) {
            bits.push_back(int_value & 1);
            int_value = int_value >> 1;
        }
    }

    return bits;
}

std::string 
NetlistFactoryFirrtl::check_reference(verica::Module* module, std::string identifier) {
    std::pair<verica::Module*, std::string> map_key = std::make_pair(module, identifier);
    if (m_port_vector_map.find(map_key) == m_port_vector_map.end() &&
        m_inst_pin_vector_map.find(map_key) == m_inst_pin_vector_map.end() &&
        m_wire_vector_map.find(map_key) == m_wire_vector_map.end() &&
        m_node_map.find(map_key) == m_node_map.end() &&
        m_reg_map.find(map_key) == m_reg_map.end() &&
        m_inst_map.find(map_key) == m_inst_map.end())
        std::cout << "[PARSER] Warning: Unknown identifier '" + identifier + "' for module '" + module->name() + "'. You can ignore this warning when referring to future identifiers." << std::endl; 
    return identifier;
}

std::string
NetlistFactoryFirrtl::check_sub_index(verica::Module* module, std::string identifier, int index) {
    std::string sub_identifier = identifier + "[" + std::to_string(index) + "]";
    return check_reference(module, sub_identifier);
}

verica::Module* 
NetlistFactoryFirrtl::add_multiplexer(verica::Module* module, EXP_TYPE sel, EXP_TYPE exp1, EXP_TYPE exp2) {
    // Get multiplexer gate cell template.
    CellTemplate mux_template = CellTemplate();
    for (auto cell : m_state->m_cell_library->gate_types()) {
        if (cell.first == "mux") {
            mux_template = *cell.second;
        }
    }
    if (mux_template == CellTemplate()) throw std::logic_error("[PARSER] Error: Cannot find multiplexer (mux) cell template!");

    // Check if selection signal has width 1.
    if (get_expression_size(module, sel, false) != 1) 
        throw std::logic_error("[PARSER] Error: Selection signal of multiplexer must have width 1 (actual width: "  + std::to_string(boost::get<std::vector<int>>(sel).size()) + " ).");
    
    // Check if width of first expression equals width of second expression.
    if (get_expression_size(module, exp1, false) != get_expression_size(module,exp2, false))
        throw std::logic_error("[PARSER] Error: Expression width of multiplexer are not equal. Widths: " + std::to_string(get_expression_size(module, exp1, false)) + "/" + std::to_string(get_expression_size(module, exp2, false)));

    std::string module_identifier = "FIRRTL_INTERNAL_MULTIPLEXER_" + std::to_string(mux_counter);
    verica::Module* mux_module = m_state->m_netlist_model->add_module(module_identifier, module);

    for (unsigned int i = 0; i < get_expression_size(module, exp1, false); i++) {
        // Add multiplexer gate to model.
        std::string sub_module_identifier = "FIRRTL_INTERNAL_MULTIPLEXER_" + std::to_string(mux_counter) + "_" + std::to_string(i);
        verica::Module* mux_sub_module = m_state->m_netlist_model->add_module(sub_module_identifier, mux_module, mux_template);

        // Connect expressions to multiplexer sub gates.
        std::vector<EXP_TYPE> expressions = {sel, exp1, exp2};
        connect_expressions_to_module(mux_sub_module, module, expressions, i, true);
    }
    mux_counter++;

    return mux_module;
}

verica::Module* 
NetlistFactoryFirrtl::add_cond_valid(verica::Module* module, EXP_TYPE exp1, EXP_TYPE exp2) {
    // Get conditional valid gate cell template.
    CellTemplate validif_template = CellTemplate();
    for (auto cell : m_state->m_cell_library->gate_types()) {
        if (cell.first == "validif") {
            validif_template = *cell.second;
        }
    }
    if (validif_template == CellTemplate()) throw std::logic_error("[PARSER] Error: Cannot find conditional valid (validif) cell template!");

    std::string module_identifier = "FIRRTL_INTERNAL_COND_VALID_" + std::to_string(cond_valid_counter);
    verica::Module* validif_module = m_state->m_netlist_model->add_module(module_identifier, module);

    for (unsigned int i = 0; i < get_expression_size(module, exp1, false); i++) {
        // Add conditional valid sub gates to model.
        std::string sub_module_identifier = "FIRRTL_INTERNAL_COND_VALID_" + std::to_string(cond_valid_counter) + "_" + std::to_string(i);
        verica::Module* cond_valid_sub_module = m_state->m_netlist_model->add_module(sub_module_identifier, validif_module, validif_template);

        // Connect expressions to conditional valid sub gates.
        std::vector<EXP_TYPE> expressions = {exp1, exp2};
        connect_expressions_to_module(cond_valid_sub_module, module, expressions, i, true);
    }
    cond_valid_counter++;

    return validif_module;
}

verica::Module* 
NetlistFactoryFirrtl::add_primop_logic_gate(verica::Module* module, std::string cell_id, std::vector<EXP_TYPE> arguments) {
    // Get primop gate cell template.
    CellTemplate primop_template = CellTemplate();
    for (auto cell : m_state->m_cell_library->gate_types()) {
        if (cell.first == cell_id) {
            primop_template = *cell.second;
        }
    }
    if (primop_template == CellTemplate()) throw std::logic_error("[PARSER] Error: Cannot find cell template for primitive operation '" + cell_id + "'!");

    std::string module_identifier = "FIRRTL_INTERNAL_PRIMOP_" + std::to_string(primop_counter);
    verica::Module* primop_module = m_state->m_netlist_model->add_module(module_identifier, module);

    for (unsigned int i = 0; i < get_expression_size(module, arguments[0], false); i++) {
        // Add primop sub gates to model.
        std::string sub_module_identifier = "FIRRTL_INTERNAL_PRIMOP_" + std::to_string(primop_counter) + "_" + std::to_string(i);
        verica::Module* primop_sub_module = m_state->m_netlist_model->add_module(sub_module_identifier, primop_module, primop_template);

        // Connect expressions to primop sub gates.
        connect_expressions_to_module(primop_sub_module, module, arguments, i, true);
    }
    primop_counter++;

    return primop_module;
}

EXP_TYPE
NetlistFactoryFirrtl::primop_interpret(EXP_TYPE expression) {
    return expression;
}

std::string
NetlistFactoryFirrtl::primop_bit_operation(verica::Module* module, std::string bitop, EXP_TYPE exp1, boost::variant<EXP_TYPE, int> exp2_or_param1, boost::optional<int> param2) {
    boost::variant<const std::vector<const verica::Pin*>, const std::vector<const verica::Wire*>> pw1 = get_pins_or_wires_from_expression(module, exp1, false);
    std::string identifier = "";
    std::pair<verica::Module*, std::string> map_key;

    if (bitop == "cat") {   // Concatenate bits of expression 1 with bits of expression 2.
        if (exp2_or_param1.which() == 0) {
            boost::variant<const std::vector<const verica::Pin*>, const std::vector<const verica::Wire*>> pw2 = get_pins_or_wires_from_expression(module, boost::get<EXP_TYPE>(exp2_or_param1), false);
            if (pw1.which() == 0) {
                if (pw2.which() == 0) {
                    const std::vector<const verica::Pin*> p1 = boost::get<const std::vector<const verica::Pin*>>(pw1);
                    const std::vector<const verica::Pin*> p2 = boost::get<const std::vector<const verica::Pin*>>(pw2);
                    std::vector<const verica::Pin*> concat_pins;

                    for (auto p : p1) {
                        concat_pins.push_back(p);
                    }
                    for (auto p : p2) {
                        concat_pins.push_back(p);
                    }

                    identifier = "BITOP_PINS_" + std::to_string(bitop_pins++);
                    map_key = std::make_pair(module, identifier);
                    m_bitop_pin_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<const verica::Pin*>>(map_key, concat_pins));
                }
                else {
                    const std::vector<const verica::Pin*> p1 = boost::get<const std::vector<const verica::Pin*>>(pw1);
                    const std::vector<const verica::Pin*> p2 = get_wire_inputs(boost::get<const std::vector<const verica::Wire*>>(pw2));
                    std::vector<const verica::Pin*> concat_pins;

                    for (auto p : p1) {
                        concat_pins.push_back(p);
                    }
                    for (auto p : p2) {
                        concat_pins.push_back(p);
                    }

                    identifier = "BITOP_PINS_" + std::to_string(bitop_pins++);
                    map_key = std::make_pair(module, identifier);
                    m_bitop_pin_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<const verica::Pin*>>(map_key, concat_pins));
                }
            }
            else {
                if (pw2.which() == 0) {
                    const std::vector<const verica::Pin*> p1 = get_wire_inputs(boost::get<const std::vector<const verica::Wire*>>(pw1));
                    const std::vector<const verica::Pin*> p2 = boost::get<const std::vector<const verica::Pin*>>(pw2);
                    std::vector<const verica::Pin*> concat_pins;

                    for (auto p : p1) {
                        concat_pins.push_back(p);
                    }
                    for (auto p : p2) {
                        concat_pins.push_back(p);
                    }

                    identifier = "BITOP_PINS_" + std::to_string(bitop_pins++);
                    map_key = std::make_pair(module, identifier);
                    m_bitop_pin_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<const verica::Pin*>>(map_key, concat_pins));
                }
                else {
                    const std::vector<const verica::Wire*> w1 = boost::get<const std::vector<const verica::Wire*>>(pw1);
                    const std::vector<const verica::Wire*> w2 = boost::get<const std::vector<const verica::Wire*>>(pw2);
                    std::vector<const verica::Wire*> concat_wires;

                    for (auto w : w1) {
                        concat_wires.push_back(w);
                    }
                    for (auto w : w2) {
                        concat_wires.push_back(w);
                    }

                    identifier = "BITOP_WIRES_" + std::to_string(bitop_wires++);
                    map_key = std::make_pair(module, identifier);
                    m_bitop_wire_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<const verica::Wire*>>(map_key, concat_wires));
                }
            }
        }
        else {
            throw std::logic_error("[PARSER] Error: Need two expressions for concatenation (cat).");
        }
    }
    else if (bitop == "bits") { // Bit extraction of expression 1 for bits between hi (param 1) and lo (param 2).
        int hi, lo;
        if (exp2_or_param1.which() == 1) {
            hi = boost::get<int>(exp2_or_param1);
            lo = boost::get_optional_value_or(param2, -1);

            if (hi < 0 || lo < 0) throw std::logic_error("[PARSER] Error: Expected two positive parameters (hi/lo) for bit extraction (bits).");
            if (hi >= (int)get_expression_size(module, exp1, false) || lo >= (int)get_expression_size(module, exp1, false)) throw std::logic_error("[PARSER] Error: Parameters for bit extraction must not be greater than expression width.");

            if (pw1.which() == 0) {
                const std::vector<const verica::Pin*> p1 = boost::get<const std::vector<const verica::Pin*>>(pw1);
                std::vector<const verica::Pin*> bits_pins;
                for (int i = lo; i <= hi; i++) {
                    bits_pins.push_back(p1[i]);
                }
                
                identifier = "BITOP_PINS_" + std::to_string(bitop_pins++);
                map_key = std::make_pair(module, identifier);
                m_bitop_pin_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<const verica::Pin*>>(map_key, bits_pins));
            }
            else {
                const std::vector<const verica::Wire*> w1 = boost::get<const std::vector<const verica::Wire*>>(pw1);
                std::vector<const verica::Wire*> bits_wires;
                for (int i = lo; i <= hi; i++) {
                    bits_wires.push_back(w1[i]);
                }
                
                identifier = "BITOP_WIRES_" + std::to_string(bitop_wires++);
                map_key = std::make_pair(module, identifier);
                m_bitop_wire_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<const verica::Wire*>>(map_key, bits_wires));
            }
        }
        else throw std::logic_error("[PARSER] Error: Need two integer parameters (hi/lo) for bit extraction (bits).");
    }
    else if (bitop == "head") { // Get the n (param 1) most significant bits of expression 1.
        int n;
        if (exp2_or_param1.which() == 1) {
            n = boost::get<int>(exp2_or_param1);

            if (n < 0) throw std::logic_error("[PARSER] Error: Parameter for bit extraction must not be negative.");
            if (n > (int)get_expression_size(module, exp1, false)) throw std::logic_error("[PARSER] Error: Parameter for bit extraction must not be greater than expression width.");

            if (pw1.which() == 0) {
                const std::vector<const verica::Pin*> p1 = boost::get<const std::vector<const verica::Pin*>>(pw1);
                std::vector<const verica::Pin*> bits_pins;
                for (unsigned int i = (get_expression_size(module, exp1, false) - n); i < get_expression_size(module, exp1, false); i++) {
                    bits_pins.push_back(p1[i]);
                }
                
                identifier = "BITOP_PINS_" + std::to_string(bitop_pins++);
                map_key = std::make_pair(module, identifier);
                m_bitop_pin_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<const verica::Pin*>>(map_key, bits_pins));
            }
            else {
                const std::vector<const verica::Wire*> w1 = boost::get<const std::vector<const verica::Wire*>>(pw1);
                std::vector<const verica::Wire*> bits_wires;
                for (unsigned int i = (get_expression_size(module, exp1, false) - n); i < get_expression_size(module, exp1, false); i++) {
                    bits_wires.push_back(w1[i]);
                }
                
                identifier = "BITOP_WIRES_" + std::to_string(bitop_wires++);
                map_key = std::make_pair(module, identifier);
                m_bitop_wire_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<const verica::Wire*>>(map_key, bits_wires));
            }
        }
        else throw std::logic_error("[PARSER] Error: Need one integer parameter (n) for bit extraction (head).");
    }
    else if (bitop == "tail") { // Truncate the n (param 1) most significant bits of expression 1.
        int n;
        if (exp2_or_param1.which() == 1) {
            n = boost::get<int>(exp2_or_param1);

            if (n < 0) throw std::logic_error("[PARSER] Error: Parameter for bit extraction must not be negative.");
            if (n > (int)get_expression_size(module, exp1, false)) throw std::logic_error("[PARSER] Error: Parameter for bit extraction must not be greater than expression width.");

            if (pw1.which() == 0) {
                const std::vector<const verica::Pin*> p1 = boost::get<const std::vector<const verica::Pin*>>(pw1);
                std::vector<const verica::Pin*> bits_pins;
                for (unsigned int i = 0; i < get_expression_size(module, exp1, false) - n; i++) {
                    bits_pins.push_back(p1[i]);
                }
                
                identifier = "BITOP_PINS_" + std::to_string(bitop_pins++);
                map_key = std::make_pair(module, identifier);
                m_bitop_pin_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<const verica::Pin*>>(map_key, bits_pins));
            }
            else {
                const std::vector<const verica::Wire*> w1 = boost::get<const std::vector<const verica::Wire*>>(pw1);
                std::vector<const verica::Wire*> bits_wires;
                for (unsigned int i = 0; i < get_expression_size(module, exp1, false) - n; i++) {
                    bits_wires.push_back(w1[i]);
                }
                
                identifier = "BITOP_WIRES_" + std::to_string(bitop_wires++);
                map_key = std::make_pair(module, identifier);
                m_bitop_wire_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<const verica::Wire*>>(map_key, bits_wires));
            }
        }
        else throw std::logic_error("[PARSER] Error: Need one integer parameter (n) for bit extraction (tail).");
    }
    else if (bitop == "pad") {  // Extend the bits of expression 1 up to the width n (param 1). 
        int n;
        if (exp2_or_param1.which() == 1) {
            n = boost::get<int>(exp2_or_param1);

            if (n < 0) throw std::logic_error("[PARSER] Error: Parameter for padding must not be negative.");
            if (n < (int)get_expression_size(module, exp1, false)) {
                if (pw1.which() == 0) {
                    std::vector<const verica::Pin*> bits_pins = boost::get<const std::vector<const verica::Pin*>>(pw1);
                    identifier = "BITOP_PINS_" + std::to_string(bitop_pins++);
                    map_key = std::make_pair(module, identifier);
                    m_bitop_pin_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<const verica::Pin*>>(map_key, bits_pins));
                }
                else {
                    std::vector<const verica::Wire*> bits_wires = boost::get<const std::vector<const verica::Wire*>>(pw1);
                    identifier = "BITOP_WIRES_" + std::to_string(bitop_wires++);
                    map_key = std::make_pair(module, identifier);
                    m_bitop_wire_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<const verica::Wire*>>(map_key, bits_wires));
                }
            }
            else {
                int padding_width = get_expression_size(module, exp1, false) - n;

                if (pw1.which() == 0) {
                    std::vector<const verica::Pin*> bits_pins = boost::get<const std::vector<const verica::Pin*>>(pw1);

                    for (int i = 0; i < padding_width; i++) {
                        const verica::Pin* pin = m_state->m_netlist_model->add_pin("FIRRTL_INTERNAL_PADDING_PIN_" + std::to_string(padding_pins++), module, true);
                        m_state->m_netlist_model->set_constant_input(pin->uid(), 0);
                        bits_pins.push_back(pin);
                    }

                    identifier = "BITOP_PINS_" + std::to_string(bitop_pins++);
                    map_key = std::make_pair(module, identifier);
                    m_bitop_pin_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<const verica::Pin*>>(map_key, bits_pins));
                }
                else {
                    std::vector<const verica::Wire*> bits_wires = boost::get<const std::vector<const verica::Wire*>>(pw1);

                    for (int i = 0; i < padding_width; i++) {
                        const verica::Pin* pin = m_state->m_netlist_model->add_pin("FIRRTL_INTERNAL_PADDING_PIN_" + std::to_string(padding_pins++), module, true);
                        m_state->m_netlist_model->set_constant_input(pin->uid(), 0);
                        
                        const verica::Wire* wire = m_state->m_netlist_model->add_wire("FIRRTL_INTERNAL_PADDING_WIRE_" + std::to_string(padding_wires++), module);
                        m_state->m_netlist_model->set_wire_source(wire->uid(), pin->uid());
                        bits_wires.push_back(wire);
                    }

                    identifier = "BITOP_WIRES_" + std::to_string(bitop_wires++);
                    map_key = std::make_pair(module, identifier);
                    m_bitop_wire_vector_map.insert(std::pair<std::pair<verica::Module*, std::string>, std::vector<const verica::Wire*>>(map_key, bits_wires));
                }
            }
        }
        else throw std::logic_error("[PARSER] Error: Need one integer parameter (n) for padding (pad).");
    }

    return identifier;
}

// Obtain connectable pins or wires from a FIRRTL expression.
boost::variant<const std::vector<const verica::Pin*>, const std::vector<const verica::Wire*>> 
NetlistFactoryFirrtl::get_pins_or_wires_from_expression(verica::Module* module, EXP_TYPE exp, bool input) {
    if (exp.which() == 1) {         // Handle case that the expression is an identifier (std::string).
        std::string identifier = boost::get<std::string>(exp);
        std::pair<verica::Module*, std::string> map_key = std::make_pair(module, identifier);
        if (m_port_vector_map.find(map_key) != m_port_vector_map.end()) {
            std::vector<verica::Pin*> mapped_pins = m_port_vector_map.at(map_key);
            std::vector<const verica::Pin*> intermediate_pins;
            for (unsigned int i = 0; i < mapped_pins.size(); i++) {
                intermediate_pins.push_back(m_state->m_netlist_model->get_pin(mapped_pins[i]->uid()));
            }
            const std::vector<const verica::Pin*> pins = intermediate_pins;
            return pins;
        }
        else if (m_bitop_pin_vector_map.find(map_key) != m_bitop_pin_vector_map.end()) {
            std::vector<const verica::Pin*> pins = m_bitop_pin_vector_map.at(map_key);
            return pins;
        }
        else if (m_inst_pin_vector_map.find(map_key) != m_inst_pin_vector_map.end()) {
            std::vector<const verica::Pin*> pins = m_inst_pin_vector_map.at(map_key);
            return pins;
        }
        else if (m_wire_vector_map.find(map_key) != m_wire_vector_map.end()) {
            std::vector<verica::Wire*> mapped_wires = m_wire_vector_map.at(map_key);
            std::vector<const verica::Wire*> intermediate_wires;
            for (unsigned int i = 0; i < mapped_wires.size(); i++) {
                intermediate_wires.push_back(m_state->m_netlist_model->get_wire(mapped_wires[i]->uid()));
            }
            const std::vector<const verica::Wire*> wires = intermediate_wires;
            return wires;
        }
        else if (m_bitop_wire_vector_map.find(map_key) != m_bitop_wire_vector_map.end()) {
            std::vector<const verica::Wire*> wires = m_bitop_wire_vector_map.at(map_key);
            return wires;
        }
        else if (m_reg_map.find(map_key) != m_reg_map.end()) {
            verica::Module* reg_mod = m_reg_map.at(map_key);
            std::vector<const verica::Pin*> intermediate_pins;
            for (auto sub_module : reg_mod->children()) {
                if (input){
                    for (auto pin : sub_module->input_pins()) intermediate_pins.push_back(pin);
                }
                else {
                    for (auto pin : sub_module->output_pins()) intermediate_pins.push_back(pin);
                }
            }
            const std::vector<const verica::Pin*> pins = intermediate_pins;
            return pins;
        }
        else if (m_inst_map.find(map_key) != m_inst_map.end()) {
            if (input){
                const std::vector<const verica::Pin*> pins = m_inst_map.at(map_key)->input_pins();
                return pins;
            }
            else {
                const std::vector<const verica::Pin*> pins = m_inst_map.at(std::make_pair(module, identifier))->output_pins();
                return pins;
            }
        }
        else if (m_node_map.find(std::make_pair(module, identifier)) != m_node_map.end()) {
            boost::variant<const std::vector<const verica::Pin*>, const std::vector<const verica::Wire*>> pins_or_wires = get_pins_or_wires_from_expression(module, m_node_map.at(std::make_pair(module, identifier)), input);
            return pins_or_wires;
        }
    }
    else if (exp.which() == 2) {    // Handle case that the expression is a module (verica::Module).
        const verica::Module* mod = boost::get<verica::Module*>(exp);
        std::vector<const verica::Pin*> intermediate_pins;
        const std::vector<const verica::Pin*> child_pins = get_submodule_pins(mod, input);
        for (auto pin : child_pins) intermediate_pins.push_back(pin);
        if (input){
            for (auto pin : mod->input_pins()) intermediate_pins.push_back(pin);
        }
        else {
            for (auto pin : mod->output_pins()) intermediate_pins.push_back(pin);
        }
        const std::vector<const verica::Pin*> pins = intermediate_pins;
        return pins;
    }

    const std::vector<const verica::Pin*> zero_pins = {};   // Return value for constant pins.
    return zero_pins;
}

// Connect output pins/wires from expressions to a module.
void
NetlistFactoryFirrtl::connect_expressions_to_module(verica::Module* module, verica::Module* exp_module, std::vector<EXP_TYPE> expressions, int idx, bool fromCellTemplate) {
    // Get input pins from module.
    unsigned int input_pin_idx = 0;
    const std::vector<const verica::Pin*> input_pins = module->input_pins();

    // Get expression outputs.
    std::vector<boost::variant<const std::vector<const verica::Pin*>, const std::vector<const verica::Wire*>>> expression_outputs;
    for(auto exp : expressions) {
        expression_outputs.push_back(get_pins_or_wires_from_expression(exp_module, exp, false));
    }

    // Check length of the expression outputs.
    unsigned int expression_output_length = 0;
    for (auto eo : expression_outputs) {
        if (eo.which() == 0) {
            const std::vector<const verica::Pin*> eo_pins = boost::get<const std::vector<const verica::Pin*>>(eo);
            expression_output_length += eo_pins.size();
        }
        else {
            const std::vector<const verica::Wire*> eo_wires = boost::get<const std::vector<const verica::Wire*>>(eo);
            expression_output_length += eo_wires.size();
        }
    }
    if (expression_output_length != module->input_pins().size() && !fromCellTemplate) throw std::logic_error("[PARSER] Error: Input width for module '" + module->name() + "' does not match expression size.");

    // Connect expression outputs to module input pins.
    for (auto eo : expression_outputs) {
        if (eo.which() == 0) {
            const std::vector<const verica::Pin*> eo_pins = boost::get<const std::vector<const verica::Pin*>>(eo);
            if (fromCellTemplate) {
                const verica::Wire* connection_wire;
                if (eo_pins[idx % eo_pins.size()]->fan_out()) {
                    connection_wire = eo_pins[idx % eo_pins.size()]->fan_out();
                }
                else {
                    connection_wire = m_state->m_netlist_model->add_wire(eo_pins[idx % eo_pins.size()]->name(), exp_module);
                    m_state->m_netlist_model->set_wire_source(connection_wire->uid(), eo_pins[idx % eo_pins.size()]->uid());
                }
                m_state->m_netlist_model->set_wire_target(connection_wire->uid(), input_pins[input_pin_idx++]->uid());
            }
            else {
                for (unsigned int i = 0; i < eo_pins.size(); i++) {
                    const verica::Wire* connection_wire;
                    if (eo_pins[i]->fan_out()) {
                        connection_wire = eo_pins[i]->fan_out();
                    }
                    else {
                        connection_wire = m_state->m_netlist_model->add_wire(eo_pins[i]->name(), exp_module);
                        m_state->m_netlist_model->set_wire_source(connection_wire->uid(), eo_pins[i]->uid());
                    }
                    m_state->m_netlist_model->set_wire_target(connection_wire->uid(), input_pins[input_pin_idx++]->uid());
                }
            }
        }
        else {
            const std::vector<const verica::Wire*> eo_wires = boost::get<const std::vector<const verica::Wire*>>(eo);
            if (fromCellTemplate) {
                m_state->m_netlist_model->set_wire_target(eo_wires[idx % eo_wires.size()]->uid(), input_pins[input_pin_idx++]->uid());
            }
            else {
                for (unsigned int i = 0; i < eo_wires.size(); i++) {
                    m_state->m_netlist_model->set_wire_target(eo_wires[i]->uid(), input_pins[input_pin_idx++]->uid());
                }
            }
        }
    }
}

unsigned int
NetlistFactoryFirrtl::get_expression_size(verica::Module* module, EXP_TYPE exp, bool input) {
    boost::variant<const std::vector<const verica::Pin*>, const std::vector<const verica::Wire*>> expression_vector = get_pins_or_wires_from_expression(module, exp, input);
    if (expression_vector.which() == 0) return boost::get<const std::vector<const verica::Pin*>>(expression_vector).size();
    else return boost::get<const std::vector<const verica::Wire*>>(expression_vector).size();
}

const std::vector<const verica::Pin*>
NetlistFactoryFirrtl::get_wire_inputs(const std::vector<const verica::Wire*> wires) {
    std::vector<const verica::Pin*> intermediate_pins;
    for (auto wire : wires) {
        intermediate_pins.push_back(wire->source_pin());
    }
    const std::vector<const verica::Pin*> pins = intermediate_pins;
    return pins;
}

const std::vector<const verica::Pin*>
NetlistFactoryFirrtl::get_submodule_pins(const verica::Module* module, bool input) {
    std::vector<const verica::Pin*> intermediate_pins;
    for (auto sub_mod : module->children()) {
        const std::vector<const verica::Pin*> child_pins = get_submodule_pins(sub_mod, input);
        for (auto pin : child_pins) intermediate_pins.push_back(pin);
    }
    if (input) {
        for (auto pin : module->input_pins()) intermediate_pins.push_back(pin);
    }
    else {
        for (auto pin : module->output_pins()) intermediate_pins.push_back(pin);
    }
    const std::vector<const verica::Pin*> pins = intermediate_pins;
    return pins;
}