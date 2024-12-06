/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Jan Richter-Brockmann (jan.richter-brockmann@rub.de)
 * DOCUMENT: --
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2023, Jan Richter-Brockmann
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

#include "composer/ConfigurationIronMask.hpp"
#include "util.hpp"

void
ConfigurationIronMask::initialize(const Settings *settings, State *state){
    (void)settings; // We do not need a settings object in this function. However, it must be given as parameter due to an overwriting.
    (void)state; // We do not need a state object in this function. However, it must be given as parameter due to an overwriting.
}  

void
ConfigurationIronMask::execute(const Settings *settings, State *state) {
    /* Determine working thread */
    int thread_num = omp_get_thread_num();

    /* Module Under Test */
    const verica::Module *mut = state->m_netlist_model->module_under_test();

    /* Open sage file */
    std::ofstream sage_file(settings->getComposerPath() + this->m_name + std::to_string(thread_num) + "-n" + std::to_string(m_export_cnt) + ".sage", std::ios_base::out);
    m_export_cnt++;

    /* Representation */
    std::string representation = "";

    /* Add order */
    int max_order = (settings->getSideChannelOrder() > 0) ? settings->getSideChannelOrder() : state->m_min_shared_inputs.size() - 1;
    representation += "#ORDER " + std::to_string(max_order) + "\n";

    /* Add number of shares */
    representation += "#SHARES " + std::to_string(state->m_min_shared_inputs.size()) + "\n";

    /* Add number of duplications */
    std::set<int> fault_domains;
    for(auto i : state->m_netlist_model->module_under_test()->input_pins()){
        if(i->fault_domain() != -1) fault_domains.insert(i->fault_domain());
    }
    representation += "#DUPLICATIONS " + std::to_string(fault_domains.size()) + "\n";

    /* Pre-computations */
    int num_input_secrets = state->m_shared_inputs.size();
    int num_output_secrets = state->m_shared_outputs.size();
    std::map<int, std::string> intermediate_values;
    if((num_input_secrets + num_output_secrets) > 26) throw std::logic_error("[COMPOSER-IRON-MASK] Too many I/Os!");

    /* Add inputs */
    representation += "#IN ";
    for(int i=0; i<num_input_secrets; i++) {
        char val = char(97+i);
        representation += std::string(&val, 1) + " ";
    }
    representation += "\n";

    /* Add random inputs */
    representation += "#RANDOMS ";
    int cnt = 0;
    for(auto p : mut->input_pins()) {
        if(p->port_type() == verica::Refresh) {
            switch (p->fan_out()->faulty_gate_identifier(thread_num)){
                case 13:
                    intermediate_values[p->fan_out()->uid()] = "r" + std::to_string(cnt);
                    break;                    
                case 8:
                    intermediate_values[p->fan_out()->uid()] = "1";
                    break;
                case 9:
                    intermediate_values[p->fan_out()->uid()] = "0";
                    break;                         
                default:
                    throw std::logic_error("[COMPOSER-IRON-MASK] Gate identifier " + std::to_string(p->fan_out()->faulty_gate_identifier(thread_num)) + " for random input is currently not supported!");
            }
            representation += "r" + std::to_string(cnt) + " ";
            cnt++;
        }
    }
    representation += "\n";

    /* Add outputs */
    representation += "#OUT ";
    for(int i=num_input_secrets; i<(num_input_secrets+num_output_secrets); i++) {
        char val = char(97+i);
        representation += std::string(&val, 1) + " ";
    }
    representation += "\n\n";


    /* Add Boolean functions */
    std::vector<int> gates;
    extract_gates(state, gates);

    // add shares to intermediate values
    for(auto inputs : state->m_netlist_model->module_under_test()->input_pins()){
        if(inputs->port_type() == verica::None){
            const verica::Wire* w = inputs->fan_out();
            char val = char(97+inputs->share_index());
            switch (w->faulty_gate_identifier(thread_num)){
                case 10:
                    intermediate_values[w->uid()] = std::string(&val, 1) + std::to_string(inputs->share_domain()) + "_" + std::to_string(inputs->fault_domain());
                    break;                    
                case 8:
                    intermediate_values[w->uid()] = "1";
                    break;
                case 9:
                    intermediate_values[w->uid()] = "0";
                    break;                         
                default:
                    throw std::logic_error("[COMPOSER-IRON-MASK] Gate identifier " + std::to_string(w->faulty_gate_identifier(thread_num)) + " for primary input is currently not supported!");
            }
        }
    }

    // add output wires of gates to intermediate values
    int temp_cnt = 0;
    std::string prefix_int = "temp";
    for(auto g : gates){
        for(auto p : state->m_netlist_model->get_module(g)->output_pins()){
            intermediate_values[p->fan_out()->uid()] = prefix_int + std::to_string(temp_cnt);
            temp_cnt++;
        }
    }

    // Replace temporal wires names with (shared) outputs
    for(auto outputs : state->m_netlist_model->module_under_test()->output_pins()){
        if(outputs->port_type() == verica::None){
            char val = char(97+num_input_secrets+outputs->share_index());
            const verica::Pin* last_feeding_pin = get_next_pin(outputs->fan_in(), mut);
            intermediate_values[last_feeding_pin->fan_out()->uid()] = std::string(&val, 1) + std::to_string(outputs->share_domain()) + "_" + std::to_string(outputs->fault_domain());
        }
    }

    // Replace temporal wires names with error flags
    int flag_cnt = 0;
    for(auto outputs : state->m_netlist_model->module_under_test()->output_pins()){
        if(outputs->port_type() == verica::ErrorFlag){
            const verica::Pin* last_feeding_pin = get_next_pin(outputs->fan_in(), mut);
            while(last_feeding_pin->parent_module()->is_sequential()) 
                last_feeding_pin = get_next_pin(last_feeding_pin->parent_module()->input_pins()[0]->fan_in(), mut);
            intermediate_values[last_feeding_pin->fan_out()->uid()] = "flag" + std::to_string(flag_cnt);
            flag_cnt++;
        }
    }

    // Add functions to representation
    for(auto g : gates){
        for(auto p : state->m_netlist_model->get_module(g)->output_pins()){
            representation += intermediate_values[p->fan_out()->uid()] + " = ";
            std::vector<std::string> operands;
            for(auto input_pin : state->m_netlist_model->get_module(g)->input_pins()){
                const verica::Pin* feeding_pin = get_next_pin(input_pin->fan_in(), mut);
                operands.push_back(intermediate_values[feeding_pin->fan_out()->uid()]);
            }
            switch (p->fan_out()->faulty_gate_identifier(thread_num)){
                case 0:
                    representation += "![ " + operands[0] + " ]";
                    break;
                case 1:
                    representation += "~" + operands[0];
                    break;
                case 2:
                    representation += operands[0] + " * " + operands[1];
                    break;
                case 6:
                    representation += operands[0] + " + " + operands[1];
                    break;
                case 8:
                    representation += "1";
                    break;
                case 9:
                    representation += "0";
                    break;
                case 11:
                    representation += operands[0];
                    break;                                   
                default:
                    throw std::logic_error("[COMPOSER-IRON-MASK] Gate identifier " + std::to_string(p->fan_out()->faulty_gate_identifier(thread_num)) + " is currently not supported!");
            }

            std::string label = "majority";
            if(state->m_netlist_model->get_module(g)->name().find(label) != -1){
                std::vector<const verica::Pin*> input_pins_next_gates;
                std::vector<const verica::Pin*> to_visit;

                // Loop over all output pins of the current gate/module 
                for(auto output_pins : state->m_netlist_model->get_module(g)->output_pins()){
                    to_visit.push_back(output_pins);

                    // Search for connection to next input pins
                    while(!to_visit.empty()){
                        // Remove first element from to-visit-list
                        const verica::Pin* current_pin = to_visit[0];
                        to_visit.erase(to_visit.begin());

                        // Consider all pins that are connected via the fan out
                        for(auto p : current_pin->fan_out()->target_pins()){
                            if(p->fan_out() == nullptr){                // Found pin that belongs to a gate
                                input_pins_next_gates.push_back(p);
                            } else {                                    // Found pin that belongs to a module (NOT a gate)
                                to_visit.push_back(p);
                            }
                        }
                    }
                }

                bool is_correction = true;
                for(auto p : input_pins_next_gates){
                    if(p->parent_module()->name().find(label) == -1) is_correction &= false;
                }

                if(is_correction){
                    representation += " #correction";
                } else {
                    representation += " #correction_out";
                }
            }
            representation += "\n";
        }
    }



    /* Pass representation to sage file */
    sage_file << representation;

    /* Close log file */
    sage_file.close();
}


void
ConfigurationIronMask::report(std::string service, const Logger *logger, const Settings *settings, State *state) const {
    /* Print header */
    logger->header("COMPOSER");

    if(m_export_cnt == 1){
        logger->log(service, this->m_name, "Exported " + std::to_string(m_export_cnt) + " circuit.");
    } else {
        logger->log(service, this->m_name, "Exported " + std::to_string(m_export_cnt) + " different circuits.");
    }

    /* Print footer */
    logger->footer(service, this->m_name, SUCCESS);

}

void
ConfigurationIronMask::finalize(const Settings *settings, State *state) {
    (void)settings; // We do not need a settings object in this function. However, it must be given as parameter due to an overwriting.
    (void)state;    // We do not need a state object in this function. However, it must be given as parameter due to an overwriting.
}

void
ConfigurationIronMask::insert(const ConfigurationIronMask* configuration) {
   m_export_cnt += configuration->exports();
}

void
ConfigurationIronMask::extract_gates(State *state, std::vector<int> &gates){
    for(auto w : state->m_netlist_model->module_under_test()->wires()){
        if(w->source_pin()->parent_module()->gate()){
            gates.push_back(w->source_pin()->parent_module()->uid());
        }
    }
}

const verica::Pin* 
ConfigurationIronMask::get_next_pin(const verica::Wire* w, const verica::Module* mut){
    const verica::Pin* next_pin = w->source_pin();
    while (!next_pin->parent_module()->gate() && std::find(mut->input_pins().begin(), mut->input_pins().end(), next_pin) == mut->input_pins().end()){
        next_pin = next_pin->fan_in()->source_pin();
    }

    return next_pin;
}