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

#include "analyzer/ConfigurationFaultDetection.hpp"
#include "util.hpp"

void
ConfigurationFaultDetection::execute(const Settings *settings, State *state) {
    int core = omp_get_thread_num();
    int max_k = state->m_current_number_of_injected_faults;

    // Add error flags of the faulty model
    BDD comp = state->m_managers[core].bddOne();
    for(auto w : state->m_error_flags){
        comp &= w->faulty_functions(core);
    }

    // Check if random inputs are faulted
    std::map<const verica::Wire*, verica::fault::Fault> faulted_rand_inputs;
    for(unsigned int i=0; i<state->m_current_fault_injections[core].first.size(); ++i){
        if(state->m_current_fault_injections[core].first[i]->source_pin()->port_type() == verica::Refresh) 
            faulted_rand_inputs[state->m_current_fault_injections[core].first[i]] = state->m_current_fault_injections[core].second[i];
    }

    // Compare (adapted) golden and faulty model
    BDD compprime = state->m_managers[core].bddZero();
    uint64_t cnt_faults = 0;

    if(faulted_rand_inputs.empty()){
        // no random input is faulted
        for(auto w : state->m_data_output_wires){
            BDD diff = w->golden_functions(core) ^ w->faulty_functions(core);
            compprime |= diff;
            if(!((diff & comp).IsZero())) cnt_faults++;
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
                        throw std::logic_error("[DETECTION-ANALYZER] Invalid fault for random inputs!");
                        break;
                }
                temp = temp.Compose(new_node, idx);
            }
            BDD diff = temp ^ w->faulty_functions(core);
            compprime |= diff;
            if(!((diff & comp).IsZero())) cnt_faults++;
        }
    }
    
    // Evaluate
    if ((compprime & (comp)).CountMinterm(state->m_mut_input_size) == 0){
        state->m_effective[core] += 0;  
    } else {
        state->m_effective[core] += 1;
    }

    if ((compprime & (!comp)).CountMinterm(state->m_mut_input_size) == 0){
        state->m_detected[core] += 0;  
    } else {
        state->m_detected[core] += 1;
    }

    state->m_scenarios[core] += 1;

    // CheckFNI and FSNI security
    int input_faults = 0;
    for(auto f : state->m_current_fault_injections[core].first){
        if(f->primary_input_identifier() != -1) input_faults++;
    }

    if(settings->getFaultFNI() || settings->getCombinedCNI()){
        if(cnt_faults > (unsigned int)max_k) state->m_na_security[core] += 1;
    }

    if(settings->getFaultFSNI() || settings->getCombinedCSNI() || settings->getCombinedICSNI()){
        if(cnt_faults > (unsigned int)(max_k-input_faults)) state->m_sna_security[core] += 1;
    }

//     if(cnt_faults > max_k){
//         std::cout << "cnt faults: " << cnt_faults << " Fault location: ";
//         for(auto w : state->m_current_fault_injections[0].first)
//             std::cout << w->name() << " ";
//         std::cout << std::endl;
//     }
}

void
ConfigurationFaultDetection::report(std::string service, const Logger *logger, const Settings *settings, State *state) const {
    /* Print header */
    logger->header("ANALYSIS REPORT");

    // Fault Injection
    double effective = 0, ineffective = 0, detected = 0, scenarios = 0;
    for(auto v : state->m_effective) effective += v;
    for(auto v : state->m_detected) detected += v;
    for(auto v : state->m_scenarios) scenarios += v; 
    ineffective = scenarios - effective - detected; 

    if(settings->getVerbose() > 0) {
        logger->log(service, this->m_name, "Effective faults:   " + std::to_string(effective));
        logger->log(service, this->m_name, "Ineffective faults: " + std::to_string(ineffective));
        logger->log(service, this->m_name, "Detected faults:    " + std::to_string(detected));
        logger->log(service, this->m_name, "Fault scenarios:    " + std::to_string(scenarios));
    } 

    /* Print footer */
    if (!effective)
        logger->footer(service, this->m_name, SUCCESS);
    else
        logger->footer(service, this->m_name, FAILURE);

    
    /* ReportFNI */
    if(settings->getFaultFNI()){
        /* Print header */
        logger->header("ANALYSIS REPORT FNI");

        // Fault Injection
        double secure = 0;
        for(auto v : state->m_na_security) secure += v;


        if(settings->getVerbose() > 0){
            logger->log(service, this->m_name, "Evaluation results forFNI verificatin.");
            logger->log(service, this->m_name, std::to_string(secure) + " fault injections violate theFNI properties.");
        }    

        /* Print footer */
        if (secure == 0)
            logger->footer(service, this->m_name, SUCCESS);
        else
            logger->footer(service, this->m_name, FAILURE);
    }

    /* Report FSNI */
    if(settings->getFaultFSNI()){
        /* Print header */
        logger->header("ANALYSIS REPORT FSNI");

        // Fault Injection
        double secure = 0;
        for(auto v : state->m_sna_security) secure += v;


        if(settings->getVerbose() > 0){
            logger->log(service, this->m_name, "Evaluation results for FSNI verificatin.");
            logger->log(service, this->m_name, std::to_string(secure) + "  fault injections violate the FSNI properties.");
        }    

        /* Print footer */
        if (secure == 0)
            logger->footer(service, this->m_name, SUCCESS);
        else
            logger->footer(service, this->m_name, FAILURE);
    }
}










    // Working on unshared data...
    // std::map<int, std::vector<BDD>> map_unshared_outputs_faulty;
    // std::map<int, std::vector<BDD>> map_unshared_outputs_golden;
    // for (auto p : state->m_netlist_model->module_under_test()->output_pins()) {
    //     if(p->share_index() != -1) {
    //         map_unshared_outputs_faulty[p->share_index()].push_back(p->fan_in()->faulty_functions(core));
    //         map_unshared_outputs_golden[p->share_index()].push_back(p->fan_in()->golden_functions(core));
    //     }
    // }

    // // Unshare faulty outputs
    // std::vector<BDD> unshared_outputs_faulty;
    // for(auto output_share : map_unshared_outputs_faulty){
    //     BDD temp = state->m_managers[core].bddZero();
    //     for(auto o : output_share.second)
    //         temp ^= o;
    //     unshared_outputs_faulty.push_back(temp);
    // }

    // // unshare golden outputs
    // std::vector<BDD> unshared_outputs_golden;
    // for(auto output_share : map_unshared_outputs_golden){
    //     BDD temp = state->m_managers[core].bddZero();
    //     for(auto o : output_share.second)
    //         temp ^= o;
    //     unshared_outputs_golden.push_back(temp);
    // }

    // // Identify outputs that do not match or are detected
    // BDD compprime = state->m_managers[core].bddZero();
    // uint64_t cnt_faults = 0;
    // for (int out = 0; out < unshared_outputs_golden.size(); out++) {
    //     BDD temp = (unshared_outputs_golden[out] ^ unshared_outputs_faulty[out]);
    //     compprime |= temp;
    //     if(!((temp & comp).IsZero())) cnt_faults++;
    // }
