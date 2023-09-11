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

#include "analyzer/ConfigurationFaultSFA.hpp"
#include "util.hpp"

void
ConfigurationFaultSFA::initialize(const Settings *settings, State *state){

}  

void
ConfigurationFaultSFA::execute(const Settings *settings, State *state) 
{
    (void)settings; // We do not need a settings object in this function. However, it must be given as paramter due to an overwriting.  

    // Determine running core
    int core = omp_get_thread_num();
    
    // Compare faulty and golden circuits
    BDD compare = state->m_managers[core].bddZero();
    for (unsigned int out = 0; out < state->m_mut_outputs.size(); out++) {
        compare |= (state->m_mut_outputs[out]->faulty_functions(core) ^ state->m_mut_outputs[out]->golden_functions(core));
    }

    /* Check outputs for uniformity */ 
    double sat_count_effective = (compare).CountMinterm(state->m_mut_input_size);

    std::vector<double> sat_count_out;
    for(auto unshared : state->m_unshared_output_combinations[core]){
        double prob = (unshared & !compare).CountMinterm(state->m_mut_input_size);
        if(std::abs(prob - sat_count_effective/2) > DOUBLE_COMPARE_THRESHOLD){
            state->m_leaking_fault_injections[core].push_back(state->m_current_fault_injections[core]);
            state->m_detected[core] += 1;
        }
        state->m_scenarios[core] += 1; 
    }
}

void
ConfigurationFaultSFA::finalize(const Settings *settings, State *state) {
}

void
ConfigurationFaultSFA::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
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

    if(settings->getVerbose() > 1){
        for(unsigned int fault_idx=0; fault_idx < leaking_fault_injections.size(); ++fault_idx){                    
            logger->header("Non-Uniform Output Distribution");
            /* report faulted nodes */
            if(leaking_fault_injections[fault_idx].first.size() > 1){
                std::string list_faulted_nodes = "";
                for(auto l : leaking_fault_injections[fault_idx].first) list_faulted_nodes += std::to_string(l->uid()) + " ";
                logger->log(service, this->m_name, "Faulted nodes: " + list_faulted_nodes);
                
                /* report fault mapping */ 
                logger->log(service, this->m_name, "Fault mapping: " + state->m_netlist_model->fault_state_to_json_string(leaking_fault_injections[fault_idx], state->m_cell_library)); 
            } else {
                std::string list_faulted_nodes = "";
                for(auto l : leaking_fault_injections[fault_idx].first) list_faulted_nodes += std::to_string(l->uid()) + " ";
                logger->log(service, this->m_name, "Faulted node: " + list_faulted_nodes);
                
                /* report fault mapping */ 
                logger->log(service, this->m_name, "Fault mapping: " + state->m_netlist_model->fault_state_to_json_string(leaking_fault_injections[fault_idx], state->m_cell_library)); 
            }

        }
    }

    /* Print header */
    logger->header("ANALYSIS REPORT");

    if(settings->getVerbose() > 0)
    {
        logger->log(service, this->m_name, "Checked " + std::to_string((int)scenarios) + " output combinations for uniformity");
        logger->log(service, this->m_name, std::to_string((int)detected) + " output combination(s) are non-uniform");
    } 

    /* Print footer */
    if (!detected)
        logger->footer(service, this->m_name, SUCCESS);
    else
        logger->footer(service, this->m_name, FAILURE);
}