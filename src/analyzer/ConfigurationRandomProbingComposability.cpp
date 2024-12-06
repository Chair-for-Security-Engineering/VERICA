/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Jan Richter-Brockmann (jan.richter-brockmann@rub.de)
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

#include "analyzer/ConfigurationRandomProbingComposability.hpp"
#include "context/State.hpp"

ConfigurationRandomProbingComposability::ConfigurationRandomProbingComposability(std::string name, const Composability type) : ConfigurationCombinable(name) {
    this->m_type = type;
}

void
ConfigurationRandomProbingComposability::initialize(const Settings *settings, State *state) {
    /* Get maximum order of security */
    this->m_max_order = (settings->getSideChannelOrder() > 0) ? settings->getSideChannelOrder() : state->m_min_shared_inputs.size() - 1;

    /* Reset leaking probability */
    this->m_leaking_probability = 0.0;
    this->m_leaking_probability_upper_bound = 0.0;
    this->m_final_leaking_probability = 0.0;
    this->m_final_leaking_probability_upper_bound = 0.0;
    this->m_combination_cnt = 0;

    // this->m_leaking_probabilities.clear();

    /* Determine wires of the module under test */
    // this->m_wires_mut.insert(state->m_probe_positions.begin(), state->m_probe_positions.end());
    this->m_wires_mut = state->m_probe_positions;
    // for(auto comb : state->m_random_probing_composability_output_combinations) this->m_wires_mut.insert(comb.begin(), comb.end());
}

void
ConfigurationRandomProbingComposability::execute(const Settings *settings, State *state) {
    /* Determine set of wires that is considered for probing checks */
    std::vector<const verica::Wire*> wires = m_current_probes.first;
    // wires.insert(wires.end(), m_current_probes.second.begin(), m_current_probes.second.end());
    std::vector<const verica::Wire*> working_wires;

    working_wires.push_back(wires[0]);
    wires.erase(wires.begin(), wires.begin() + 1);

    /* Call recursive random probing checks */
    random_probing(settings, state, wires, working_wires, 0);
}

void
ConfigurationRandomProbingComposability::finalize(const Settings *settings, State *state) {
    int thread_num = omp_get_thread_num();
    m_leaking_probabilities.push_back(this->m_leaking_probability);
    m_leaking_probabilities_upper_bound.push_back(this->m_leaking_probability_upper_bound);

    // long double leaking_prob = 0.0;
    if(m_leaking_probabilities.size() == (state->m_random_probing_composability_output_combinations.size()+1)){
        unsigned int max_idx;
        for(unsigned int i=0; i<m_leaking_probabilities.size(); i++){
            if(m_final_leaking_probability < m_leaking_probabilities[i]){
                m_final_leaking_probability = m_leaking_probabilities[i];
                max_idx = i; 
            }
        }

        m_final_leaking_probability_upper_bound = m_leaking_probabilities_upper_bound[max_idx];

        m_leaking_probabilities.clear();
        m_leaking_probabilities_upper_bound.clear();

        if(settings->getCombined() && settings->getFaultRandomFaultingComposability()){
            int thread_num = omp_get_thread_num();

            /* Update leaking probability */
            state->m_combined_composability_leaking_probabilities[thread_num][state->m_random_faulting_pos_combination[thread_num]] += this->m_final_leaking_probability;                                                                       
            state->m_combined_composability_leaking_probabilities_upper_bound[thread_num][state->m_random_faulting_pos_combination[thread_num]] += this->m_final_leaking_probability_upper_bound;                                                                       
        }
    }
}

void
ConfigurationRandomProbingComposability::report(std::string service, const Logger *logger, const Settings *settings, State *state) const {
    /* Print header */
    logger->header("ANALYSIS REPORT");

    /* Print settings */
    logger->log(service, this->m_name, "parameter:");
    logger->log(service, this->m_name, ITEM + "wire leaking probability: " + std::to_string(settings->getSideChannelRandomProbingProbability()));
    logger->log(service, this->m_name, ITEM + "maximum number of probes: " + std::to_string(settings->getSideChannelRandomProbingMaxProbes()));
    
    if(settings->getCombined() && settings->getFaultRandomFaultingComposability()){
        logger->log(service, this->m_name, ITEM + "wire faulting probability: " + std::to_string(settings->getFaultRandomFaultingProbability()));
        logger->log(service, this->m_name, ITEM + "maximum number of faults:  " + std::to_string(settings->getFaultRandomFaultingMaxFaults()));

        // Determine maximum combined probability 
        std::vector<long double> prob_vec((state->m_random_faulting_composability_input_combinations.size()+1), 0.0);
        for(auto leaking_prob_per_core : state->m_combined_composability_leaking_probabilities) {
            for(unsigned int idx=0; idx<leaking_prob_per_core.size(); idx++){
                prob_vec[idx] += leaking_prob_per_core[idx];
            }
        }

        std::vector<long double> prob_vec_bounded((state->m_random_faulting_composability_input_combinations.size()+1), 0.0);
        for(auto leaking_prob_per_core : state->m_combined_composability_leaking_probabilities_upper_bound) {
            for(unsigned int idx=0; idx<leaking_prob_per_core.size(); idx++){
                prob_vec_bounded[idx] += leaking_prob_per_core[idx];
            }
        }

        long double max_combined = 0.0;
        unsigned int max_idx = 0;
        for(unsigned int idx=0; idx<(state->m_random_faulting_composability_input_combinations.size()+1); idx++){
            long double new_val = state->m_random_faulting_probabilities_per_input_combination[idx] + prob_vec[idx];
            if(new_val > max_combined){
                max_combined = new_val;
                max_idx = idx;
            }
        }

        // extract leaking probability for probing
        std::stringstream probing_prob;
        probing_prob << std::scientific;  
        probing_prob << 1/(1-state->m_random_faulting_probabilities_per_input_combination[max_idx]) * prob_vec[max_idx];

        // extract leaking probability for faulting 
        std::stringstream faulting_prob;
        faulting_prob << std::scientific;  
        faulting_prob << state->m_random_faulting_probabilities_per_input_combination[max_idx];
        
        // extract combined leaking probability
        std::stringstream combined_prob;
        combined_prob << std::scientific;  
        combined_prob << max_combined;

        logger->log(service, this->m_name, "verification:");
        logger->log(service, this->m_name, ITEM + "probe leaking probability:      \u03B5 = " + probing_prob.str());
        logger->log(service, this->m_name, ITEM + "fault leaking probability:      \u03BC = " + faulting_prob.str());
        logger->log(service, this->m_name, ITEM + "combined leaking probability:   \u03B3 = " + combined_prob.str());


        // extract bounded leaking probability for probing
        std::stringstream probing_prob_bounded;
        probing_prob_bounded << std::scientific;  
        probing_prob_bounded << 1/(1-(state->m_faulting_probability_composability_bounded + state->m_random_faulting_probabilities_per_input_combination[max_idx])) * (prob_vec[max_idx] + prob_vec_bounded[max_idx]);

        // extract leaking probability for faulting 
        std::stringstream faulting_prob_bounded;
        faulting_prob_bounded << std::scientific;  
        faulting_prob_bounded << state->m_faulting_probability_composability_bounded + state->m_random_faulting_probabilities_per_input_combination[max_idx];

        // extract combined leaking probability
        std::stringstream combined_prob_bounded;
        combined_prob_bounded << std::scientific;  
        combined_prob_bounded << ((state->m_faulting_probability_composability_bounded + state->m_random_faulting_probabilities_per_input_combination[max_idx]) + (prob_vec[max_idx] + prob_vec_bounded[max_idx]));

        logger->log(service, this->m_name, "verification (bounded):");
        logger->log(service, this->m_name, ITEM + "probe leaking probability:      \u03B5 = " + probing_prob_bounded.str());
        logger->log(service, this->m_name, ITEM + "fault leaking probability:      \u03BC = " + faulting_prob_bounded.str());
        logger->log(service, this->m_name, ITEM + "combined leaking probability:   \u03B3 = " + combined_prob_bounded.str());
    } else {
        /* Print verification results */
        logger->log(service, this->m_name, "verification:");
        logger->log(service, this->m_name, ITEM + "leaking probability:            \u03B5 = " + std::to_string(m_final_leaking_probability));
        logger->log(service, this->m_name, ITEM + "leaking probability (bounded):  \u03B5_max = " + std::to_string(m_final_leaking_probability + m_final_leaking_probability_upper_bound));
        logger->log(service, this->m_name, ITEM + "considered combinations:        " + std::to_string(this->m_combination_cnt));
    }

    /* Print footer */
    logger->footer(service, this->m_name, SUCCESS);
}

void
ConfigurationRandomProbingComposability::insert(const ConfigurationCombinable* configuration) {
    ConfigurationRandomProbingComposability *test = (ConfigurationRandomProbingComposability*) configuration;
    this->m_leaking_probability += test->leaking_probability();
    this->m_leaking_probability_upper_bound += test->leaking_probability_bound();
    this->m_combination_cnt += test->combination();
}

Composability ConfigurationRandomProbingComposability::getType() const {
    return Composability::RCOMPOSABILITY;
}



/********************************************/
/* Private Functions                        */
/********************************************/
void 
ConfigurationRandomProbingComposability::random_probing(const Settings *settings, State *state, std::vector<const verica::Wire*> &wires, std::vector<const verica::Wire*> comb, int ptr){
    if(comb.size() > 0){
        // Get faulting probability for combined analysis 
        long double scaling = 1.0;
        if(settings->getCombined() && settings->getFaultRandomFaultingComposability()){
            int thread_num = omp_get_thread_num();
            scaling = state->m_random_faulting_current_single_faulting_probability[thread_num];
        }

        m_current_probe_combination = comb;
        m_current_probe_combination.insert(m_current_probe_combination.end(), m_current_probes.second.begin(), m_current_probes.second.end());
        bool secure = probing_security(settings, state);

        // // This code is used to compare our implementation to ironMask
        // if(!secure){
        //     // Update probability for individual leaking wire probabilities
        //     long double probed_prob = 1.0;
        //     long double non_probed_prob = 1.0;
        //     for(auto w : this->m_wires_mut){
        //         if(std::find(comb.begin(), comb.end(), w) != comb.end()){
        //             probed_prob *= w->get_leaking_probability();
        //         } else {
        //             non_probed_prob *= (1 - w->get_leaking_probability());
        //         }
        //     }
        //     m_leaking_probability += (scaling * probed_prob * non_probed_prob);
        //     m_combination_cnt++;
        // }

        // if(comb.size() == settings->getSideChannelRandomProbingMaxProbes()) update_upper_bound(settings, state, wires, comb, ptr, scaling);



        if(!secure){
            long double epsilon_prob = 1.0;

            std::vector<const verica::Wire*> comb_copy = comb;
            std::vector<const verica::Wire*> wires_mut_copy = this->m_wires_mut;
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
ConfigurationRandomProbingComposability::probing_security(const Settings *settings, State *state){
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
                        if(reg->primary_input_identifier() == ext->primary_input_identifier()) var_included = true;   // variable is already included
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
        }
    }

    return independent;
}

void 
ConfigurationRandomProbingComposability::update_upper_bound(const Settings *settings, State *state, std::vector<const verica::Wire*> &wires, std::vector<const verica::Wire*> &comb, int &ptr, long double &scaling){
    long double prob = 0.0;
    for(unsigned int j=1;j<=(wires.size()-ptr); j++){      
        prob += binomial_coeff((long double)(wires.size()-ptr), (long double)j) * 
                std::pow(settings->getSideChannelRandomProbingProbability(), (comb.size()+j)) *
                std::pow((1-settings->getSideChannelRandomProbingProbability()), (state->m_probe_positions.size()-comb.size()-j));
    }
    m_leaking_probability_upper_bound += (scaling * prob);
}

void
ConfigurationRandomProbingComposability::direct_convolution(std::vector<long double> &vec1, std::vector<long double> vec2){
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
    // return vec_conv;
}