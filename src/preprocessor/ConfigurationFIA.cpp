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

#include "parser/Parser.hpp"
#include "preprocessor/ConfigurationFIA.hpp"

void
ConfigurationFIA::initialize(const Settings *settings, State *state){

}  

void
ConfigurationFIA::execute(const Settings *settings, State *state) {
    if(settings->getFaultInjection() || settings->getCombined()){
        // Determine selected variate
        fault_determine_variate(settings, state);

        // Read fault mapping
        fault_get_mapping(settings->getFaultMappingPath(), state->m_cell_library, state->m_faultMap);

        /* Ensure all pins are equipped with an gate identifier */
        for (auto p : state->m_netlist_model->module_under_test()->input_pins()){
            state->m_netlist_model->set_pin_gate_identifier(p->uid(), 10);
        }

        // Determine fault locations
        fault_get_locations(settings->getFaultLocation(), state->m_netlist_model, state->m_faultLocations);

        // Determine propagation paths
        fault_determine_propagation_paths(state->m_netlist_model);

        // If fault composability checks are enabled (e.g., FNI, FSNI or some combined checks), input wires need to be added to the valid fault locations
        if(settings->getFaultComposability()){
            for(auto p : state->m_netlist_model->module_under_test()->input_pins()){
                if(!p->fan_out()->fia_ignore()) state->m_faultLocations.push_back(p->fan_out());
            }
        }

        // Apply complexity reduction
        fault_apply_complexity_reduction(settings, state->m_netlist_model, state->m_faultLocations, state->m_faultLocationsReduced, state->m_faultMap);

        // Fill BDDs for fault injection (faulty models)
        // set gate identifier to wires to allow re-evaluations
        for(int t=0; t<settings->getCores(); ++t){
            for(auto w : state->m_netlist_model->module_under_test()->wires()){
                state->m_netlist_model->set_bdd_faulty_function(w->uid(), w->golden_functions(t), t);
                state->m_netlist_model->set_faulty_gate_identifier(w->uid(), w->source_pin()->gate_identifier(), t);
            }
            state->m_effective.push_back(0);
            state->m_ineffective.push_back(0);
            state->m_detected.push_back(0);
            state->m_scenarios.push_back(0);

            state->m_na_security.push_back(0);
            state->m_sna_security.push_back(0);
            state->m_fini_security.push_back(0);
            state->m_cini_security.push_back(0);

            state->m_current_number_of_input_faults.push_back(0);
        }   

        state->m_leaking_fault_injections.resize(settings->getCores());
        state->m_current_fault_injections.resize(settings->getCores());
        state->m_unshared_output_combinations.resize(settings->getCores());

        /* Apply strategy specific configurations */
        // Determine error flags for SIFA, SFA, and Detection
        if(settings->getFaultAnalysisStrategy() == "sifa" || settings->getFaultAnalysisStrategy() == "sfa" || settings->getFaultAnalysisStrategy() == "detection"){
            for(auto w : state->m_netlist_model->module_under_test()->wires()){
                for(auto p : w->target_pins()){
                    if(p->port_type() == verica::ErrorFlag){
                        if(std::find(state->m_error_flags.begin(), state->m_error_flags.end(), w) == state->m_error_flags.end())
                            state->m_error_flags.push_back(w);
                    }
                }
            }
        }

        for(auto p : state->m_netlist_model->module_under_test()->output_pins()){
            if(std::find(state->m_data_output_wires.begin(), state->m_data_output_wires.end(), p->fan_in()) == state->m_data_output_wires.end()){
                if(std::find(state->m_error_flags.begin(), state->m_error_flags.end(), p->fan_in()) == state->m_error_flags.end())
                            state->m_data_output_wires.push_back(p->fan_in());
            }
        }
    }
}

void
ConfigurationFIA::finalize(const Settings *settings, State *state) {
}

void
ConfigurationFIA::report(std::string service, const Logger *logger, const Settings *settings, State *state) const {    
    logger->header("Configure FIA");

    if(settings->getFaultInjection() || settings->getCombined()){
        logger->log(service, this->m_name, "Identified " + std::to_string(state->m_faultLocations.size()) + " gates as target gates for fault injection.");
        if(settings->getReduceComplexity())
            logger->log(this->m_name, "Applied complexity reduction! Reduced fault locations from " + std::to_string(state->m_faultLocations.size()) + " to " + std::to_string(state->m_faultLocationsReduced.size()) + ".");
        
        logger->log(service, this->m_name, "Applied parameters:");
        logger->log(service, this->m_name, "   number:          " + std::to_string(settings->getNumberOfFaults()));
        logger->log(service, this->m_name, "   variate:         " + std::to_string(settings->getFaultVariate()));
        logger->log(service, this->m_name, "   fault mapping:   " + settings->getFaultMappingPath()); 
        logger->log(service, this->m_name, "   location:        " + settings->getFaultLocation());
        logger->log(service, this->m_name, "   strategy:        " + settings->getFaultAnalysisStrategy());
        if(settings->getFaultLogicLevelErrorFlag()){    
            logger->log(service, this->m_name, "   logic-level:     high");
        } else {
            logger->log(service, this->m_name, "   logic-level:     low");
        }
        if(settings->getFaultFNI())
            logger->log(service, this->m_name, "   FNI:             true");
        else
            logger->log(service, this->m_name, "   FNI:             false");
        if(settings->getFaultFSNI())
            logger->log(service, this->m_name, "   FSNI:            true");
        else
            logger->log(service, this->m_name, "   FSNI:            false");
        if(settings->getFaultFINI())
            logger->log(service, this->m_name, "   FINI:            true");
        else
            logger->log(service, this->m_name, "   FINI:            false");
        if(settings->getFaultAnalysisStrategy() == "sifa" || settings->getFaultAnalysisStrategy() == "sfa"){
            if(state->m_error_flags.empty()) {
                logger->log(service, this->m_name, "WARNING: Countermeasures for the selected strategy (" + settings->getFaultAnalysisStrategy() + ") usually implements error flags which were were not selected!");
                logger->log(service, this->m_name, "         The analyzer will create internal error flags by comparing the faulty model to the golden model.");
            }
        }

        if(settings->getFaultAnalysisStrategy() == "detection"){
            if(state->m_error_flags.empty()) {
                throw std::logic_error("[PREPROCESSOR-FIA] Please define error flags for a detection-based countermeasure!");
            }
        }
        
        if((settings->getFaultAnalysisStrategy() == "sifa" || settings->getFaultAnalysisStrategy() == "sfa") && (settings->getFaultFNI() == true || settings->getFaultFSNI() == true)){
            logger->log(service, this->m_name, "WARNING: CheckingFNI and FSNI notions is not supported for SFA and SIFA!");
        }
    }
    else{
        logger->log(service, this->m_name, "FIA preprocessor is disabled!");
    }

    /* Print footer */
    logger->footer(service, this->m_name, SUCCESS);
}



void ConfigurationFIA::fault_determine_variate(const Settings *settings, State *state){
    int variate = settings->getFaultVariate();
    auto stages = state->m_netlist_model->logic_stages();
    if(variate > stages){   // check that variate is not larger than the total number of available logic stages
        throw std::logic_error("[PREPROCESS-FAULT] Selected variate is greater than number of stages! Please select a variate <= " + std::to_string(stages));
    } 
}

int ConfigurationFIA::fault_get_mapping(const std::string &file, CellLibrary* cellLibrary, std::map<int, std::vector<verica::fault::Fault>> &faultMap){
    // Variable declarations
    std::vector<std::string> tokens;
    std::string line, token;

    // Build map from gate_type to gate_identifier
    std::map<std::string, std::vector<int>> type_to_identifier;
    for(auto c : cellLibrary->gate_types()) type_to_identifier[c.second->m_gate_type] = c.second->m_identifier;

    // Open circuit description text file.
    std::ifstream description(file);

    // Parse description line by line
    while(std::getline(description, line)){
        // Split line in tokens
        tokens = Parser::split(line, ' ');

        std::vector<int> list_of_identifier;

        if(tokens[0].at(0) != '#'){
            if(type_to_identifier.find(tokens[0]) != type_to_identifier.end()){
                list_of_identifier = type_to_identifier[tokens[0]];
            } else {
                throw std::logic_error("[PREPROCESS-FAULT] Fault mapping for " + tokens[0] + " is not possible since it is not defined in the CellLibrary!");
            }
        }

        // Fill fault map
        if(tokens[0].at(0) != '#'){
            for(auto identifier : list_of_identifier){
                for(unsigned int it=1; it < tokens.size(); it++){
                    if(tokens[it] == "and"){
                        faultMap[identifier].push_back(verica::fault::Fault::AND);
                    }
                    else if(tokens[it] == "nand"){
                        faultMap[identifier].push_back(verica::fault::Fault::NAND);
                    }
                    else if(tokens[it] == "or"){
                        faultMap[identifier].push_back(verica::fault::Fault::OR);
                    }
                    else if(tokens[it] == "nor"){
                        faultMap[identifier].push_back(verica::fault::Fault::NOR);
                    }
                    else if(tokens[it] == "xor"){
                        faultMap[identifier].push_back(verica::fault::Fault::XOR);
                    }
                    else if(tokens[it] == "xnor"){
                        faultMap[identifier].push_back(verica::fault::Fault::XNOR);
                    }
                    else if(tokens[it] == "reset"){
                        faultMap[identifier].push_back(verica::fault::Fault::RESET);
                    }
                    else if(tokens[it] == "set"){
                        faultMap[identifier].push_back(verica::fault::Fault::SET);
                    }
                    else if(tokens[it] == "buf"){
                        faultMap[identifier].push_back(verica::fault::Fault::A);
                    }
                    else if(tokens[it] == "not"){
                        faultMap[identifier].push_back(verica::fault::Fault::NOTA);
                    } else {                    
                        throw std::logic_error("[PREPROCESS-FAULT] Fault type for fault mapping is not supported! " + tokens[0] + " " + tokens[it]);
                    }
                }
            }
        }     
    }

    // Close circuit description text file.
    description.close();

    return 0;
}


int ConfigurationFIA::fault_get_locations(const std::string location, verica::Netlist* model, std::vector<const verica::Wire*> &faultLocations) {    
    /* Collect all sequential gates that should not be ignored */
    if(location == "s" || location == "cs"){
        for(auto w : model->module_under_test()->wires()){
            if(w->source_pin()->parent_module()->is_sequential()){
                if(!w->fia_ignore()) faultLocations.push_back(w);
            }
        }
    }

    /* Collect all combinational gates that should not be ignored */
    if(location == "c" || location == "cs"){
        for(auto w : model->module_under_test()->wires()){
            if(!w->source_pin()->parent_module()->is_sequential()){
                if(std::find(model->module_under_test()->input_pins().begin(), model->module_under_test()->input_pins().end(), w->source_pin()) == model->module_under_test()->input_pins().end()){
                    if(!w->fia_ignore()) faultLocations.push_back(w);
                }
            }
        }
    }

    return 0;
}


void ConfigurationFIA::fault_determine_propagation_paths(verica::Netlist* model){
    std::vector<const verica::Wire*> wires = model->module_under_test()->wires();
    const verica::Module* mut = model->module_under_test();
    // Loop over all wires of the Module Under Test (MUT)
    for(std::vector<const verica::Wire*>::reverse_iterator w = wires.rbegin(); w != wires.rend(); ++w){
        // check all conected pins
        for(auto p : (*w)->target_pins()){
            // ensure that pin is not an output pin of the MUT
            if(std::find(mut->output_pins().begin(), mut->output_pins().end(), p) == mut->output_pins().end()){
                if(p->fan_out() != nullptr){
                    for(auto prop : p->fan_out()->propagation_path()){
                        if(!is_in((*w)->propagation_path(), prop)){ // didn't work with std::find()...
                            model->push_back_to_propagation_path((*w)->uid(), prop);
                        }
                    }
                    if(!is_in((*w)->propagation_path(), p->fan_out())){
                        model->push_back_to_propagation_path((*w)->uid(), p->fan_out());
                    }
                } else {
                    // Consider all output pins of the current sub-module
                    for(auto out_pin : p->parent_module()->output_pins()){
                        for(auto prop : out_pin->fan_out()->propagation_path()){
                            if(!is_in((*w)->propagation_path(), prop)){ // didn't work with std::find()...
                                model->push_back_to_propagation_path((*w)->uid(), prop);
                            }
                        }
                        if(!is_in((*w)->propagation_path(), out_pin->fan_out())){
                            model->push_back_to_propagation_path((*w)->uid(), out_pin->fan_out());
                        }
                    }
                }
            }
        }
    }
}

void ConfigurationFIA::fault_apply_complexity_reduction(const Settings* settings, verica::Netlist* model, std::vector<const verica::Wire*> &faultLocations, std::vector<const verica::Wire*> &faultLocationsReduced, std::map<int, std::vector<verica::fault::Fault>> &faultMap){
    // Do not apply complexity reduction for combined analysis
    if(settings->getReduceComplexity() && (settings->getSideChannel() || settings->getCombined())){
        throw std::logic_error("[PREPROCESS-FAULT] Complexity reduction cannot be applied in a combinded analysis! Please disable complexity reduction!");
    }

    // Remove all types of wires from faultLocations that are not defined by the fault mapping
    for(auto it=faultLocations.begin(); it != faultLocations.end(); ){
        if(faultMap.find((*it)->source_pin()->gate_identifier()) == faultMap.end()){
            faultLocations.erase(it);
        } else {
            ++it;
        }
    }

    // Apply reduction if enabled
    if(settings->getReduceComplexity()){
        fault_get_reduced_locations_conservative(model, faultLocations, faultLocationsReduced);
    } else {
        faultLocationsReduced = faultLocations;
    }
}

void ConfigurationFIA::fault_get_reduced_locations_conservative(verica::Netlist* model, std::vector<const verica::Wire*> &faultLocations, std::vector<const verica::Wire*> &faultLocationsReduced){
    // First, add all registers to reduced list of fault locations
    // and add all synchronization points
    std::vector<const verica::Pin*> syncPoints;
    for(auto w : model->module_under_test()->wires()){
        if(w->source_pin()->parent_module()->is_sequential()){
            // only push w to reduced locations if it is a valid gate and included in faultLocations
            if(std::find(faultLocations.begin(), faultLocations.end(), w) != faultLocations.end()) faultLocationsReduced.push_back(w);
            for(auto p : w->source_pin()->parent_module()->input_pins()) {
                syncPoints.push_back(p);
            }
        }
    }

    // push output pins of the MUT to syncPoints
    for(auto p : model->module_under_test()->output_pins()){
        if(std::find(syncPoints.begin(), syncPoints.end(), p) == syncPoints.end())
            syncPoints.push_back(p);
    }

    // Second, search backwards from all syncPoints (only in current logic stage)
    for(auto sync : syncPoints){
        if(std::find(faultLocations.begin(), faultLocations.end(), sync->fan_in()) != faultLocations.end()){
            if(std::find(faultLocationsReduced.begin(), faultLocationsReduced.end(), sync->fan_in()) == faultLocationsReduced.end()) faultLocationsReduced.push_back(sync->fan_in());
        } 

        std::vector<const verica::Pin*> searchList;
        searchList.push_back(sync->fan_in()->source_pin());
        while(!searchList.empty()){
            const verica::Pin* elem = searchList.front();
            searchList.erase(searchList.begin());

            // find all input wires and add the source pins to searchList
            for(auto p : elem->parent_module()->input_pins()){
                if(!p->parent_module()->is_sequential()){
                    if(std::find(model->module_under_test()->input_pins().begin(), model->module_under_test()->input_pins().end(),  p) == model->module_under_test()->input_pins().end() ){
                        searchList.push_back(p->fan_in()->source_pin());
                    }
                }
            }

            // add spreading gates to faultLocationsReduced
            if(elem->fan_out()->target_pins().size() > 1){
                if(std::find(faultLocations.begin(), faultLocations.end(), elem->fan_out()) != faultLocations.end()){
                    if(std::find(faultLocationsReduced.begin(), faultLocationsReduced.end(), elem->fan_out()) == faultLocationsReduced.end()){
                        faultLocationsReduced.push_back(elem->fan_out());
                    }
                }
            }
        }
    }
}
