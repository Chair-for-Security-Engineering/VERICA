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

#include "preprocessor/ConfigurationModelPostprocessing.hpp"

void
ConfigurationModelPostprocessing::initialize(const Settings *settings, State *state){

}  

void
ConfigurationModelPostprocessing::execute(const Settings *settings, State *state) {
    (void)settings; // We do not need a settings object in this function. However, it must be given as paramter due to an overwriting. 

    /* Remove clock tree */
    m_num_of_removed_clock_wires = state->m_netlist_model->wires().size();
    state->m_netlist_model->remove_type_from_netlist(verica::Clock);

    m_num_of_removed_clock_wires = m_num_of_removed_clock_wires - state->m_netlist_model->wires().size();

    /* Remove control signal from netlist */
    m_num_of_removed_control_wires = state->m_netlist_model->wires().size();
    state->m_netlist_model->remove_type_from_netlist(verica::Control);

    m_num_of_removed_control_wires = m_num_of_removed_control_wires - state->m_netlist_model->wires().size();

    /* Remove unconnected pins */
    m_num_of_removed_pins = state->m_netlist_model->remove_unconnected_pins();

    /* Remove unconnected wires */
    m_num_of_removed_wires = state->m_netlist_model->remove_unconnected_wires(); 

    /* Set primary input identifier */
    set_primary_input_identifier(state->m_netlist_model);

    /* Sort model */
    state->m_netlist_model->sort_wires();
}

void
ConfigurationModelPostprocessing::report(std::string service, const Logger *logger, const Settings *settings, State *state) const {   
    (void)settings; // We do not need a settings object in this function. However, it must be given as paramter due to an overwriting. 
    (void)state; // We do not need a state object in this function. However, it must be given as paramter due to an overwriting.  

    /* Print header */
    logger->header("MODEL POSTPROCESSING");

    /* Print results */
    if(m_num_of_removed_clock_wires != 0){
        logger->log(service, this->m_name, "Removed clock tree from netlist (" + Logger::reporting_number(m_num_of_removed_clock_wires, "wire was", "wires were") + " removed).");
    } else {
        logger->log(service, this->m_name, "No clock wires were found.");
    }

    if(m_num_of_removed_control_wires != 0){
        logger->log(service, this->m_name, "Removed control signals from netlist (" + Logger::reporting_number(m_num_of_removed_control_wires, "wire was", "wires were") + " removed).");
    } else {
        logger->log(service, this->m_name, "No control signals were found.");
    }

    logger->log(service, this->m_name, "Removed " + std::to_string(m_num_of_removed_pins) + " unconnected pins.");
    logger->log(service, this->m_name, "Removed " + std::to_string(m_num_of_removed_wires) + " unconnected wires.");

    /* Print footer */
    logger->footer(service, this->m_name, SUCCESS);
  
}


/* 
 * =========================================================================================
 * Member functions
 * =========================================================================================
 */
void 
ConfigurationModelPostprocessing::set_primary_input_identifier(verica::Netlist* model){
    /* Current module under test */
    const verica::Module* mut = model->module_under_test();

    /* Filter out all wires without primary input identifier */
    std::vector<int> wires_without_identifier;
    int max_identifier = -1;
    for(auto p : mut->input_pins()){
        if(p->fan_out()->primary_input_identifier() == -1){
            // push wire uid to vector
            wires_without_identifier.push_back(p->fan_out()->uid());
        } else {
            // if a wire already has a primary input identifier, determine the largest one
            if(p->fan_out()->primary_input_identifier() > max_identifier) max_identifier = p->fan_out()->primary_input_identifier();
        }
    }

    /* Set primary input identifier */
    int identifier = max_identifier+1;  // prevent duplications 
    for(auto uid : wires_without_identifier){
        model->set_primary_input_identifier(uid, identifier);
        identifier++;
    }
}

