/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Jan Richter-Brockmann (jan.richter-brockmann@rub.de)
 *           Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: --
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2021, Pascal Sasdrich and Jan Richter-Brockmann
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

#include "analyzer/ConfigurationFaultSIFA.hpp"
#include "util.hpp"

void
ConfigurationFaultSIFA::initialize(const Settings *settings, State *state){

}  

void
ConfigurationFaultSIFA::execute(const Settings *settings, State *state) 
{
    (void)settings; // We do not need a settings object in this function. However, it must be given as paramter due to an overwriting. 

    // Determine running core
    int core = omp_get_thread_num();

    // Compare faulty and golden circuits
    BDD compare;
    if(state->m_error_flags.empty()){
        compare = state->m_managers[core].bddZero();
        for(auto w : state->m_data_output_wires){
            compare |= (w->faulty_functions(core) ^ w->golden_functions(core));
        }     
    } else {
        compare = state->m_managers[core].bddOne();
        for(auto w : state->m_error_flags){
            compare &= w->faulty_functions(core);
        }
    }


    // Check statistical independenc of the fault-detection signal and any of of the secrets
    std::vector<BDD> unshared_inputs(state->m_shared_inputs.size());
    for(auto m : state->m_shared_inputs){
        unshared_inputs[m.first] = state->m_managers[core].bddZero();
        for(auto i : m.second){
            unshared_inputs[m.first] ^= i->golden_functions(core);
        }
    }


    // analyse dependencies of all possible combinations of secrets
    for(int in_comb=1; in_comb < (1 << state->m_shared_inputs.size()); ++in_comb){
        BDD secrets = state->m_managers[core].bddOne();
        for(unsigned int considered_input=0; considered_input < state->m_shared_inputs.size(); ++considered_input){
            if(in_comb & (1 << considered_input)){
                secrets &= unshared_inputs[considered_input];
            }
        }

        // check for statistical independence
        bool independent = state->m_managers[core].bdd_statindependence( compare, secrets );  

        // collect data for reporting
        if(!independent) {
            state->m_leaking_fault_injections[core].push_back(state->m_current_fault_injections[core]);
            state->m_detected[core] += 1;
        } 

        state->m_scenarios[core] += 1;           
    }




    // // Compare faulty and golden circuits
    // BDD compare = state->m_managers[core].bddZero();
    // for(auto w : state->m_data_output_wires){
    //     compare |= (w->faulty_functions(core) ^ w->golden_functions(core));
    // }

    // // Unshare faulty outputs
    // // Test unshared outputs for uniformity
    // std::vector<BDD> unshared_outputs_faulty;
    // for(auto output_share : state->m_map_unshared_outputs_faulty[core]){
    //     BDD temp = state->m_managers[core].bddZero();
    //     for(auto o : output_share.second)
    //         temp ^= o;
    //     unshared_outputs_faulty.push_back(temp);
    // }

    // // generate all valid combinations
    // std::vector<BDD> unshared_output_combinations;
    // for(uint64_t comb=1; comb < (1 << unshared_outputs_faulty.size()); ++comb){
    //     BDD temp = state->m_managers[core].bddZero();
    //     for(uint64_t considered_output=0; considered_output<state->m_map_unshared_outputs_faulty[core].size(); ++considered_output){
    //         if(comb & (1 << considered_output)){
    //             temp ^= unshared_outputs_faulty[considered_output];
    //         }
    //     }
    //     unshared_output_combinations.push_back(temp);
    // }

    // /* Check outputs for uniformity */ 
    // double sat_count_ineffective = (!compare).CountMinterm(state->m_mut_input_size);

    // for(auto unshared : unshared_output_combinations){
    //     double prob = (unshared & !compare).CountMinterm(state->m_mut_input_size);
    //     if(std::abs(prob - sat_count_ineffective/2) > DOUBLE_COMPARE_THRESHOLD){
    //         state->m_leaking_fault_injections[core].push_back(state->m_current_fault_injections[core]);
    //         state->m_detected[core] += 1;
    //     }
    //     state->m_scenarios[core] += 1; 
    // }

}


void
ConfigurationFaultSIFA::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
{
    /* Collect numbers from different threads*/
    double effective = 0, detected = 0, scenarios = 0;
    for(auto v : state->m_effective) effective += v;
    for(auto v : state->m_detected) detected += v;
    for(auto v : state->m_scenarios) scenarios += v;

    /* Collect information about leaking fault injections from different threads */
    std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> leaking_fault_injections;
    for(int idx=0; idx<settings->getCores(); ++idx){
        leaking_fault_injections.insert(leaking_fault_injections.end(), state->m_leaking_fault_injections[idx].begin(), state->m_leaking_fault_injections[idx].end());
    }

    if(settings->getVerbose() > 2){
        for(unsigned int fault_idx=0; fault_idx < leaking_fault_injections.size(); ++fault_idx){                    
            logger->header("Non-Uniform Output Distribution");
            /* report faulted nodes */
            if(leaking_fault_injections[fault_idx].first.size() > 1){
                std::string list_faulted_nodes = "";
                // for(auto l : leaking_fault_injections[fault_idx].first) list_faulted_nodes += std::to_string(l->uid()) + " ";
                for(auto l : leaking_fault_injections[fault_idx].first) list_faulted_nodes += l->name() + " ";
                logger->log(service, this->m_name, "Faulted nodes: " + list_faulted_nodes);
                
                /* report fault mapping */ 
                logger->log(service, this->m_name, "Fault mapping: " + state->m_netlist_model->fault_state_to_json_string(leaking_fault_injections[fault_idx], state->m_cell_library)); 
            } else {
                std::string list_faulted_nodes = "";
                // for(auto l : leaking_fault_injections[fault_idx].first) list_faulted_nodes += std::to_string(l->uid()) + " ";
                for(auto l : leaking_fault_injections[fault_idx].first) list_faulted_nodes += l->name() + " ";
                logger->log(service, this->m_name, "Faulted node: " + list_faulted_nodes);
                
                /* report fault mapping */ 
                logger->log(service, this->m_name, "Fault mapping: " + state->m_netlist_model->fault_state_to_json_string(leaking_fault_injections[fault_idx], state->m_cell_library)); 
            }

        }
    }

    /* Print header */
    logger->header("ANALYSIS REPORT");

    if(settings->getVerbose() > 0) {
        logger->log(service, this->m_name, "Checked " + std::to_string((int)scenarios) + " dependencies between the error flag and the secrets.");
        logger->log(service, this->m_name, std::to_string((int)detected) + " are not independent!");
    } 

    /* Print footer */
    if (!detected)
        logger->footer(service, this->m_name, SUCCESS);
    else
        logger->footer(service, this->m_name, FAILURE);
}




/* This code can be used to identify dependencies between fault injections and secrets */ 
// // Determine unshared inputs 
// // @TODO: move to preprocessor
// std::vector<BDD> unshared_inputs(state->m_shared_inputs.size());
// for(auto m : state->m_shared_inputs){
//     unshared_inputs[m.first] = state->m_managers[core].bddZero();
//     for(auto i : m.second){
//         unshared_inputs[m.first] ^= i->golden_functions(core);
//     }
// }


// // Collect gates that are responsible for information leakage
// std::vector<std::vector<int>> collect_dependent_outputs;
// std::vector<std::vector<int>> collect_leaked_inputs;

// // Combine gates that should be checked for independenc
// BDD observed_gates = !compare;
// std::vector<int> nonzero_gate_idx;
// for(auto g : state->m_current_fault_injections[core].first){
//     observed_gates &= g->faulty_functions(core);
//     nonzero_gate_idx.push_back(g->uid());
// }

// // analyse dependencies of all possible combinations of secrets
// for(int in_comb=1; in_comb < (1 << state->m_shared_inputs.size()); ++in_comb){
//     BDD secrets = state->m_managers[core].bddOne();
//     std::vector<int> leaked_secrets;
//     for(int considered_input=0; considered_input < state->m_shared_inputs.size(); ++considered_input){
//         if(in_comb & (1 << considered_input)){
//             secrets &= unshared_inputs[considered_input];
//             leaked_secrets.push_back(considered_input);
//         }
//     }
    
//     // Use this line for faster evaluation
//     // but with less detailed reporting
//     // BDD secrets = state->m_mut_outputs[comb]->secrets(core);

//     // check for statistical independence
//     bool independent = state->m_managers[core].bdd_statindependence( observed_gates, secrets );  

//     // collect data for reporting
//     if(!independent) {
//         state->m_detected[core] += 1;
//         collect_dependent_outputs.push_back(nonzero_gate_idx);
//         collect_leaked_inputs.push_back(leaked_secrets);
//     } 

//     state->m_scenarios[core] += 1;           
// }

// // store results for reporting
// if(!collect_dependent_outputs.empty()) {
//     state->m_leaking_outputs[core].push_back(collect_dependent_outputs);
//     state->m_leaked_secrets[core].push_back(collect_leaked_inputs);
//     state->m_leaking_fault_injections[core].push_back(state->m_current_fault_injections[core]);
// }