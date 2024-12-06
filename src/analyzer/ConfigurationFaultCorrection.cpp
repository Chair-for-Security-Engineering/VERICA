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

#include "analyzer/ConfigurationFaultCorrection.hpp"

void
ConfigurationFaultCorrection::initialize(const Settings *settings, State *state){
    // resize vector to collect effective fault injections
    m_effective_faults_fia.resize(settings->getCores());
    m_effective_faults_fni.resize(settings->getCores());
    m_effective_faults_fsni.resize(settings->getCores());
    m_effective_faults_fini.resize(settings->getCores());
    m_effective_faults_cni.resize(settings->getCores());
    m_effective_faults_csni.resize(settings->getCores());
    m_effective_faults_icsni.resize(settings->getCores());
    m_effective_faults_cini.resize(settings->getCores());
    m_effective_faults_icini.resize(settings->getCores());

    m_old_k.resize(settings->getCores(), 0);

    // initialize container for random faulting 
    if(settings->getFaultRandomFaulting()){
        for(unsigned int core=0; core<settings->getCores(); core++) m_faulting_probability.push_back(0.0);
        for(unsigned int core=0; core<settings->getCores(); core++) m_faulting_probability_bounded.push_back(0.0);
    }

    // initialize container for random faulting composability
    if(settings->getFaultRandomFaultingComposability()){
        for(unsigned int core=0; core<settings->getCores(); core++){
            std::vector<long double> temp(state->m_random_faulting_composability_input_combinations.size()+1, 0.0);
            m_faulting_probabilities.push_back(temp);
            m_faulting_probabilities_bounded.push_back(temp);
        }
    }
}

void
ConfigurationFaultCorrection::execute(const Settings *settings, State *state) {
    int core = omp_get_thread_num();
    unsigned int max_k = state->m_current_number_of_injected_faults;

    if(max_k > m_old_k[core]) {
        reset_bounds(settings, state, core);
        m_old_k[core] = max_k;
    }

    // Check if random input is faulted
    std::map<const verica::Wire*, verica::fault::Fault> faulted_rand_inputs;
    for(unsigned int i=0; i<state->m_current_fault_injections[core].first.size(); ++i){
        if(state->m_current_fault_injections[core].first[i]->source_pin()->port_type() == verica::Refresh)
            faulted_rand_inputs[state->m_current_fault_injections[core].first[i]] = state->m_current_fault_injections[core].second[i];
    }

    // Compare (adapted) golden and faulty model
    const verica::Module* mut = state->m_netlist_model->module_under_test();
    BDD compprime = state->m_managers[core].bddZero();
    uint64_t cnt_faults = 0;
    std::vector<const verica::Pin*> output_fault_domain;
    std::map<int, std::set<const verica::Pin*>> output_fault_index;

    if(faulted_rand_inputs.empty()){
        // no random input is faulted
        for(auto w : state->m_data_output_wires){
            BDD diff = w->golden_functions(core) ^ w->faulty_functions(core);
            compprime |= diff;
            if(!diff.IsZero()){
                // collect the fault domains of the errors
                for(auto p : w->target_pins()){
                    // Fault domain
                    if(std::find(mut->output_pins().begin(), mut->output_pins().end(), p) != mut->output_pins().end())
                        output_fault_domain.push_back(p);

                    // Fault index
                    output_fault_index[p->fault_index()].insert(p);
                }
                // count the errors
                cnt_faults++;
            }
        }
    } else{
        // random inputs are faulted
        for(auto w : state->m_data_output_wires){
            // Fix corresponding BDD variable to the value that represents the fault in the faulty model
            BDD temp = w->golden_functions(core);
            for(auto fault_pair : faulted_rand_inputs){
                int idx = fault_pair.first->golden_functions(core).NodeReadIndex();
                BDD new_node;
                switch (fault_pair.second) {
                    case verica::fault::Fault::SET:
                        new_node = state->m_managers[core].bddOne();
                        break;
                    case verica::fault::Fault::RESET:
                        new_node = state->m_managers[core].bddZero();
                        break;
                    case verica::fault::Fault::NOTA:
                        new_node = !fault_pair.first->golden_functions(core);
                        break;
                    default:
                        throw std::logic_error("[CORRECTION-ANALYZER] Invalid fault for random inputs!");
                        break;
                }
                temp = temp.Compose(new_node, idx);
            }
            BDD diff = temp ^ w->faulty_functions(core);
            compprime |= diff;
            if(!diff.IsZero()){
                // collect the fault domains of the errors
                for(auto p : w->target_pins()){
                    // Fault domain
                    if(std::find(mut->output_pins().begin(), mut->output_pins().end(), p) != mut->output_pins().end())
                        output_fault_domain.push_back(p);

                    // Fault index
                    output_fault_index[p->fault_index()].insert(p);
                }
                // count the errors
                cnt_faults++;
            }
        }
    }

    // Evaluate threshold faulting model
    if(settings->getFaultThresholdFaulting()){
        if (compprime.CountMinterm(state->m_mut_input_size) == 0){
            state->m_effective[core] += 0;   // no effective fault was detected
        } else {
            state->m_effective[core] += 1;
            m_effective_faults_fia[core].push_back(state->m_current_fault_injections[core].first);     
        }
    }

    // Evaluate random faulting model
    if(settings->getFaultRandomFaulting() || settings->getFaultRandomFaultingComposability()){
        // Check if faults at output cannot be corrected
        int correction_capability = (int) ((state->m_min_output_duplications-1) / 2);
        bool insecure = false;
        for(auto idx : output_fault_index){
            insecure |= (idx.second.size() > correction_capability) ? true : false;
        }

        // Determine faulting probabilities for faulted and non-faulted wires
        long double faulted_prob = 1.0;
        long double non_faulted_prob = 1.0;
        for(auto w : state->m_faultLocations){
            if(std::find(state->m_current_fault_injections[core].first.begin(), state->m_current_fault_injections[core].first.end(), w) != state->m_current_fault_injections[core].first.end()){
                // Wire w has been faulted
                faulted_prob *= w->get_faulting_probability();
            } else {
                // Wire w has not been faulted
                non_faulted_prob *= w->get_faulting_probability_inverse();
            }
        }

        // Final fault probability
        long double prob = (faulted_prob * non_faulted_prob);

        // This need to be done in a critical environment (for unkown reasons)
        #pragma omp critical
        {
            state->m_random_faulting_current_single_faulting_probability[core] = prob;
            state->m_random_faulting_correctable[core] = !insecure;
        }

        // Update faulting probability only if error cannot be corrected
        if(insecure){
            m_counter++;
            // Update total faulting probability
            if(settings->getFaultRandomFaulting()) m_faulting_probability[core] += prob;

            // Update faulting probability for composability checks
            if(settings->getFaultRandomFaultingComposability()) m_faulting_probabilities[core][state->m_random_faulting_pos_combination[core]] += prob;
        
            // #pragma omp critical
            // {
            //     std::cout << "Effective fault: ";
            //     for(unsigned int i=0; i<state->m_current_fault_injections[core].first.size(); ++i){
            //         std::cout << state->m_current_fault_injections[core].first[i]->name() << " ";
            //         // if(state->m_current_fault_injections[core].first[i]->source_pin()->port_type() == verica::Refresh)
            //             // faulted_rand_inputs[state->m_current_fault_injections[core].first[i]] = state->m_current_fault_injections[core].second[i];
            //     }
            //     std::cout << "; with effected outputs: ";
            //     for(auto w : state->m_data_output_wires){
            //         std::cout << w->name() << " ";
            //     }
            //     std::cout << std::endl;
            // }
        }
    }
    

    state->m_detected[core] = 0;
    state->m_scenarios[core] += 1;

    // Checking FNI and FSNI security
    int input_faults = 0;
    std::vector<const verica::Pin*> input_fault_domain;
    for(auto f : state->m_current_fault_injections[core].first){
        if(f->primary_input_identifier() != -1){
            // collect the fault domains of the input faults
            if(f->source_pin()->port_type() != verica::Refresh) input_fault_domain.push_back(f->source_pin());
            // count the input faults
            input_faults++;
        }
    }

    if(settings->getFaultFNI() || settings->getCombinedCNI()){
        if(cnt_faults > max_k) {
            state->m_na_security[core] += 1;

            // store effective faults for reporting and visualization
            if(settings->getFaultFNI()) m_effective_faults_fni[core].push_back(state->m_current_fault_injections[core].first);
            if(settings->getCombinedCNI()) m_effective_faults_cni[core].push_back(state->m_current_fault_injections[core].first);
        }
    }

    if(settings->getFaultFSNI()  || settings->getCombinedCSNI() || settings->getCombinedICSNI()){
        if(cnt_faults > (max_k-input_faults)) {
            state->m_sna_security[core] += 1;

            // store effective faults for reporting and visualization
            if(settings->getFaultFSNI()) m_effective_faults_fsni[core].push_back(state->m_current_fault_injections[core].first);
            if(settings->getCombinedCSNI()) m_effective_faults_csni[core].push_back(state->m_current_fault_injections[core].first);
            if(settings->getCombinedICSNI()) m_effective_faults_icsni[core].push_back(state->m_current_fault_injections[core].first);
        }
    }

    // Checking FINI
    if(settings->getFaultFINI()){
        // determine number of internal faults (number of injected faults - number of input faults)
        int k2 = max_k - input_faults;

        // remove fault domains of the input from output fault domains
        std::set<int> set_of_output_fault_domains;
        std::set<int> set_of_input_fault_domains;
        for(auto p : output_fault_domain) set_of_output_fault_domains.insert(p->fault_domain());
        for(auto p : input_fault_domain) set_of_input_fault_domains.insert(p->fault_domain());
        for(auto i : set_of_input_fault_domains)
            set_of_output_fault_domains.erase(i);

        // if the cardinality of the remaining set is larger than the number of internal faults -> MUT is not FINI
        if(set_of_output_fault_domains.size() > k2) {
            state->m_fini_security[core] += 1;

            // store effective faults for reporting and visualization
            m_effective_faults_fini[core].push_back(state->m_current_fault_injections[core].first);
        }
    }

    // Checking CINI and ICINI
    if(settings->getCombinedCINI() || settings->getCombinedICINI()){
        // determine number of internal faults (number of injected faults - number of input faults)
        int k2 = max_k - input_faults;

        // determine shared fault domains for the outputs (num_of_share*share_domain + fault_domain)
        std::set<std::pair<int, int>> set_of_output_shared_fault_domain;
        for(auto p : output_fault_domain) {
            set_of_output_shared_fault_domain.insert(std::make_pair(p->share_domain(), p->fault_domain()));
        }
        std::set<std::pair<int, int>> set_of_output_shared_fault_domain_temp = set_of_output_shared_fault_domain; // debug

        // determine shared fault domains for the inputs (num_of_share*share_domain + fault_domain)
        std::set<std::pair<int, int>> set_of_input_shared_fault_domain;
        for(auto p : input_fault_domain){
            set_of_input_shared_fault_domain.insert(std::make_pair(p->share_domain(), p->fault_domain()));
        }

        // remove fault domains of the input from output fault domains
        for(auto i : set_of_input_shared_fault_domain){
            set_of_output_shared_fault_domain.erase(i);
        }

        // if the cardinality of the remaining set is larger than the number of internal faults -> MUT is not FINI
        if(set_of_output_shared_fault_domain.size() > k2) {
            state->m_cini_security[core] += 1;

            // store effective faults for reporting and visualization
            if(settings->getCombinedCINI()) m_effective_faults_cini[core].push_back(state->m_current_fault_injections[core].first);
            if(settings->getCombinedICINI()) m_effective_faults_icini[core].push_back(state->m_current_fault_injections[core].first);
        }
    }
}

void
ConfigurationFaultCorrection::finalize(const Settings *settings, State *state) {
    // collect all effective faults of the different strategies and store them in the state
    for(auto f : m_effective_faults_fia) state->m_effective_faults_fia.insert(state->m_effective_faults_fia.end(), f.begin(), f.end());
    for(auto f : m_effective_faults_fni) state->m_effective_faults_fni.insert(state->m_effective_faults_fni.end(), f.begin(), f.end());
    for(auto f : m_effective_faults_fsni) state->m_effective_faults_fsni.insert(state->m_effective_faults_fsni.end(), f.begin(), f.end());
    for(auto f : m_effective_faults_fini) state->m_effective_faults_fini.insert(state->m_effective_faults_fini.end(), f.begin(), f.end());
    for(auto f : m_effective_faults_cni) state->m_effective_faults_cni.insert(state->m_effective_faults_cni.end(), f.begin(), f.end());
    for(auto f : m_effective_faults_csni) state->m_effective_faults_csni.insert(state->m_effective_faults_csni.end(), f.begin(), f.end());
    for(auto f : m_effective_faults_icsni) state->m_effective_faults_icsni.insert(state->m_effective_faults_icsni.end(), f.begin(), f.end());
    for(auto f : m_effective_faults_cini) state->m_effective_faults_cini.insert(state->m_effective_faults_cini.end(), f.begin(), f.end());
    for(auto f : m_effective_faults_icini) state->m_effective_faults_icini.insert(state->m_effective_faults_icini.end(), f.begin(), f.end());

    // Random faulting
    state->m_faulting_probability = 0.0;
    for(auto f : m_faulting_probability) state->m_faulting_probability += f;

    state->m_faulting_probability_bounded = 0.0;
    unsigned int lower = state->m_current_number_of_injected_faults;
    for(unsigned int j=lower+1; j<=state->m_faultLocations.size(); j++){
        state->m_faulting_probability_bounded += binomial_coeff((long double)state->m_faultLocations.size(), (long double)j) *
                                                std::pow(settings->getFaultRandomFaultingProbability(), j) *
                                                std::pow((1-settings->getFaultRandomFaultingProbability()), (state->m_faultLocations.size() -j));
    }


    // Random Faulting composability
    state->m_faulting_probability_composability = 0.0;
    state->m_random_faulting_probabilities_per_input_combination.clear();
    state->m_random_faulting_probabilities_per_input_combination.resize(state->m_random_faulting_composability_input_combinations.size()+1);
    for(auto probs_per_core : m_faulting_probabilities) {
        for(unsigned int idx=0; idx<probs_per_core.size(); idx++) state->m_random_faulting_probabilities_per_input_combination[idx] += probs_per_core[idx];
    }

    state->m_faulting_probability_composability_bounded = 0.0;
    unsigned int lower_comp = state->m_current_number_of_injected_faults; // + state->m_faultLocations_copy.size() - state->m_faultLocations.size();
    for(unsigned int j=lower_comp+1; j<=state->m_faultLocations.size(); j++){
        state->m_faulting_probability_composability_bounded += binomial_coeff((long double)state->m_faultLocations.size(), (long double)j) *
                                                std::pow(settings->getFaultRandomFaultingProbability(), j) *
                                                std::pow((1-settings->getFaultRandomFaultingProbability()), (state->m_faultLocations.size() -j));
    }

    // state->m_faulting_probability_composability_bounded = 0.0;
    // std::vector<long double> intermediate_probabilities_bounded(state->m_random_faulting_composability_input_combinations.size()+1);
    // for(auto probs_per_core : m_faulting_probabilities_bounded) {
    //     for(unsigned int idx=0; idx<probs_per_core.size(); idx++) intermediate_probabilities_bounded[idx] += probs_per_core[idx];
    // }

    // for(auto prob : intermediate_probabilities_bounded) {
    //     state->m_faulting_probability_composability_bounded = (prob > state->m_faulting_probability_composability_bounded) ? prob : state->m_faulting_probability_composability_bounded;
    //     std::cout << "Bound: " << state->m_faulting_probability_composability_bounded << " (" << prob << ")" << std::endl;
    // }
}

void
ConfigurationFaultCorrection::report(std::string service, const Logger *logger, const Settings *settings, State *state) const{
    if(settings->getFaultThresholdFaulting() && (state->m_current_number_of_injected_faults <= settings->getNumberOfFaults())){
        /* Print header */
        logger->header("ANALYSIS REPORT THRESHOLD FAULTING");

        // Fault Injection
        double effective = 0, ineffective = 0, detected = 0, scenarios = 0;
        for(auto v : state->m_effective) effective += v;
        for(auto v : state->m_scenarios) scenarios += v;

        if(settings->getVerbose() > 0) {
            logger->log(service, this->m_name, "Effective faults:   " + std::to_string((u_int64_t)effective));
            logger->log(service, this->m_name, "Fault scenarios:    " + std::to_string((u_int64_t)scenarios));
        }

        /* Print footer */
        if (!effective)
            logger->footer(service, this->m_name, SUCCESS);
        else
            logger->footer(service, this->m_name, FAILURE);
    }

    /* ReportFNI */
    if(settings->getFaultFNI() && (state->m_current_number_of_injected_faults <= settings->getNumberOfFaults())){
        /* Print header */
        logger->header("ANALYSIS REPORT FNI");

        // Fault Injection
        double secure = 0;
        for(auto v : state->m_na_security) secure += v;


        if(settings->getVerbose() > 0){
            logger->log(service, this->m_name, "Evaluation results for FNI verification.");
            logger->log(service, this->m_name, std::to_string(secure) + " fault injections violate the FNI properties.");
        }

        /* Print footer */
        if (secure == 0)
            logger->footer(service, this->m_name, SUCCESS);
        else
            logger->footer(service, this->m_name, FAILURE);
    }

    /* Report FSNI */
    if(settings->getFaultFSNI() && (state->m_current_number_of_injected_faults <= settings->getNumberOfFaults())){
        /* Print header */
        logger->header("ANALYSIS REPORT FSNI");

        // Fault Injection
        double secure = 0;
        for(auto v : state->m_sna_security) secure += v;


        if(settings->getVerbose() > 0){
            logger->log(service, this->m_name, "Evaluation results for FSNI verification.");
            logger->log(service, this->m_name, std::to_string(secure) + "  fault injections violate the FSNI properties.");
        }

        /* Print footer */
        if (secure == 0)
            logger->footer(service, this->m_name, SUCCESS);
        else
            logger->footer(service, this->m_name, FAILURE);
    }

    /* Report FINI */
    if(settings->getFaultFINI() && (state->m_current_number_of_injected_faults <= settings->getNumberOfFaults())){
        /* Print header */
        logger->header("ANALYSIS REPORT FINI");

        // Fault Injection
        double secure = 0;
        for(auto v : state->m_fini_security) secure += v;


        if(settings->getVerbose() > 0){
            logger->log(service, this->m_name, "Evaluation results for FINI verification.");
            logger->log(service, this->m_name, std::to_string(secure) + "  fault injections violate the FINI properties.");
        }

        /* Print footer */
        if (secure == 0)
            logger->footer(service, this->m_name, SUCCESS);
        else
            logger->footer(service, this->m_name, FAILURE);
    }

    /* Report Random Faulting */
    if(settings->getFaultRandomFaulting()){
        /* Print header */
        logger->header("ANALYSIS REPORT RANDOM FAULTING");

        /* Print results */
        if(settings->getVerbose() > 0){
            std::stringstream prob;
            prob << std::scientific;  
            prob << state->m_faulting_probability;

            std::stringstream prob_bounded;
            prob_bounded << std::scientific;  
            prob_bounded << (state->m_faulting_probability + state->m_faulting_probability_bounded);
            
            logger->log(service, this->m_name, "Fault-security order:           " + std::to_string(settings->getNumberOfFaults()));
            logger->log(service, this->m_name, "wire faulting probability:      " + std::to_string(settings->getFaultRandomFaultingProbability()));
            logger->log(service, this->m_name, "Maximum number of faults:       " + std::to_string(settings->getFaultRandomFaultingMaxFaults()));
            logger->log(service, this->m_name, "Number of wires:                " + std::to_string(state->m_faultLocations.size()));
            logger->log(service, this->m_name, "Faulting probability:           \u03BC = " + prob.str());
            logger->log(service, this->m_name, "Faulting probability (bounded): \u03BC_max = " + (prob_bounded).str());
            logger->log(service, this->m_name, "Number of faults:               " + std::to_string(m_counter));
        }

        /* Print footer */
        logger->footer(service, this->m_name, SUCCESS);
    }

    /* Report Random Faulting Composability */
    if(settings->getFaultRandomFaultingComposability()){
        /* Print header */
        logger->header("ANALYSIS REPORT RANDOM FAULTING COMPOSABILITY");

        /* Print results */
        if(settings->getVerbose() > 0){
            std::stringstream prob;
            prob << std::scientific;  
            prob << state->m_faulting_probability_composability;

            std::stringstream prob_bounded;
            prob_bounded << std::scientific;  
            prob_bounded << (state->m_faulting_probability_composability + state->m_faulting_probability_composability_bounded);
            
            logger->log(service, this->m_name, "Fault-security order:           " + std::to_string(settings->getNumberOfFaults()));
            logger->log(service, this->m_name, "wire faulting probability:      " + std::to_string(settings->getFaultRandomFaultingProbability()));
            logger->log(service, this->m_name, "Maximum number of faults:       " + std::to_string(settings->getFaultRandomFaultingMaxFaults()));
            logger->log(service, this->m_name, "Number of wires:                " + std::to_string(state->m_faultLocations.size()));
            logger->log(service, this->m_name, "Faulting probability:           \u03BC = " + prob.str());
            logger->log(service, this->m_name, "Faulting probability (bounded): \u03BC_max = " + prob_bounded.str());
            logger->log(service, this->m_name, "Number of faults:               " + std::to_string(m_counter));
        }

        /* Print footer */
        logger->footer(service, this->m_name, SUCCESS);
    }
}



void
ConfigurationFaultCorrection::reset_bounds(const Settings *settings, State *state, int core){
    #pragma omp critical
    {    
        // reset container for random faulting 
        if(settings->getFaultRandomFaulting()){
            m_faulting_probability_bounded[core] = 0.0;
        }

        // initialize container for random faulting composability
        if(settings->getFaultRandomFaultingComposability()){
            std::vector<long double> temp(state->m_random_faulting_composability_input_combinations.size()+1, 0.0);
            m_faulting_probabilities_bounded[core] = temp;
        }
    }
}