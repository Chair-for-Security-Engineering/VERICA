/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2020/634.pdf
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

#include "analyzer/ConfigurationComposability.hpp"

ConfigurationComposability::ConfigurationComposability(std::string name, const Composability type) : Configuration(name)
{
    this->m_type = type;
}

void
ConfigurationComposability::initialize(const Settings *settings, State *state) {
    /* Get maximum order of security */
    this->m_max_order = (settings->getSideChannelOrder() > 0) ? settings->getSideChannelOrder() : state->m_min_shared_inputs.size() - 1;
    //this->m_max_order -= (m_type == CNI || m_type == CSNI) ? state->m_current_number_of_injected_faults : 0;
    if(m_type == CNI || m_type == CSNI){
        if(this->m_max_order > state->m_current_number_of_injected_faults) 
            this->m_max_order -= state->m_current_number_of_injected_faults;
        else
            this->m_max_order = 0;
    }

    
    /* Clear failing probes (from previous runs) */
    this->m_failing_probes.clear();
}

void
ConfigurationComposability::execute(const Settings *settings, State *state) {
    /* Current thread number */
    int threadNum = omp_get_thread_num();

    /* Trivial cases: No probes, unshared input, or sharing smaller than target order */
    if (this->m_max_order == 0 || state->m_min_shared_inputs.size() < 2 || state->m_min_shared_inputs.size() <= this->m_max_order){
        this->m_independent = false;
        this->m_failing_probes.push_back(state->m_min_shared_inputs);
    } else {
        /* Current combination of probes */
        std::vector<const verica::Wire*> extended_probes;
        
        /* Count output probes (SNI) */
        int num_output_probes = 0;
        for (auto current : this->m_current_probes)
        {
            bool is_output_pin = false;
            for (auto target : current->target_pins()) 
                is_output_pin |= (target->parent_module() == state->m_netlist_model->module_under_test());
            num_output_probes += is_output_pin;
        }

        /* Define share combination threshold (NI/SNI/PINI) */
        int input_faults = ((this->m_type == CNI || this->m_type == CSNI) ? (state->m_current_number_of_injected_faults - state->m_current_number_of_input_faults[threadNum]) : 0);
        int threshold = (this->m_current_probes.size() + input_faults) - ((this->m_type == SNI || this->m_type == CSNI || this->m_type == ICSNI) ? num_output_probes : 0);


        /* Construct glitch-extended probes */
        if (settings->getSideChannelModelGlitches()) 
        {
            // collect all syncronization points
            std::set<const verica::Wire*> registers;
            for(auto probe : this->m_current_probes)
                registers.insert(probe->registers(threadNum).begin(), probe->registers(threadNum).end());


            // push registers to extended probes
            const verica::Module* mut = state->m_netlist_model->module_under_test();
            for(auto reg : registers){
                bool var_included = false;
                // ensure that only one of the duplicated variables is added to the extended probes
                if(std::find(mut->input_pins().begin(), mut->input_pins().end(), reg->source_pin()) != mut->input_pins().end()){
                    for(auto ext : extended_probes){
                        if(reg->primary_input_identifier() == ext->primary_input_identifier()) var_included = true;   // variable is already inclued
                    }
                }
                if(!var_included) extended_probes.push_back(reg);
            }

            if (extended_probes.size() > 63) throw std::logic_error("PROBING: More than 63 extended probes detected (overflow)!");
        }
        else 
        {
            extended_probes = this->m_current_probes;
        }

        /* Collect observation & support */
        for (int64_t comb = 1; comb < (1 << extended_probes.size()); comb++) {

            BDD observe = state->m_managers[threadNum].bddOne();
            std::set<const verica::Wire*> support;

            for (unsigned int elem = 0; elem < extended_probes.size(); elem++) 
            {
                if (comb & (1 << elem)) 
                {
                    observe &= extended_probes[elem]->functions(threadNum);
                    support.insert(extended_probes[elem]->variables(threadNum).begin(), extended_probes[elem]->variables(threadNum).end());
                }
            }

            /* Sort shares into buckets (one bucket per secret) */
            bool trivial = true; std::set<int> domains;
            std::vector<std::vector<const verica::Wire*>> shares(state->m_shared_inputs.size());
            for(auto var : support)
            {
                const verica::Wire* input = var;

                for (int idx = state->m_shared_inputs.size() - 1; idx >= 0; idx--) 
                {
                    
                    bool sort = false;
                    for(auto in : state->m_shared_inputs[idx]){
                        if(in->primary_input_identifier() == input->primary_input_identifier()) sort = true;
                    }

                    if(sort){
                        /* Sort shares into buckets */
                        shares[idx].push_back(input);

                        if (m_type == PINI)
                        {
                            domains.insert(input->source_pin()->share_domain());
                            trivial &= (domains.size() <= (unsigned int)threshold); 
                        }
                        else
                        {
                            trivial &= (shares[idx].size() <= (unsigned int)threshold);
                        }
                        
                        break;           
                    }
                }
            }

            
            /* Check only non-trivial solutions */
            if (!trivial) 
            {
                // Generate all possible (intra) share combinations
                std::vector<std::vector<std::set<const verica::Wire*>>> intra(shares.size());
                for (unsigned int idx = 0; idx < shares.size(); idx++) 
                {
                    for (uint64_t comb = 0; comb < (uint64_t)(1 << shares[idx].size()); comb++) 
                    {
                        if (__builtin_popcount(comb) <= threshold) 
                        {
                            std::set<const verica::Wire*> tmp;
                            intra[idx].push_back(tmp);
                            for (unsigned int elem = 0; elem < shares[idx].size(); elem++)
                                if (comb & (1 << elem)) intra[idx][intra[idx].size() - 1].insert(shares[idx][elem]);
                        }
                    }
                }

                // Generate all possible (inter) share combinations   
                std::set<const verica::Wire*> tmp;                 
                std::vector<std::set<const verica::Wire*>> inter; inter_vector_combinations_and(intra, 0, tmp, inter);

                // Search for combinations providing simulatebility
                this->m_independent = false;
                for (unsigned int idx = 0; idx < inter.size() && !this->m_independent; idx++) 
                {
                    std::set<const verica::Wire*> combination = inter[idx];
                    std::vector<const verica::Wire*> complement;
                    
                    domains.clear();
                    for(auto w : combination){
                        domains.insert(w->source_pin()->share_domain());
                    }                    

                    if (m_type != PINI || (domains.size() <= (unsigned int)threshold)) {
                        this->m_independent = true;

                        std::vector<uint32_t> track_primary_input_idx;
                        for(auto shared_var : state->m_shared_variables){
                            bool found = false;
                            for(auto c : combination)
                                if(c->primary_input_identifier() == shared_var->primary_input_identifier()) found = true;
                            if(!found){
                                if(std::find(track_primary_input_idx.begin(), track_primary_input_idx.end(), shared_var->primary_input_identifier()) == track_primary_input_idx.end() || shared_var->primary_input_identifier() == -1){
                                    complement.push_back(shared_var);
                                    track_primary_input_idx.push_back(shared_var->primary_input_identifier());
                                }
                            }
                        }
                    
                        // @TODO: convert combination set to BDD before and filter out same input BDD variables
                        std::vector<const verica::Wire*> combination_filtered;
                        std::vector<uint32_t> track_for_combination;
                        for(auto w : combination){
                            if(std::find(track_for_combination.begin(), track_for_combination.end(), w->primary_input_identifier()) == track_for_combination.end()){
                                combination_filtered.push_back(w);
                                if(w->primary_input_identifier() != -1) track_for_combination.push_back(w->primary_input_identifier());
                            }
                        }

                        BDD simulate = observe;
                        int elem = 0;
                        for(auto w : combination_filtered){
                            simulate &= state->m_managers[threadNum].bddVar(state->m_netlist_model->num_wires() + extended_probes.size() + elem).Ite(w->functions(threadNum), state->m_managers[threadNum].bddOne());
                            elem++;
                        }

                        BDD free = state->m_managers[threadNum].bddOne();
                        for(unsigned int elem = 0; elem < complement.size(); elem++) 
                            free &= state->m_managers[threadNum].bddVar(state->m_netlist_model->num_wires() + extended_probes.size() + combination_filtered.size() + elem).Ite(complement[elem]->functions(threadNum), state->m_managers[threadNum].bddOne());
                        
                        this->m_independent &= state->m_managers[threadNum].bdd_statindependence(simulate, free);

                        // for(unsigned int s=0; s < (1 << combination_filtered.size()) && m_independent; ++s){
                        //     BDD simulate = observe;
                        //     for(int elem=0; elem<combination_filtered.size(); ++elem) if(s & (1 << elem)) simulate &= combination_filtered[elem]->functions(threadNum);

                        //     for(unsigned int r=1; r<(1 << complement.size()) && m_independent; ++r){
                        //         BDD free = state->m_managers[threadNum].bddOne();
                        //         for(int elem=0; elem<complement.size(); ++elem) if(r & (1 << elem)) free &= complement[elem]->functions(threadNum);

                        //         this->m_independent &= state->m_managers[threadNum].bdd_statindependence(simulate, free);
                        //     }
                        // }
                    }
                }

                if (!this->m_independent){
                    this->m_failing_probes.push_back(this->m_current_probes);
                    this->m_combined_leaking_probes.push_back(this->m_current_probes);

                    // add leaking fault injections
                    if(settings->getFaultInjection() || settings->getCombined())
                        this->m_combined_leaking_fault_injections.push_back(state->m_current_fault_injections[threadNum]);
                }
            } else {
                this->m_independent = true;
            }
        }
    }
}

void
ConfigurationComposability::finalize(const Settings *settings, State *state) 
{
    /* Trivial probe combination */
    if (settings->getSideChannelOrder() == 0)
        this->m_failing_probes.push_back(state->m_min_shared_inputs);    

    /* Sort failing probe combinations by size (small to large) */
    std::sort(this->m_failing_probes.begin(), this->m_failing_probes.end(), [](const std::vector<const verica::Wire*> & a, const std::vector<const verica::Wire*> & b){ return a.size() < b.size(); });
}

void
ConfigurationComposability::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
{
    /* Print header */
    logger->header("ANALYSIS REPORT");

    /* Print probing model information */
    if (settings->getVerbose() >= VINFO) 
    {
        std::string message;

        logger->log(service, this->m_name, "model parameters:");

        message = ITEM + "glitches    : ";
        message += (settings->getSideChannelModelGlitches() ? "yes" : "no");
        logger->log(service, this->m_name, message);
        
        message = ITEM + "transitions : ";
        /**! @todo: message += (settings->getSideChannelModelTransitions() ? "yes" : "no"); */
        message += (settings->getSideChannelModelTransitions() ? "currently not supported" : "no");
        logger->log(service, this->m_name, message);
        
        message = ITEM + "couplings   : ";
        /**! @todo: message += (settings->getSideChannelModelCouplings() ? "yes" : "no"); */
        message += (settings->getSideChannelModelCouplings() ? "currently not supported" : "no");
        logger->log(service, this->m_name, message);
    }

    /* Print NI/SNI/PINI related information */
    if(this->m_type == NI || this->m_type == SNI || this->m_type == PINI){
        if (settings->getVerbose() >= VBASE) 
        {
            /* Print verification parameters */
            logger->log(service, this->m_name, "verification:");
            logger->log(service, this->m_name, ITEM + "assuming : d \u2264 " + std::to_string(this->m_max_order));
            
            /* Print verification results */
            if (this->m_failing_probes.size() != 0) {
                logger->log(service, this->m_name, ITEM + "verified : d \u2264 " + std::to_string(this->m_failing_probes[0].size() - 1));
            } else {
                logger->log(service, this->m_name, ITEM + "verified : d \u2264 " + std::to_string(this->m_max_order));
            }
        }

        /* Print detailed results */
        if (settings->getVerbose() >= VFULL) {

            logger->log(service, this->m_name, "failing probe combinations:");

            /* Report total number of failing probe combinations */
            logger->log(service, this->m_name, ITEM + "total : " + std::to_string(this->m_failing_probes.size()));

            /* Report first failing probe combination */
            if (this->m_failing_probes.size() != 0) {
                logger->log(service, this->m_name, ITEM + "first : " + state->m_netlist_model->wire_vector_to_json_string(this->m_failing_probes[0]));
                // for(auto p : this->m_failing_probes)
                //     logger->log(service, this->m_name, ITEM + "probe : " + state->m_netlist_model->wire_vector_to_json_string(p));
            } else {
                logger->log(service, this->m_name, ITEM + "first : - ");
            }
        }

        /* Print final result to footer */
        if (this->m_failing_probes.size() == 0) {
            logger->footer(service, this->m_name, SUCCESS); 
        } else if (this->m_failing_probes[0].size() > this->m_max_order) {
            logger->footer(service, this->m_name, SUCCESS);
        } else {
            logger->footer(service, this->m_name, FAILURE);
        }
    }

    /* Print CNI/CSNI/ICSNI related verification results */
    bool success = true;

    if(this->m_type == CNI || this->m_type == CSNI || this->m_type == ICSNI){
        if (settings->getVerbose() >= VBASE) {            
            /* Check Fault Security */
            double secure = 0;
            if(this->m_type == CNI){
                for(auto v : state->m_na_security) secure += v;
            } else if (this->m_type == CSNI || this->m_type == ICSNI) {
                for(auto v : state->m_sna_security) secure += v;
            } 

            /* Some pre-computations (targeted and verified security orders) */
            int k_target = state->m_current_number_of_injected_faults;                                                          // number of injected faults
            int d_target = (this->m_type == ICSNI) ? this->m_max_order : this->m_max_order + k_target;                          // security order d of the gadget under test (verified SCA order + number of injected faults)
            
            int verified_d = (this->m_failing_probes.size() != 0) ? this->m_failing_probes[0].size() - 1 : this->m_max_order;   // verified order of the SCA verification
            int verified_k = (secure == 0) ? k_target : -1;                                                                     // verified order of the FIA verification

            /* Track security orders */
            if(verified_k != -1){
                std::pair<int, int> order = (this->m_type == ICSNI) ? std::make_pair(verified_d, verified_k) : std::make_pair(verified_d + verified_k, verified_k);    // new order
                std::vector<std::pair<int, int>> *verified_orders;
                if(this->m_type == CNI) {
                    verified_orders = &state->m_verified_cni_orders;
                } else if(this->m_type == CSNI) {
                    verified_orders = &state->m_verified_csni_orders;
                } else if(this->m_type == ICSNI) {
                    verified_orders = &state->m_verified_icsni_orders;                    
                } 

                if(order.second == 0){
                    // push back verified SCA security orders without fault injections
                    for(int d=1; d<=order.first; ++d){
                        verified_orders->push_back(std::make_pair(d, 0));
                    }
                } else {              
                    // add combined security orders - a (d,k) order can only be added if (d,k-1) is included and was already verified      
                    for(int d=order.first; d>0; --d){
                        if(std::find(verified_orders->begin(), verified_orders->end(), std::make_pair(d, order.second-1)) != verified_orders->end()) {
                            verified_orders->push_back(std::make_pair(d, order.second));
                            break;
                        }
                    }
                }
            }

            /* Report results */
            logger->log(service, this->m_name, "verification:");
            logger->log(service, this->m_name, ITEM + "targeted : (" + std::to_string(this->m_max_order) + ", " + std::to_string(k_target) + ") security");
            if(verified_k != -1){
                if(verified_d == this->m_max_order){
                    logger->log(service, this->m_name, ITEM + "verified : (" + std::to_string(verified_d) + ", " + std::to_string(verified_k) + ") security");
                } else {
                    logger->log(service, this->m_name, ITEM + "verified : (" + std::to_string(verified_d) + ", " + std::to_string(verified_k) + ") security ");
                    success &= false;
                }
            } else {
                logger->log(service, this->m_name, ITEM + "(-, " + std::to_string(k_target) + ") security not possible");
                success &= false;
            }
        }      
    } 

    /* Print final result to footer */
    if(this->m_type == CNI || this->m_type == CSNI || this->m_type == ICSNI){
        if (success) {
            logger->footer(service, this->m_name, SUCCESS); 
        } else {
            logger->footer(service, this->m_name, FAILURE);

            if(settings->getVerbose() > 2){
                logger->header("DETAILED ANALYSIS (" + std::to_string(m_combined_leaking_fault_injections.size()) + " combinations)");
                // for(auto leaking_fault : combined_leaking_fault_injections){
                for(unsigned int idx=0; idx<m_combined_leaking_fault_injections.size(); ++idx){
                    /* report faulted nodes */
                    logger->log(service, this->m_name, "Faulted node(s): " + state->m_netlist_model->wire_vector_to_json_string(m_combined_leaking_fault_injections[idx].first));
                    
                    /* report fault mapping */ 
                    logger->log(service, this->m_name, "Fault mapping: " + state->m_netlist_model->fault_state_to_json_string(m_combined_leaking_fault_injections[idx], state->m_cell_library)); 

                    /* report failing probes */
                    logger->log(service, this->m_name, "Failing probe(s): " + state->m_netlist_model->wire_vector_to_json_string(m_combined_leaking_probes[idx]));
                    logger->log(service, this->m_name, "");
                }
                logger->footer();
            }
        } 

        /* Print final result */
        if(state->m_current_number_of_injected_faults == settings->getNumberOfFaults()){
            bool check = false;
            std::vector<std::pair<int, int>> verified_orders;
            std::string type;

            // determine notion
            if(this->m_type == CNI) {
                verified_orders = state->m_verified_cni_orders;
                type = "CNI";
            } else if(this->m_type == CSNI) {
                verified_orders = state->m_verified_csni_orders;
                type = "CSNI";
            } else if(this->m_type == ICSNI) {
                verified_orders = state->m_verified_icsni_orders;
                type = "ICSNI";
            }             

            // report analysis results
            logger->header("ANALYSIS REPORT " + type);
            logger->log(service, this->m_name, "verification:");
            logger->log(service, this->m_name, ITEM + "targeted : (" + std::to_string(settings->getSideChannelOrder()) + ", " + std::to_string(settings->getNumberOfFaults()) + ")-" + type);
            for(auto p : verified_orders){
                logger->log(service, this->m_name, ITEM + "verified : (" + std::to_string(p.first) + ", " + std::to_string(p.second) + ")-" + type);
                if(p.first == settings->getSideChannelOrder() && p.second == settings->getNumberOfFaults()) check |= true;
            }

            if(check){
                logger->footer(service, this->m_name, SUCCESS); 
            } else {
                logger->footer(service, this->m_name, FAILURE); 
            }
        }
    }

    /* Add results to state for visualization */
    if(!m_combined_leaking_fault_injections.empty())
        state->m_visualization_faults = m_combined_leaking_fault_injections[0].first;
    if(!m_combined_leaking_probes.empty())
        state->m_visualization_probes = m_combined_leaking_probes[0];
}

void
ConfigurationComposability::insert(const ConfigurationComposability* configuration)
{
    for (auto combination : configuration->failing_probes()){
        if (std::find(this->m_failing_probes.begin(), this->m_failing_probes.end(), combination) == this->m_failing_probes.end())
            this->m_failing_probes.push_back(combination);
    }

    for (auto combination : configuration->combined_failing_probes())
        this->m_combined_leaking_probes.push_back(combination);

    for (auto combination : configuration->combined_leaking_faults())
        this->m_combined_leaking_fault_injections.push_back(combination);
}

void
ConfigurationComposability::inter_vector_combinations_and(const std::vector<std::vector<std::set<const verica::Wire*>>> &intra, unsigned int offset, std::set<const verica::Wire*> combination, std::vector<std::set<const verica::Wire*>> &inter)
{
    if (offset < intra.size()) {
        for (unsigned int idx = 0; idx < intra[offset].size(); idx++) {
            std::set<const verica::Wire*> temp = combination;
            temp.insert(intra[offset][idx].begin(), intra[offset][idx].end());
            inter_vector_combinations_and(intra, offset + 1, temp, inter);
        }
    } else {
        inter.push_back(combination);
    }
}
