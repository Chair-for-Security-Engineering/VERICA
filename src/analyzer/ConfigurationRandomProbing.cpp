/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Jan Richter-Brockmann (jan.richter-brockmann@rub.de)
 *           Anna Guinet (anna.guinet@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2022/484
 *           https://eprint.iacr.org/2022/1131
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

// #define export_leaking_probes

#include "analyzer/ConfigurationRandomProbing.hpp"
#include "context/State.hpp"

ConfigurationRandomProbing::ConfigurationRandomProbing(std::string name, const Composability type) : ConfigurationCombinable(name) {}

void
ConfigurationRandomProbing::initialize(const Settings *settings, State *state) {
    /* Initialize leaking probability */
    this->m_leaking_probability = 0.0;
    this->m_leaking_probability_upper_bound = 0.0;
    this->m_combination_cnt = 0;

    for(unsigned int i=0; i<=settings->getSideChannelRandomProbingMaxProbes(); i++)
        m_counter[i] = 0;
}

void
ConfigurationRandomProbing::execute(const Settings *settings, State *state) {
    /* Determine set of wires that is considered for probing checks */
    std::vector<const verica::Wire*> wires = m_current_probes.first;
    std::vector<const verica::Wire*> working_wires;

    working_wires.push_back(wires[0]);
    wires.erase(wires.begin(), wires.begin() + 1);

    /* Call recursive random probing checks */
    random_probing(settings, state, wires, working_wires, 0);
}

void
ConfigurationRandomProbing::finalize(const Settings *settings, State *state) {
    if(settings->getCombined() && settings->getFaultRandomFaulting()){
        int thread_num = omp_get_thread_num();

        /* Update leaking probability */
        state->m_combined_leaking_probabilities[thread_num] += m_leaking_probability;
        state->m_combined_leaking_probabilities_upper_bound[thread_num] += m_leaking_probability_upper_bound;
    }
}

void
ConfigurationRandomProbing::report(std::string service, const Logger *logger, const Settings *settings, State *state) const {
    if(settings->getCombined() && settings->getFaultRandomFaulting()){
        /* Print header */
        logger->header("ANALYSIS REPORT");


        /* Print settings */
        logger->log(service, this->m_name, "parameter:");
        logger->log(service, this->m_name, ITEM + "wire leaking probability:  " + std::to_string(settings->getSideChannelRandomProbingProbability()));
        logger->log(service, this->m_name, ITEM + "maximum number of probes:  " + std::to_string(settings->getSideChannelRandomProbingMaxProbes()));
        logger->log(service, this->m_name, ITEM + "wire faulting probability: " + std::to_string(settings->getFaultRandomFaultingProbability()));
        logger->log(service, this->m_name, ITEM + "maximum number of faults:  " + std::to_string(settings->getFaultRandomFaultingMaxFaults()));


        /* Print verification results */
        // extract leaking probability for probing
        std::stringstream probing_prob;
        probing_prob << std::scientific;  
        probing_prob << 1/(1- state->m_faulting_probability) * state->m_combined_final_leaking_probability;    // scaled with fault probability
        std::stringstream probing_prob_nonscaled;
        probing_prob_nonscaled<< std::scientific << state->m_combined_final_leaking_probability;    

        // extract leaking probability for faulting 
        std::stringstream faulting_prob;
        faulting_prob << std::scientific;  
        faulting_prob << state->m_faulting_probability;
        
        // extract combined leaking probability
        std::stringstream combined_prob;
        combined_prob << std::scientific;  
        combined_prob << (state->m_faulting_probability + state->m_combined_final_leaking_probability);

        // report result
        logger->log(service, this->m_name, "verification (lower bound):");
        logger->log(service, this->m_name, ITEM + "probe leaking probability:      \u03B5 = " + probing_prob.str());
        // logger->log(service, this->m_name, ITEM + "probe leaking probability:      \u03B5 = " + probing_prob_nonscaled.str());
        logger->log(service, this->m_name, ITEM + "fault leaking probability:      \u03BC = " + faulting_prob.str());
        logger->log(service, this->m_name, ITEM + "combined leaking probability:   \u03B3 = " + combined_prob.str());


        // extract upper bound for leaking probability for probing
        std::stringstream probing_prob_bounded;
        probing_prob_bounded << std::scientific;  
        probing_prob_bounded << 1/(1-(state->m_faulting_probability + state->m_faulting_probability_bounded)) * (state->m_combined_final_leaking_probability_upper_bound + state->m_combined_final_leaking_probability);    // scaled with fault probability
        
        // extract upper bound for leaking probability for faulting 
        std::stringstream faulting_prob_bounded;
        faulting_prob_bounded << std::scientific;  
        faulting_prob_bounded << state->m_faulting_probability_bounded + state->m_faulting_probability;

        // extract upper bound for combined leaking probability
        std::stringstream combined_prob_bounded;
        combined_prob_bounded << std::scientific;  
        combined_prob_bounded << ((state->m_faulting_probability + state->m_faulting_probability_bounded) + (state->m_combined_final_leaking_probability_upper_bound + state->m_combined_final_leaking_probability));

        logger->log(service, this->m_name, "verification (upper bound):");
        logger->log(service, this->m_name, ITEM + "probe leaking probability:      \u03B5_max = " + probing_prob_bounded.str());
        logger->log(service, this->m_name, ITEM + "fault leaking probability:      \u03BC_max = " + faulting_prob_bounded.str());
        logger->log(service, this->m_name, ITEM + "combined leaking probability:   \u03B3_max = " + combined_prob_bounded.str());


        /* Print footer */
        logger->footer(service, this->m_name, SUCCESS);
    } else {
        /* Print header */
        logger->header("ANALYSIS REPORT");

        /* Print settings */
        logger->log(service, this->m_name, "parameter:");
        logger->log(service, this->m_name, ITEM + "wire leaking probability: " + std::to_string(settings->getSideChannelRandomProbingProbability()));
        logger->log(service, this->m_name, ITEM + "maximum number of probes: " + std::to_string(settings->getSideChannelRandomProbingMaxProbes()));

        /* Print verification results */
        logger->log(service, this->m_name, "verification:");
        logger->log(service, this->m_name, ITEM + "leaking probability:           \u03B5 = " + std::to_string(this->m_leaking_probability));
        logger->log(service, this->m_name, ITEM + "leaking probability (bounded): \u03B5_max = " + std::to_string(this->m_leaking_probability + this->m_leaking_probability_upper_bound));
        logger->log(service, this->m_name, ITEM + "considered combinations:       " + std::to_string(this->m_combination_cnt));
        logger->log(service, this->m_name, ITEM + "total combinations:            " + std::to_string((long unsigned int)(1LU<<state->m_probe_positions.size())));
        logger->log(service, this->m_name, ITEM + "number of wires:               " + std::to_string((long unsigned int)state->m_probe_positions.size()));
        logger->log(service, this->m_name, ITEM + "not covered:                   " + std::to_string((long unsigned int)(1LU<<state->m_probe_positions.size()) - this->m_combination_cnt));
        // for(auto m : m_counter){
        //             logger->log(service, this->m_name, ITEM + std::to_string(m.first) + ": " + std::to_string(m.second));
        // }

        #ifdef export_leaking_probes
            logger->log(service, this->m_name, "Number of failing probes per order: ");
            for(auto f : state->m_failing_probe_cnt){
                logger->log(service, this->m_name, ITEM + "Order " + std::to_string(f.first) + ": " + std::to_string(f.second));
            }
        #endif

        /* Print footer */
        logger->footer(service, this->m_name, SUCCESS);
    }
}

void
ConfigurationRandomProbing::insert(const ConfigurationCombinable* configuration) {
    ConfigurationRandomProbing *test = (ConfigurationRandomProbing*) configuration;
    this->m_leaking_probability += test->leaking_probability();
    this->m_leaking_probability_upper_bound += test->leaking_probability_bound();
    this->m_combination_cnt += test->combination();

    std::map<int, long unsigned int> coeff = test->counter();
    for(auto coeff_pair : coeff){
            m_counter[coeff_pair.first] += coeff_pair.second;
    }   
}

Composability ConfigurationRandomProbing::getType() const {
    return Composability::RANDOMPROBING;
}



/********************************************/
/* Private Functions                        */
/********************************************/
void 
ConfigurationRandomProbing::random_probing(const Settings *settings, State *state, std::vector<const verica::Wire*> &wires, std::vector<const verica::Wire*> comb, int ptr){
    if(comb.size() > 0){
        // Get faulting probability for combined analysis 
        long double scaling = 1.0;
        if(settings->getCombined() && settings->getFaultRandomFaulting()){
            int thread_num = omp_get_thread_num();
            scaling = state->m_random_faulting_current_single_faulting_probability[thread_num];
        }

        m_current_probe_combination = comb;
        bool secure = probing_security(settings, state);


        // This code is used to compare our implementation to ironMask
        // if(!secure){
        //     long double probed_prob = 1.0;
        //     long double non_probed_prob = 1.0;
        //     std::vector<const verica::Wire*> comb_copy = comb;
        //     for(auto w : state->m_probe_positions){
        //         std::vector<const verica::Wire*>::iterator it = std::find(comb_copy.begin(), comb_copy.end(), w);
        //         if(it != comb_copy.end()){
        //             probed_prob *= w->get_leaking_probability();
        //             comb_copy.erase(it);
        //         } else {
        //             non_probed_prob *= (1 - w->get_leaking_probability());
        //         }
        //     }
        //     m_leaking_probability += (scaling * (probed_prob * non_probed_prob));
        //     m_combination_cnt++;

        //     #ifdef export_leaking_probes
        //         // for(auto w : comb){
        //         //     *state->probe_file << w->uid() << " ";
        //         // }
        //         // *state->probe_file << "\n";

        //         state->m_failing_probe_cnt[comb.size()] += 1;
        //     #endif
        // }

        // if(comb.size() == settings->getSideChannelRandomProbingMaxProbes()) update_upper_bound(settings, state, wires, comb, ptr, scaling);


        if(!secure){
            long double epsilon_prob = 1.0;

            std::vector<const verica::Wire*> comb_copy = comb;
            std::vector<const verica::Wire*> wires_mut_copy = state->m_probe_positions;
            std::vector<const verica::Wire*> wires_copy;
            wires_copy.insert(wires_copy.end(), wires.begin()+ptr, wires.end());

            for(auto w : comb_copy){
                epsilon_prob *= w->get_leaking_probability();
                auto it = std::find(wires_mut_copy.begin(), wires_mut_copy.end(), w);
                if(it != wires_mut_copy.end()) wires_mut_copy.erase(it);
            }

            for(auto w : wires_copy){

                auto it = std::find(wires_mut_copy.begin(), wires_mut_copy.end(), w);
                if(it != wires_mut_copy.end()) wires_mut_copy.erase(it);
            }

            for(auto w : wires_mut_copy) epsilon_prob *= (1 - w->get_leaking_probability());

            m_leaking_probability += (scaling * epsilon_prob);
            m_combination_cnt++;

            // Abort
            return;
        } else {
            if(comb.size() == settings->getSideChannelRandomProbingMaxProbes()) update_upper_bound(settings, state, wires, comb, ptr, scaling);
        }
        

        // Abort if maximum number of probes is reached
        if(settings->getSideChannelRandomProbingMaxProbes() == comb.size()){
            return;
        }
    
        // Abort if pointer points to last element of wires
        if(ptr == wires.size()){
            return;
        }
    }

    // Generate next combination
    for(int i=ptr; i<wires.size(); i++){
        comb.push_back(wires[i]);
        random_probing(settings, state, wires, comb, i+1);
        comb.pop_back();
    }
}

bool 
ConfigurationRandomProbing::probing_security(const Settings *settings, State *state){
     /* Current thread number */
    int threadNum = omp_get_thread_num();

    /* Collect current set of shares */
    std::set<const verica::Wire*> variables;
    for(auto probe : this->m_current_probe_combination) {
        variables.insert(probe->variables(threadNum).begin(), probe->variables(threadNum).end());
    }

    std::vector<uint32_t> shares;
    for(auto var : variables){
        if(std::find(shares.begin(), shares.end(), var->primary_input_identifier()) == shares.end())
            shares.push_back(var->primary_input_identifier());
    }

    /* Skip probing (not all shares contributing)? */
    bool independent = true;
    
    for (unsigned int si = 0; si < state->m_shared_inputs.size() && independent; si++) {
        unsigned int count = 0;

        for (unsigned int sd = 0; sd < state->m_shared_inputs[si].size(); sd++)
        {
            count += (std::find(shares.begin(), shares.end(), state->m_shared_inputs[si][sd]->primary_input_identifier()) != shares.end());
        }

        independent &= (count != state->m_shared_inputs[si].size());
    }

    if (!independent) {
        /* Current combination of probes */
        std::vector<const verica::Wire*> extended_probes;

        /* Construct glitch-extended probes */
        if (settings->getSideChannelModelGlitches()) {
            // collect all syncronization points
            std::set<const verica::Wire*> registers;
            for(auto probe : this->m_current_probe_combination)
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
        else {
            extended_probes = this->m_current_probe_combination;
        }

        /* Collect secrets */
        BDD secrets = state->m_managers[threadNum].bddOne();
        for (auto probe : extended_probes)
            secrets &= probe->secrets(threadNum);

        independent = true;

        /* Check combinations & secrets for statistical independence */
        for (uint64_t comb = 1; comb < (uint64_t)(1 << extended_probes.size()) && independent; comb++) {
            /* Generate probe observation */
            BDD observation = state->m_managers[threadNum].bddOne();
            for (unsigned int elem = 0; elem < extended_probes.size(); elem++){
                if (comb & (1 << elem)) observation &= extended_probes[elem]->functions(threadNum);
            }

            /* Statistical independence check */
            independent &= state->m_managers[threadNum].bdd_statindependence(observation, secrets);

            // if (!independent){
            //     this->m_failing_probes.push_back(this->m_current_probes);
            // }
        }

        // /* Store leaking combinations of probes and faults */
        // if(!this->m_independent && (settings->getFaultInjection() || settings->getCombined())) {
        //     this->m_leaking_combinations.push_back(std::make_pair(this->m_current_probes, state->m_current_fault_injections[threadNum].first));
        // }
    }

    return independent;
}

void 
ConfigurationRandomProbing::update_upper_bound(const Settings *settings, State *state, std::vector<const verica::Wire*> &wires, std::vector<const verica::Wire*> &comb, int &ptr, long double &scaling){
    long double prob = 0.0;
    for(unsigned int j=1;j<=(wires.size()-ptr); j++){      
        prob += binomial_coeff((unsigned int)(wires.size()-ptr), j) * 
                std::pow(settings->getSideChannelRandomProbingProbability(), (comb.size()+j)) *
                std::pow((1-settings->getSideChannelRandomProbingProbability()), (state->m_probe_positions.size()-comb.size()-j));
    }
    m_leaking_probability_upper_bound += (scaling * prob);
}

std::vector<long double> 
ConfigurationRandomProbing::direct_convolution(std::vector<long double> vec1, std::vector<long double> vec2){
    assert((!vec1.empty()));
    assert((!vec2.empty()));

    int m1 = vec1.size();
    int m2 = vec2.size();
    std::vector<long double> vec_conv;
                        
    for(int k = 0; k < (m1 + m2 - 1); k++){
        long double sum_temp = 0;
        for(int i = std::max(0, k - m2 + 1); i < std::min(k + 1, m1); i++){
            sum_temp += vec1[i] * vec2[k - i];
        }
        vec_conv.push_back(sum_temp);
    }
    return vec_conv;
}