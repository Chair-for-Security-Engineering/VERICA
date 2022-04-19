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

#include "netlist/Module.hpp"

#include "util.hpp"

/* Constructor(s) */
verica::Module::Module(std::string name)
{
    this->m_name    = name;
    this->m_parent  = nullptr;
}

void verica::Module::sort_wires(){
    std::vector<const verica::Wire*> wires;
    std::vector<const verica::Pin*> queue;
    std::vector<const verica::Pin*> visited;
    
    // Build a map with modules and corresponding input pins
    std::map<const verica::Module*, std::vector<const verica::Pin*>> pin_mapping;
    for(auto w : m_wires){
        for(auto p : w->target_pins()){
            if(std::find( pin_mapping[p->parent_module()].begin(), pin_mapping[p->parent_module()].end(), p ) == pin_mapping[p->parent_module()].end())
                if(p->parent_module()->gate()) pin_mapping[p->parent_module()].push_back(p);
        }
    }

    /* Push input pins into queue */
    queue.insert(queue.end(), this->m_input_pins.begin(), this->m_input_pins.end());

    /* Check queue until it is empty */
    while (!queue.empty()){
        /* Remove first pin from queue */ 
        const verica::Pin* current_pin = queue[0];
        queue.erase(queue.begin());

        /* check if current_pin is connected to a wire */
        if(current_pin->fan_out() != nullptr){
            /* All information for the wire is available - can be added to vector */
            if(std::find(wires.begin(), wires.end(), current_pin->fan_out()) == wires.end()){  
                if(std::find(m_wires.begin(), m_wires.end(), current_pin->fan_out()) != m_wires.end())
                    wires.push_back(current_pin->fan_out()); 
            }

            /* Loop over all connected pins of the current wire */
            for(auto p : current_pin->fan_out()->target_pins()){
                if(p->fan_out() != nullptr){ // fan out of the pin is connected to another wire
                    visited.push_back(p);
                    queue.push_back(p);
                } else { // pin is a input pin of a gate 
                    /* The information for the corresponding pins are now available and the pins can be deleted from the mapping */
                    std::vector<const verica::Pin*>::iterator it;
                    it = std::find(pin_mapping[p->parent_module()].begin(), pin_mapping[p->parent_module()].end(), p);
                    if(it != pin_mapping[p->parent_module()].end()){
                        pin_mapping[p->parent_module()].erase(it);
                    }

                    /* In case of an empty mapping, the output pins of the corresponding module can be added to the queue */
                    if(pin_mapping[p->parent_module()].empty()){
                        for(auto p_out : p->parent_module()->output_pins()){
                            if(std::find(visited.begin(), visited.end(), p_out) == visited.end()){
                                visited.push_back(p_out);
                                queue.push_back(p_out);
                            }
                        }
                    }
                }
            }
        }
    }

    this->m_wires = wires;
}

void verica::Module::remove_pin(int uid){
    for (unsigned int i = 0; i < this->m_input_pins.size(); i++){
        if (m_input_pins[i]->uid() == uid){
            this->m_input_pins.erase(m_input_pins.begin() + i);            
            return;
        }
    }
    for (unsigned int i = 0; i < this->m_output_pins.size(); i++){
        if (m_output_pins[i]->uid() == uid){
            this->m_output_pins.erase(m_output_pins.begin() + i);
            return;
        }
    }
}

void verica::Module::remove_wire(int uid){
    for (unsigned int i = 0; i < this->m_wires.size(); i++){
        if (m_wires[i]->uid() == uid){
            this->m_wires.erase(m_wires.begin() + i);
            return;
        }
    }
}