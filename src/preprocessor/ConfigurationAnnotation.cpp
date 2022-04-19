/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Jan Richter-Brockmann (jan.richter-brockmann@rub.de)
 * DOCUMENT: ---
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2021, Jan Richter-Brockmann
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

#include "preprocessor/ConfigurationAnnotation.hpp"

using boost::spirit::qi::lit;
using boost::spirit::qi::int_;
using boost::spirit::qi::string; 
using boost::phoenix::ref;

using boost::spirit::qi::ascii::alpha;
using boost::spirit::qi::ascii::alnum;
using boost::spirit::qi::char_;
using boost::spirit::qi::as_string;

void
ConfigurationAnnotation::execute(const Settings *settings, State *state) {
    if(settings->getAnnotation()){
        /* Read annotation file */
        boost::property_tree::read_json(settings->getAnnotationFilePath(), annotations);

        /* Construct a mapping between wire names and wire pointers */
        std::map<std::string, const verica::Wire*> name_to_wire;
        for(auto w : state->m_netlist_model->module_under_test()->wires()){
            if(w->parent() == state->m_netlist_model->module_under_test())
                name_to_wire[w->name()] = w;
        }

        /* Parse and set types */
        parse_and_set_types(state, name_to_wire);

        /* Parse and set PIIDs */
        parse_and_set_piids(state, name_to_wire);

        /* Parse and set share domain for inputs */
        parse_and_set_share_domain(state, name_to_wire, true);

        /* Parse and set share index for inputs */
        parse_and_set_share_index(state, name_to_wire, true);

        /* Parse and set share domain for inputs */
        parse_and_set_share_domain(state, name_to_wire, false);

        /* Parse and set share index for inputs */
        parse_and_set_share_index(state, name_to_wire, false);
    }
}

void
ConfigurationAnnotation::report(std::string service, const Logger *logger, const Settings *settings, State *state) const {   
    (void)state; // We do not need a state object in this function. However, it must be given as paramter due to an overwriting. 

    /* Print header */
    logger->header("ANNOTATIONS");

    if (settings->getAnnotation()) {
        /* Print results */
        // Clock
        logger->log(service, this->m_name, Logger::reporting_number(m_num_of_annotated_clock_wires, "input wire was", "input wires were") + " tagged as clock input.");
        if(m_clock_wires_not_found.size() != 0 && settings->getVerbose() > 1){
            logger->log(service, this->m_name, "WARNING: " + Logger::reporting_number(m_clock_wires_not_found.size(), "wire", "wires") + " could not be tagged as clock input in the MUT.");    
            if(settings->getVerbose() > 2){
                for(auto s : m_clock_wires_not_found)
                    logger->log(service, this->m_name, ITEM + s);   
            }
        }  

        // Control
        logger->log(service, this->m_name, Logger::reporting_number(m_num_of_annotated_control_wires, "input wire was", "input wires were") + " tagged as control inputs.");
        if(m_control_wires_not_found.size() != 0 && settings->getVerbose() > 1){
            logger->log(service, this->m_name, "WARNING: " + Logger::reporting_number(m_control_wires_not_found.size(), "wire", "wires") + " could not be tagged as control input in the MUT.");    
            if(settings->getVerbose() > 2){
                for(auto s : m_control_wires_not_found)
                    logger->log(service, this->m_name, ITEM + s); 
            }  
        }    

        // Refresh
        logger->log(service, this->m_name, Logger::reporting_number(m_num_of_annotated_refresh_wires, "input wire was", "input wires were") + " tagged as refresh inputs.");
        if(m_refresh_wires_not_found.size() != 0 && settings->getVerbose() > 1){
            logger->log(service, this->m_name, "WARNING: " + Logger::reporting_number(m_refresh_wires_not_found.size(), "wire", "wires") + " could not be tagged as refresh input in the MUT.");    
            if(settings->getVerbose() > 2){
                for(auto s : m_refresh_wires_not_found)
                    logger->log(service, this->m_name, ITEM + s);   
            }
        }

        // Error Flags
        logger->log(service, this->m_name, Logger::reporting_number(m_num_of_annotated_error_wires, "output wire was", "output wires were") + " tagged as error flags.");
        if(m_error_wires_not_found.size() != 0 && settings->getVerbose() > 1){
            logger->log(service, this->m_name, "WARNING: " + Logger::reporting_number(m_error_wires_not_found.size(), "wire", "wires") + " could not be tagged as error flag in the MUT.");    
            if(settings->getVerbose() > 2){
                for(auto s : m_error_wires_not_found)
                    logger->log(service, this->m_name, ITEM + s);   
            }
        }

        // PIID
        logger->log(service, this->m_name, Logger::reporting_number(m_num_of_annotated_piid_wires, "input wire was", "input wires were") + " tagged with PIIDs.");
        if(m_piid_wires_not_found.size() != 0 && settings->getVerbose() > 1){
            logger->log(service, this->m_name, "WARNING: " + Logger::reporting_number(m_piid_wires_not_found.size(), "wire", "wires") + " could not be identified in the MUT.");    
            if(settings->getVerbose() > 2){
                for(auto s : m_piid_wires_not_found)
                    logger->log(service, this->m_name, ITEM + s);   
            }
        }

        // Share Domain
        logger->log(service, this->m_name, Logger::reporting_number(m_num_of_annotated_share_domain_wires, "wire was", "wires were") + " tagged with a share domain.");
        if(m_share_domain_wires_not_found.size() != 0 && settings->getVerbose() > 1){
            logger->log(service, this->m_name, "WARNING: " + Logger::reporting_number(m_share_domain_wires_not_found.size(), "wire", "wires") + " could not be identified in the MUT.");    
            if(settings->getVerbose() > 2){
                for(auto s : m_share_domain_wires_not_found)
                    logger->log(service, this->m_name, ITEM + s);   
            }
        }        
        
        // Share Index
        logger->log(service, this->m_name, Logger::reporting_number(m_num_of_annotated_share_index_wires, "wire was", "wires were") + " tagged with a share index.");
        if(m_share_index_wires_not_found.size() != 0 && settings->getVerbose() > 1){
            logger->log(service, this->m_name, "WARNING: " + Logger::reporting_number(m_share_index_wires_not_found.size(), "wire", "wires") + " could not be identified in the MUT.");    
            if(settings->getVerbose() > 2){
                for(auto s : m_share_index_wires_not_found)
                    logger->log(service, this->m_name, ITEM + s); 
            }
        } 
    } else {
        logger->log(service, this->m_name, "Annotation parsing disabled.");
    }

    /* Print footer */
    logger->footer(service, this->m_name, SUCCESS);
}


/* 
 * =========================================================================================
 * Member functions
 * =========================================================================================
 */
void 
ConfigurationAnnotation::parse_and_set_types(State *state, std::map<std::string, const verica::Wire*> &name_to_wire){
    /* Parse json file */
    std::vector<std::string> keywords = {"clock", "control", "refresh", "error_flag"};
    std::map<std::string, std::vector<std::string>> wire_names;

    for(auto key : keywords){
        std::vector<std::string> names;
        for(auto elem : annotations.get_child("type." + key)) names.push_back(elem.second.get_value<std::string>());


        std::vector<std::string> single_wire_names;
        for(auto name : names){
            std::vector<std::string> temp = parse_wire(name);
            single_wire_names.insert(single_wire_names.end(), temp.begin(), temp.end());
        } 

        wire_names[key] = single_wire_names;
    }


    /* Clock */
    std::vector<const verica::Wire*> wire_ids_clock = create_list_of_vlog_wires(name_to_wire, wire_names.at("clock"), m_clock_wires_not_found);
    m_num_of_annotated_clock_wires += wire_ids_clock.size();

    for(auto w : wire_ids_clock){
        state->m_netlist_model->set_pin_type(w->source_pin()->uid(), verica::Clock);
    }


    /* Control */
    std::vector<const verica::Wire*> wire_ids_control = create_list_of_vlog_wires(name_to_wire, wire_names.at("control"), m_control_wires_not_found);
    m_num_of_annotated_control_wires += wire_ids_control.size();

    for(auto w : wire_ids_control){
        state->m_netlist_model->set_pin_type(w->source_pin()->uid(), verica::Control);
    }


    /* Refresh */
    std::vector<const verica::Wire*> wire_ids_refresh = create_list_of_vlog_wires(name_to_wire, wire_names.at("refresh"), m_refresh_wires_not_found);
    m_num_of_annotated_refresh_wires += wire_ids_refresh.size();

    for(auto w : wire_ids_refresh){
        state->m_netlist_model->set_pin_type(w->source_pin()->uid(), verica::Refresh);
    }


    /* Error Flags */
    std::vector<const verica::Wire*> wire_ids_error = create_list_of_vlog_wires(name_to_wire, wire_names.at("error_flag"), m_error_wires_not_found);
    m_num_of_annotated_error_wires += wire_ids_error.size();

    for(auto w : wire_ids_error){
        for(auto p : w->target_pins())
            state->m_netlist_model->set_pin_type(p->uid(), verica::ErrorFlag);
    }
}

void
ConfigurationAnnotation::parse_and_set_piids(State *state, std::map<std::string, const verica::Wire*> &name_to_wire){    
    /* Get for each variable the corresponding ports */
    std::map<int, std::vector<std::string>> inputs;
    for(auto piid : annotations.get_child("primary_input_identifier")){
        std::vector<std::string> temp;
        for(auto elem : piid.second){
            temp.push_back(elem.second.get_value<std::string>());
        }
        inputs[std::stoi(piid.first.data())] = temp;        
    }

    /* Set the PIIDs */ 
    for(auto piid_pair : inputs){
        for(auto s : piid_pair.second){   
            // parse string
            // std::vector<std::string> wire_ids = parse_wire(s);
            std::vector<std::string> wire_names = parse_wire(s);
            std::vector<const verica::Wire*> wire_ids = create_list_of_vlog_wires(name_to_wire, wire_names, m_piid_wires_not_found);
            m_num_of_annotated_piid_wires += wire_ids.size();

            for(auto w : wire_ids){
                state->m_netlist_model->set_primary_input_identifier(w->uid(), piid_pair.first);
            }    
        }
    }
}

void
ConfigurationAnnotation::parse_and_set_share_domain(State *state, std::map<std::string, const verica::Wire*> &name_to_wire, bool for_input){    
    /* Get for each variable the corresponding ports */
    std::map<int, std::vector<std::string>> inputs;
    std::string path = "share_domain";
    path += for_input ? ".input" : ".output";
    for(auto domain : annotations.get_child(path)){
        std::vector<std::string> temp;
        for(auto elem : domain.second){
            temp.push_back(elem.second.get_value<std::string>());
        }
        inputs[std::stoi(domain.first.data())] = temp;        
    }

    /* Set the share domains */ 
    int max_share = 0;
    for(auto domain_pair : inputs){
        for(auto s : domain_pair.second){   
            // parse string
            std::vector<std::string> wire_names = parse_wire(s);
            std::vector<const verica::Wire*> wire_ids = create_list_of_vlog_wires(name_to_wire, wire_names, m_share_domain_wires_not_found);
            m_num_of_annotated_share_domain_wires += wire_ids.size();

            for(auto w : wire_ids){
                if(for_input){
                    state->m_netlist_model->set_pin_share_domain(w->source_pin()->uid(), domain_pair.first);
                } else {
                    for(auto p : w->target_pins())
                        state->m_netlist_model->set_pin_share_domain(p->uid(), domain_pair.first);
                }
                max_share = domain_pair.first > max_share ? domain_pair.first : max_share;
            }      
        }
    }

    if(!for_input) state->m_num_output_shares = max_share+1;
}

void
ConfigurationAnnotation::parse_and_set_share_index(State *state, std::map<std::string, const verica::Wire*> &name_to_wire, bool for_input){    
    /* Get for each variable the corresponding ports */
    std::map<int, std::vector<std::string>> inputs;
    std::string path = "share_index";
    path += for_input ? ".input" : ".output";
    for(auto index : annotations.get_child(path)){
        std::vector<std::string> temp;
        for(auto elem : index.second){
            temp.push_back(elem.second.get_value<std::string>());
        }
        inputs[std::stoi(index.first.data())] = temp;        
    }

    /* Set the share domains */ 
    for(auto index_pair : inputs){
        for(auto s : index_pair.second){   
            // parse string
            std::vector<std::string> wire_names = parse_wire(s);
            std::vector<const verica::Wire*> wire_ids = create_list_of_vlog_wires(name_to_wire, wire_names, m_share_index_wires_not_found);
            m_num_of_annotated_share_index_wires += wire_ids.size();

            for(auto w : wire_ids){
                if(for_input){
                    state->m_netlist_model->set_pin_share_index(w->source_pin()->uid(), index_pair.first);
                } else {
                    for(auto p : w->target_pins())
                        state->m_netlist_model->set_pin_share_index(p->uid(), index_pair.first);
                }
            }        
        }
    }
}

std::vector<std::string>
ConfigurationAnnotation::parse_wire(std::string s){
    boost::optional<int> first = boost::none;
    boost::optional<int> second = boost::none;
    boost::optional<std::string> wire_name = boost::none;

    // Parser
    auto it = s.begin();
    if(!boost::spirit::qi::phrase_parse(it, s.end(),
        // begin grammar
        (
            as_string[(alpha | char_("_\\")) >> *(alnum | char_("_$/<>.^"))] [boost::phoenix::ref(wire_name)=boost::spirit::qi::_1] 
                >> (-(lit('[') >> int_[boost::phoenix::ref(first)=boost::spirit::qi::_1] >> (lit(':') >> int_[boost::phoenix::ref(second)=boost::spirit::qi::_1]) >> lit(']')) 
                | (lit('[') >> int_[boost::phoenix::ref(first)=boost::spirit::qi::_1] >> (lit(']'))) )
        ),
        // end grammar
        boost::spirit::qi::ascii::space) )
    {
        throw std::logic_error("[ANNOTATION] Parsing of wire name " + s + " failed!");
    }

    // create all wire names
    std::vector<std::string> wire_ids;

    if(!first.is_initialized() && !second.is_initialized()){
        // single wire without index
        wire_ids.push_back(wire_name.get());
    } else if(!second.is_initialized()){
        // single wire with index
        wire_ids.push_back(wire_name.get() + "[" + std::to_string(first.get()) + "]");
    } else {
        // wire range
        int start  = second.get() > first.get() ? first.get() : second.get();
        int end    = second.get() > first.get() ? second.get() : first.get();   
        for(int idx=start; idx<=end; ++idx) wire_ids.push_back(wire_name.get() + "[" + std::to_string(idx) + "]");
    }

    return wire_ids;
}

std::vector<const verica::Wire*> 
ConfigurationAnnotation::create_list_of_vlog_wires(std::map<std::string, const verica::Wire*> &name_to_wire, std::vector<std::string> &wires_to_annotate, std::vector<std::string> &not_found){
    std::vector<const verica::Wire*> list_of_vlog_wires;
    for(auto to_annotate : wires_to_annotate){
        bool found = false;
        if(to_annotate.back() == ']'){
            auto it = name_to_wire.find(to_annotate);
            if(it != name_to_wire.end()){
                list_of_vlog_wires.push_back(name_to_wire.at(to_annotate));
                found = true;
            }
        }
        else {
            std::string identifier = to_annotate + "[";
            for(auto idx_pair : name_to_wire){
                if(idx_pair.first.rfind(identifier, 0) == 0){
                    list_of_vlog_wires.push_back(idx_pair.second);   
                    found = true;                   
                }
            }
        }
        if(!found) not_found.push_back(to_annotate);
    }

    return list_of_vlog_wires;
}
