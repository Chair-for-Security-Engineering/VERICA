/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2022/484
 *           https://eprint.iacr.org/2022/1131
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

#include "composer/NetlistComposer.hpp"

#include "netlist/Netlist.hpp"
#include "netlist/Module.hpp"
#include "netlist/Pin.hpp"


#include <iostream>
#include <fstream>

#include <string>
#include <vector>

void
NetlistComposer::initialize(const Settings *settings, State *state){

} 

void
NetlistComposer::execute(const Settings *settings, State *state)
{    
    (void)settings; // We do not need a settings object in this function. However, it must be given as paramter due to an overwriting. 

return;
    std::string gate_types [] {"reg", "not", "and", "nand", "or", "nor", "xor", "xnor"};

    std::string target_file = "generated_netlist.txt";
    std::ofstream file;
    file.open(target_file);

    const std::vector<const verica::Wire*> sorted_wires = state->m_netlist_model->topmodule()->wires();
    
    std::vector<std::pair<const verica::Pin*, int>> pins_and_indices;

    int line = 0;
    int i = 0;

    //Write the input pins of our topmodule into our netlist file 
    for (auto p : state->m_netlist_model->topmodule()->input_pins()){
        if (p->port_type() == verica::Refresh){
            file << "ref " << i++ << " ";
        }else {
            file << "in " << i++ << " ";
            if (p->share_domain() != -1){
                file <<p->share_domain() << "_" << p->share_index() << " ";
            }
        }
        file << "# " << p->name() << "\n";
        pins_and_indices.push_back(std::make_pair(p, line++));
    }
    std::vector<const verica::Module*> queue;
    queue.insert(queue.end(), state->m_netlist_model->topmodule()->children().begin(), state->m_netlist_model->topmodule()->children().end());

    while (!queue.empty()){
        const verica::Module* m = queue[0];
        queue.erase(queue.begin());
        std::vector <std::pair<const verica::Pin*, int>> source_pins;

        //True if not all gates to which our gate's input pins have been handled. 
        bool skip_module = false;

        for (auto p : m->input_pins()){
            bool found_pin = false;
            const verica::Wire* input_wire = p->fan_in();
            if(input_wire->source_pin()){
                for (auto pair : pins_and_indices){
                    if (pair.first == input_wire->source_pin()){
                        source_pins.push_back(pair);
                        found_pin = true;
                        break;
                    }
                }
                if(!found_pin){
                    //We're not ready to handle this gate yet- the gate's input has not been written to our file yet. Push it to the back of our list and handle the next child module. 
                    queue.push_back(m);
                    skip_module = true;
                    break;
                }
            }
        }
        if (!skip_module){
            //Write our gate into the nl file
            file << gate_types[m->cell_template().m_identifier[0]] << " "; /* @todo: need to be fixed since m_identifier is a vector now... */
            for (auto pair : source_pins)
                file << pair.second << " ";
            file << "# " << m->name() << "\n";
            for (auto p : m->output_pins()){
                pins_and_indices.push_back(std::make_pair(p, i));
            }
            i++;
        }
    }

    //Write output pins to our nl file
    for (auto p : state->m_netlist_model->topmodule()->output_pins()){
        const verica::Wire* w = p->fan_in();
        for (auto pair : pins_and_indices){
            if (w->source_pin()){
                if (pair.first == w->source_pin()){
                    file << "out " << pair.second << " # " << p->name() << "\n";
                    break;
                }
            }
        }
    }

    file.close();
}

void
NetlistComposer::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
{
    (void)service; // We do not need a service object in this function. However, it must be given as paramter due to an overwriting. 
    (void)logger; // We do not need a logger object in this function. However, it must be given as paramter due to an overwriting. 
    (void)settings; // We do not need a settings object in this function. However, it must be given as paramter due to an overwriting. 
    (void)state; // We do not need a state object in this function. However, it must be given as paramter due to an overwriting. 
}