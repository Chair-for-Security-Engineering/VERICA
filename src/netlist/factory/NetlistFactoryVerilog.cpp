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

#include "netlist/factory/NetlistFactoryVerilog.hpp"

//Add a new module to the netlist
verica::Module* 
NetlistFactoryVerilog::add_module(std::string name)
{
    verica::Module* m = m_state->m_netlist_model->add_module(name);
    m_state->m_netlist_model->set_topmodule(m);
    m_state->m_netlist_model->set_module_under_test(m);
    return m;
}

//Set the topmodule of another module (or gate).
void 
NetlistFactoryVerilog::set_topmodule(verica::Module* parent, verica::Module* child)
{
    m_state->m_netlist_model->set_parent_module(child, parent);
}

//Get the ports of a module by an identifier
std::vector<const verica::Pin*> 
NetlistFactoryVerilog::get_ports(verica::Module* m, std::string port_identifier)
{
    std::vector<const verica::Pin*> all_ports = m->input_pins();
    all_ports.insert(all_ports.end(), m->output_pins().begin(), m->output_pins().end());
    std::vector<const verica::Pin*> ports;
    //Return ports which are named: port_identifier + [ + integer + ]
    std::copy_if(all_ports.begin(), all_ports.end(), std::back_inserter(ports), 
        [&](const verica::Pin* p ){            
            return ((p->name().rfind(port_identifier + "[", 0) == 0) 
                        && p->name().back() == ']' 
                        && is_integer(p->name().substr(port_identifier.length() + 1, p->name().length() - port_identifier.length() - 2)))
                    || (p->name() == port_identifier);});
    if (ports.size() == 0)
        throw std::logic_error("Not found: Pin " + port_identifier + " of " + m->name());
    
    return ports;
}

//Get pins and wires of a module by a list of identifiers
std::vector<boost::variant<const verica::Pin*, const verica::Wire*>> 
NetlistFactoryVerilog::get_pins_and_wires_single(verica::Module* module, boost::tuple<std::string, boost::optional<boost::variant<int, std::pair<int, int>>>> identifier)
{
    std::vector<boost::variant<verica::Pin*, verica::Wire*>> v;
    std::vector<boost::tuple<std::string, boost::optional<boost::variant<int, std::pair<int, int>>>>> identifiers;
    identifiers.push_back(identifier);
    return get_pins_and_wires(module->parent(), identifiers);
}

/*
    Get pins, wires or constant values by a list of identifiers (or strings)
*/
std::vector<boost::variant<const verica::Pin*, const verica::Wire*, std::string>> NetlistFactoryVerilog::get_connectors(verica::Module* module, bool parent, std::vector<boost::variant<std::vector<int>, boost::tuple<std::string, boost::optional<boost::variant<int, std::pair<int, int>>>>>> identifiers)
{
    if (parent){
        module = module->parent();
    }
    std::vector<boost::variant<const verica::Pin*, const verica::Wire*, std::string>> pins_and_wires;
    for (auto identifier : identifiers){
        if (identifier.which() == 1){
            auto default_identifier = boost::get<boost::tuple<std::string, boost::optional<boost::variant<int, std::pair<int, int>>>>>(identifier);
            
            //Get the identifier name
            std::string identifier_name = default_identifier.get<0>();

            //Get the optional range or single
            boost::optional<boost::variant<int, std::pair<int, int>>> range_or_single = default_identifier.get<1>();
            bool single_specified = false;
            bool range_specified = false;
            std::pair<int, int> range;

            //Is the range incrementing? This is false if we have pins that were created e.g. as input [7:3] DIN, and the range is not otherwise specified. 
            bool range_incrementing = false;

            int index = 0;
            int last_index_found = -1;

            //If a range or single is specified for our current identifier, retrieve it and set the boolean vars. 
            if (range_or_single){
                if(range_or_single.get().which() == 0){
                    index = boost::get<int>(range_or_single.get());
                    single_specified = true;
                }else {
                    range = boost::get<std::pair<int, int>>(range_or_single.get());
                    range_incrementing = range.first < range.second;
                    index = range.first;
                    range_specified = true;
                }
            }

            //We're going to loop through our pins and wires for as long as we find one. With each iteration of this loop, one pin or wire is found.  
            bool found_pin_or_wire = true;

            while (found_pin_or_wire){
                bool found_pin = false;
                bool found_wire = false;

                //First, go through our pins. 
                std::vector<const verica::Pin*> all_ports = module->input_pins();
                all_ports.insert(all_ports.end(), module->output_pins().begin(), module->output_pins().end());

                for (auto const& p : all_ports | boost::adaptors::indexed(0)){

                    //The current pin is the one we're looking for: Either, the pins name matches what we're looking for, and we have not yet found a different pin. 
                    //Or: No range or single is specified, our pin starts correctly and we have either not yet found a different pin or our current pin's index in the vector of pins is larger.
                    //last_index_found is important if we do not specify a range, and our pins were defined with descending indices. Then, we have to make sure that we first find the pin with the highest index. 

                    if ((p.value()->name() == identifier_name + "[" + std::to_string(index) + "]" && last_index_found == -1)
                        || (!range_or_single && p.value()->name().rfind(identifier_name + "[", 0) == 0 && (last_index_found == -1 || p.index() > last_index_found))){
                        pins_and_wires.push_back(p.value());
                        found_pin = true;
                        if (single_specified){
                            //Escape the nested loop. We're handling a single, so as soon as we find the matching pin, we're done and can move on to the next identifier. 
                            goto next_identifier;
                        }else if (range_specified){
                            if (index == range.second){
                                //Escape the nested loop. We're handling a range and are done with it, so move on to the next identifier. 
                                goto next_identifier;
                            }
                            range_incrementing ? index++ : index--;
                        }else if (range_or_single){
                            //This can probably be removed
                            index++;
                        }else {
                            last_index_found = p.index();
                        }
                        break;
                    }
                }

                //We found a pin: Don't continue looking at the wires. Iterate over our Pins again.  
                if (found_pin) continue;

                //The wires are handled the exact same way as pins.  
                for (auto const& w : module->wires() | boost::adaptors::indexed(0)){
                    if ((w.value()->name() == identifier_name + "[" + std::to_string(index) + "]" && last_index_found == -1) || 
                    (!range_or_single && w.value()->name().rfind(identifier_name + "[", 0) == 0 && (last_index_found == -1 || w.index() > last_index_found))){
                        pins_and_wires.push_back(w.value());
                        found_wire = true;
                        if (single_specified){
                            goto next_identifier;
                        }else if (range_specified){
                            if (index == range.second){
                                goto next_identifier;
                            }
                            range_incrementing ? index++ : index--;
                        }else if (range_or_single){
                            index++;
                        }else {
                            last_index_found = w.index();
                        }
                        break;
                    }
                }
                found_pin_or_wire = found_wire || found_pin;
            }
            next_identifier: ;

        }
        else if (identifier.which() == 0){            
            auto const_values = boost::get<std::vector<int>>(identifier);
            for (auto c : const_values){
                pins_and_wires.push_back(std::to_string(c));
            }
        }
    }
    return pins_and_wires;
} 


//Add a gate (using a CellTemplate)
verica::Module* 
NetlistFactoryVerilog::add_gate(CellTemplate type, std::string name, verica::Module *parent)
{
    //We're handling gates as modules
    verica::Module* m = m_state->m_netlist_model->add_module(name, parent, type);
    return m;//m;
}

//Add ports to a module (input/ output) 
void 
NetlistFactoryVerilog::add_ports(verica::Module* module, std::string type, boost::optional<std::pair<int, int>> range, std::vector<std::string> identifiers, boost::optional<std::vector<boost::variant<silver_attribute, piid_attribute, std::pair<std::string, std::string>>>> attributes)
{
    verica::Flag port_flag = verica::None;
    std::vector<std::pair<int, int>> share_index_vector;
    std::map<int, int> piid_map;
    if (attributes){
        for (auto attribute : attributes.get()){
            if (attribute.which() == 0) {
                //SILVER attribute
                silver_attribute attr = boost::get<silver_attribute>(attribute);
                if (attr.which() == 0){
                    std::string flag = boost::get<std::string>(attr);
                    if (flag == "clock"){
                        port_flag = verica::Clock;
                    }else if (flag == "refresh"){
                        port_flag = verica::Refresh;
                    }else if (flag == "control"){
                        port_flag = verica::Control;
                    }
                }         
            
                else {
                    std::vector<boost::tuple<boost::variant<boost::tuple<int, int>, int>, int>> share_index_list = boost::get<std::vector<boost::tuple<boost::variant<boost::tuple<int, int>, int>, int>>>(attr);
                    for (auto share_index_pair : share_index_list){
                        int share = share_index_pair.get<1>();
                        boost::variant<boost::tuple<int, int>, int> range_or_single = share_index_pair.get<0>();
                        if (range_or_single.which() == 0){
                            boost::tuple<int, int> t_range = boost::get<boost::tuple<int, int>>(range_or_single);
                            std::pair<int, int> range = std::make_pair(t_range.get<0>(), t_range.get<1>());
                            int start_index = range.first < range.second ? range.first : range.second;
                            int end_index = range.first < range.second ? range.second : range.first;                                                
                            for (int i = start_index; i <= end_index; i++){
                                share_index_vector.push_back(std::make_pair(i, share));
                            }
                        }else {
                            int single = boost::get<int>(range_or_single);
                            share_index_vector.push_back(std::make_pair(single, share));
                        }
                    }
                }
            }
            else if(attribute.which() == 1){    
                // Primary input identifier attribute
                piid_attribute attr = boost::get<piid_attribute>(attribute);
                for(auto a : attr){
                    boost::tuple<boost::variant<boost::tuple<int, int>, int>, int> piid = boost::get<boost::tuple<boost::variant<boost::tuple<int, int>, int>, int>>(a);
                    if(piid.get<0>().which() == 0){
                        // determine primary input identifier for a given range
                        boost::tuple<int, int> range = boost::get<boost::tuple<int, int>>(piid.get<0>());
                        int start = range.get<1>() < range.get<0>() ? range.get<1>() : range.get<0>();
                        int end = range.get<1>() < range.get<0>() ? range.get<0>() : range.get<1>();
                        for(int i=start; i<=end; ++i) piid_map[i] = piid.get<1>();
                    }
                    else {
                        // determine primary input identifier for a single bit
                        int single = boost::get<int>(piid.get<0>());
                        piid_map[single] = piid.get<1>();
                    }
                }
            }
        }
    }
    bool is_input = type == "input";
    int width = range ? abs(range.get().first - range.get().second) + 1 : 1;
    int first_index = range ? range.get().first : 0; // ? std::min(range.get().first, range.get().second) : 0;
    for (std::string identifier : identifiers){
        for (unsigned int i = 0; i < (unsigned int)width; i++){
            int current_index = 0;
            if (range && range.get().first < range.get().second){
                current_index = first_index + i;
            }else if (range){
                current_index = first_index - i;
            }
            std::string pin_identifier = identifier + "[" + std::to_string(current_index) + "]";
            verica::Pin* p = m_state->m_netlist_model->add_pin(pin_identifier, module, is_input);
            if (!is_input){
                //Output pins get assigned a placeholder input wire which can then be used to connect the output pin to an input pin of a gate
                verica::Wire* w = m_state->m_netlist_model->add_wire(pin_identifier, module);
                m_state->m_netlist_model->set_wire_target(w->uid(), p->uid());
            }
            
            // store primary input identiefier in a member variable
            // the information is used when the corresponding wire is created
            if(piid_map.find(i) != piid_map.end())
                m_piid_map[p->uid()] = piid_map[i];

            m_state->m_netlist_model->set_pin_type(p, port_flag);
            if (i < share_index_vector.size())//share_index_map.find(first_index + i) != share_index_map.end()){
            {
                unsigned int index = share_index_vector[i].first;
                unsigned int share = share_index_vector[i].second;
                //The previous share needs to be defined for our current index
                if ((share > 0 && (module->shares().find(index) == module->shares().end())) || (module->shares().find(index) != module->shares().end() && module->shares().at(index).count(share - 1) == 0)){
                    throw std::logic_error("Previous share missing for Index " + std::to_string(index) + ", Pin: " + p->name() + ", Share: " + std::to_string(share));
                }
                m_state->m_netlist_model->set_pin_share_domain(p->uid(), share);
                m_state->m_netlist_model->set_pin_share_index(p->uid(), index);
                m_state->m_netlist_model->add_share(module, index, share);
                m_state->m_num_output_shares = (m_state->m_num_output_shares < share +1) ? (share +1) : m_state->m_num_output_shares; 
            }
        }
    }
}

//Get pins and wires by a list of identifiers. 
std::vector<boost::variant<const verica::Pin*, const verica::Wire*>> 
NetlistFactoryVerilog::get_pins_and_wires(const verica::Module* module, std::vector<boost::tuple<std::string, boost::optional<boost::variant<int, std::pair<int, int>>>>> identifiers)
{
    std::vector<boost::variant<const verica::Pin*, const verica::Wire*>> pins_and_wires;    
    for (auto identifier : identifiers){
        //Get the identifier name
        std::string identifier_name = identifier.get<0>();

        //Get the optional range or single
        boost::optional<boost::variant<int, std::pair<int, int>>> range_or_single = identifier.get<1>();
        bool single_specified = false;
        bool range_specified = false;
        std::pair<int, int> range;

        //Is the range incrementing? This is false if we have pins that were created e.g. as input [7:3] DIN, and the range is not otherwise specified. 
        bool range_incrementing = false;

        int index = 0;
        int last_index_found = -1;

        //If a range or single is specified for our current identifier, retrieve it and set the boolean vars. 
        if (range_or_single){
            if(range_or_single.get().which() == 0){
                index = boost::get<int>(range_or_single.get());
                single_specified = true;
            }else {
                range = boost::get<std::pair<int, int>>(range_or_single.get());
                range_incrementing = range.first < range.second;
                index = range.first;
                range_specified = true;
            }
        }

        //We're going to loop through our pins and wires for as long as we find one. With each iteration of this loop, one pin or wire is found.  
        bool found_pin_or_wire = true;

        while (found_pin_or_wire){
            bool found_pin = false;
            bool found_wire = false;

            //First, go through our pins. 
            std::vector<const verica::Pin*> all_ports = module->input_pins();
            all_ports.insert(all_ports.end(), module->output_pins().begin(), module->output_pins().end());

            for (auto const& p : all_ports | boost::adaptors::indexed(0)){

                //The current pin is the one we're looking for: Either, the pins name matches what we're looking for, and we have not yet found a different pin. 
                //Or: No range or single is specified, our pin starts correctly and we have either not yet found a different pin or our current pin's index in the vector of pins is larger.
                //last_index_found is important if we do not specify a range, and our pins were defined with descending indices. Then, we have to make sure that we first find the pin with the highest index. 

                if ((p.value()->name() == identifier_name + "[" + std::to_string(index) + "]" && last_index_found == -1)
                    || (!range_or_single && p.value()->name().rfind(identifier_name + "[", 0) == 0 && (last_index_found == -1 || p.index() > last_index_found))){
                    pins_and_wires.push_back(p.value());
                    found_pin = true;
                    if (single_specified){
                        //Escape the nested loop. We're handling a single, so as soon as we find the matching pin, we're done and can move on to the next identifier. 
                        goto next_identifier;
                    }else if (range_specified){
                        if (index == range.second){
                            //Escape the nested loop. We're handling a range and are done with it, so move on to the next identifier. 
                            goto next_identifier;
                        }
                        range_incrementing ? index++ : index--;
                    }else if (range_or_single){
                        //This can probably be removed
                        index++;
                    }else {
                        last_index_found = p.index();
                    }
                    break;
                }
            }

            //We found a pin: Don't continue looking at the wires. Iterate over our Pins again.  
            if (found_pin) continue;

            //The wires are handled the exact same way as pins.  
            for (auto const& w : module->wires() | boost::adaptors::indexed(0)){
                if ((w.value()->name() == identifier_name + "[" + std::to_string(index) + "]" && last_index_found == -1) || 
                (!range_or_single && w.value()->name().rfind(identifier_name + "[", 0) == 0 && (last_index_found == -1 || w.index() > last_index_found))){
                    pins_and_wires.push_back(w.value());
                    found_wire = true;
                    if (single_specified){
                        goto next_identifier;
                    }else if (range_specified){
                        if (index == range.second){
                            goto next_identifier;
                        }
                        range_incrementing ? index++ : index--;
                    }else if (range_or_single){
                        index++;
                    }else {
                        last_index_found = w.index();
                    }
                    break;
                }
            }
            found_pin_or_wire = found_wire || found_pin;
        }
        next_identifier: ;
    }

    return pins_and_wires;

}

//Add a wire to the netlist. If the source pin already has a fan out, return it instead. 
const verica::Wire* 
NetlistFactoryVerilog::add_wire(std::string name, verica::Module* parent, verica::Pin* source_pin)
{
    if (source_pin->fan_out())
        return source_pin->fan_out();
    else 
        return m_state->m_netlist_model->add_wire(name, parent);
}

//Connect pins to wires. 
void 
NetlistFactoryVerilog::assign(verica::Module* module, std::vector<const verica::Pin*> pins, std::vector<boost::variant<const verica::Pin*, const verica::Wire*>> pins_and_wires)
{
    for (unsigned int i = 0; i < pins.size() && i < pins_and_wires.size(); i++){
        const verica::Pin* pin = pins[i];
        boost::variant<const verica::Pin*, const verica::Wire*> pin_or_wire = pins_and_wires[i];
        //Now, make a connection between the two. 
        if (pin_or_wire.which() == 0){
            const verica::Pin* second_pin = boost::get<const verica::Pin*>(pin_or_wire);
            if (!pin->is_input()){
                if (second_pin->fan_in()){
                    m_state->m_netlist_model->set_wire_source(second_pin->fan_in()->uid(), pin->uid());
                }
                if (!pin->fan_out()){
                    //Check if a wire already exists. If not, create it. 
                    const verica::Wire* w = m_state->m_netlist_model->add_wire(second_pin->name(), module->parent());
                    m_state->m_netlist_model->set_wire_source(w->uid(), pin->uid());
                }else {
                    m_state->m_netlist_model->set_wire_target(pin->fan_out()->uid(), second_pin->uid());
                }
            }else {
                if (!second_pin->is_input() && !second_pin->parent_module()->gate() && pin->parent_module()->parent() && second_pin->parent_module()->uid() == pin->parent_module()->parent()->uid()){
                    //Special case: We use the output pin of our module as an input for a gate in the same module. 
                    if (!second_pin->fan_in()){
                        throw std::logic_error("Trying to use fan_in of " + second_pin->name() + " (module " + second_pin->parent_module()->name() + ") even though it doesn't exist. Trying to connect it to gate " + pin->parent_module()->name());
                    }
                    m_state->m_netlist_model->set_wire_target(second_pin->fan_in()->uid(), pin->uid());
                }else {
                    if (!second_pin->fan_out()){
                        //Check if a wire already exists. If not, create it.                  
                        // const verica::Wire* w = m_state->m_netlist_model->add_wire("WIRE_" + second_pin->name(), module->parent());
                        const verica::Wire* w;
                        if(m_piid_map.find(second_pin->uid()) != m_piid_map.end()){
                            w = m_state->m_netlist_model->add_wire(second_pin->name(), module->parent(), m_piid_map[second_pin->uid()]);
                        } else {
                            w = m_state->m_netlist_model->add_wire(second_pin->name(), module->parent());
                        }
                        m_state->m_netlist_model->set_wire_source(w->uid(), second_pin->uid());
                    }
                    //Add pin as a target of the wire from second_pin
                    m_state->m_netlist_model->set_wire_target(second_pin->fan_out()->uid(), pin->uid());
                }
            }
        }else {          
            //We specified a wire, so set pin as its source or a target.                       
            const verica::Wire* wire = boost::get<const verica::Wire*>(pin_or_wire);
            if (pin->is_input()){
                m_state->m_netlist_model->set_wire_target(wire->uid(), pin->uid());
            }else {
                m_state->m_netlist_model->set_wire_source(wire->uid(), pin->uid());
            }
        }
    }
}


//Connect pins to wires. 
void 
NetlistFactoryVerilog::assign_connections(verica::Module* module, std::vector<const verica::Pin*> pins, std::vector<boost::variant<const verica::Pin*, const verica::Wire*, std::string>> pins_and_wires)
{
    if (pins_and_wires.size() == 0) throw std::logic_error("[PARSER] Could not assign a connection due to missing pins and wires.");

    for (unsigned int i = 0; i < pins.size() && i < pins_and_wires.size(); i++){
        const verica::Pin* pin = pins[i];
        boost::variant<const verica::Pin*, const verica::Wire*, std::string> pin_or_wire = pins_and_wires[i];
        //Now, make a connection between the two. 
        if (pin_or_wire.which() == 0){
            const verica::Pin* second_pin = boost::get<const verica::Pin*>(pin_or_wire);
            if (!pin->is_input()){
                if (second_pin->fan_in()){
                    m_state->m_netlist_model->set_wire_source(second_pin->fan_in()->uid(), pin->uid());
                }
                if (!pin->fan_out()){
                    //Check if a wire already exists. If not, create it. 
                    const verica::Wire* w = m_state->m_netlist_model->add_wire(second_pin->name(), module->parent());
                    m_state->m_netlist_model->set_wire_source(w->uid(), pin->uid());
                }else {
                    m_state->m_netlist_model->set_wire_target(pin->fan_out()->uid(), second_pin->uid());
                }
            }else {
                if (!second_pin->is_input() && !second_pin->parent_module()->gate() && pin->parent_module()->parent() && second_pin->parent_module()->uid() == pin->parent_module()->parent()->uid()){
                    //Special case: We use the output pin of our module as an input for a gate in the same module. 
                    if (!second_pin->fan_in()){
                        throw std::logic_error("Trying to use fan_in of " + second_pin->name() + " (module " + second_pin->parent_module()->name() + ") even though it doesn't exist. Trying to connect it to gate " + pin->parent_module()->name());
                    }
                    m_state->m_netlist_model->set_wire_target(second_pin->fan_in()->uid(), pin->uid());
                }else {
                    if (!second_pin->fan_out()){
                        //Check if a wire already exists. If not, create it.                  
                        // const verica::Wire* w = m_state->m_netlist_model->add_wire("WIRE_" + second_pin->name(), module->parent());
                        const verica::Wire* w;
                        if(m_piid_map.find(second_pin->uid()) != m_piid_map.end()){
                            w = m_state->m_netlist_model->add_wire(second_pin->name(), module->parent(), m_piid_map[second_pin->uid()]);
                        } else {
                            w = m_state->m_netlist_model->add_wire(second_pin->name(), module->parent());
                        }
                        m_state->m_netlist_model->set_wire_source(w->uid(), second_pin->uid());
                    }
                    //Add pin as a target of the wire from second_pin
                    m_state->m_netlist_model->set_wire_target(second_pin->fan_out()->uid(), pin->uid());
                }
            }
        }else if (pin_or_wire.which() == 1){          
            //We specified a wire, so set pin as its source or a target.                       
            const verica::Wire* wire = boost::get<const verica::Wire*>(pin_or_wire);
            if (pin->is_input()){
                m_state->m_netlist_model->set_wire_target(wire->uid(), pin->uid());
            }else {
                m_state->m_netlist_model->set_wire_source(wire->uid(), pin->uid());
            }
        }else{
            std::string const_value = boost::get<std::string>(pin_or_wire);
            int const_input = const_value == "0" ? 0 : 1;
            m_state->m_netlist_model->set_constant_input(pin->uid(), const_input);
        }
    }
}


std::vector<boost::variant<const verica::Pin*, const verica::Wire*>> 
NetlistFactoryVerilog::get_pins_and_wires_multiple(verica::Module* module, std::vector<boost::tuple<std::string, boost::optional<boost::variant<int, std::pair<int, int>>>>> identifiers)
{
    return get_pins_and_wires(module->parent(), identifiers);
}

std::vector<boost::variant<const verica::Pin*, const verica::Wire*>> 
NetlistFactoryVerilog::get_pins_and_wires_single_assign(verica::Module* module, boost::tuple<std::string, boost::optional<boost::variant<int, std::pair<int, int>>>> identifier)
{
    std::vector<boost::tuple<std::string, boost::optional<boost::variant<int, std::pair<int, int>>>>> identifiers;
    identifiers.push_back(identifier);
    return get_pins_and_wires(module, identifiers);
}

//Add wires to a module (defined by the Wire keyword)
void 
NetlistFactoryVerilog::add_wires(verica::Module *module, std::vector<std::string> identifiers, boost::optional<std::pair<int, int>> range)
{
    int width = range ? abs(range.get().first - range.get().second) + 1 : 1;
    int first_index = range ? std::min(range.get().first, range.get().second) : 0;
    for (std::string identifier: identifiers ){
        for (int i = 0; i < width; i++){
            std::string wire_identifier = identifier + "[" + std::to_string(i + first_index) + "]";
            bool found = false;
            for (auto s: module->wires()){
                if (s->name() == wire_identifier){
                    found = true;
                    break;
                }
            }
            if (!found){
                m_state->m_netlist_model->add_wire(wire_identifier, module);
            }
        }
    }
}

//Handle the "assign" keyword of Verilog. 
void 
NetlistFactoryVerilog::assign_wires(verica::Module* module, std::vector<boost::variant<const verica::Pin*, const verica::Wire*>> left_identifiers, std::vector<boost::variant<const verica::Pin*,const verica::Wire*>> right_identifiers)
{
    //Go through the two vectors and create a wire between left_identifiers[i] and right_identifiers[i].
    //Depending on whether or not we're handling pins or wires, we have to add a new wire to the module or simply use the existing ones. 
    for (unsigned int i = 0; i < left_identifiers.size() && i < right_identifiers.size(); i++){
        boost::variant<const verica::Pin*,const  verica::Wire*> left_pin_or_wire = left_identifiers[i];
        boost::variant<const verica::Pin*,const  verica::Wire*> right_pin_or_wire = right_identifiers[i];
        if (left_pin_or_wire.which() == 0){            
            const verica::Pin* p_left = boost::get<const verica::Pin*>(left_pin_or_wire);
            if (right_pin_or_wire.which() == 0){
                const verica::Pin* p_right = boost::get<const verica::Pin*>(right_pin_or_wire);

                if (p_right->fan_out()){
                    m_state->m_netlist_model->set_wire_target(p_right->fan_out()->uid(), p_left->uid());
                }else if(p_left->fan_in()){
                    m_state->m_netlist_model->set_wire_source(p_left->fan_in()->uid(), p_right->uid());

                }else {
                    verica::Wire* w = m_state->m_netlist_model->add_wire("WIRE_" + p_right->name(), module);
                    m_state->m_netlist_model->set_wire_source(w->uid(), p_right->uid());
                    m_state->m_netlist_model->set_wire_target(w->uid(), p_left->uid());
                }
            }else {
                const verica::Wire* w_right = boost::get<const verica::Wire*>(right_pin_or_wire);
                m_state->m_netlist_model->set_wire_target(w_right->uid(), p_left->uid());
            }
        }else {
            const verica::Wire* w_left = boost::get<const verica::Wire*>(left_pin_or_wire);
            if (right_pin_or_wire.which() == 0){
                const verica::Pin* p_right = boost::get<const verica::Pin*>(right_pin_or_wire);
                m_state->m_netlist_model->set_wire_source(w_left->uid(), p_right->uid());
            }else {
                const verica::Wire* w_right = boost::get<const verica::Wire*>(right_pin_or_wire);
                m_state->m_netlist_model->set_wire_source(w_left->uid(), w_right->source_pin()->uid());
            }
        }
    }
}

std::vector<int>
NetlistFactoryVerilog::read_int(int width, char format, std::string value){
    //Convert a verilog int into a vector of bits. Having the bits in a vector makes connecting them to input pins easier. 
    std::vector<int> bits;
    int base = (format == 'b' || format == 'B') ? 2 : (format == 'h' || format == 'H') ? 16 : 10;
    int int_value = std::stoi (value, 0, base);
    for (int i = 0; i < width; i++){
        bits.push_back(int_value & 1);
        int_value = int_value >> 1;
    }
    return bits;
}


