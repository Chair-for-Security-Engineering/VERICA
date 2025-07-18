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

#include "preprocessor/ConfigurationSCA.hpp"

void
ConfigurationSCA::initialize(const Settings *settings, State *state){

}  

void
ConfigurationSCA::execute(const Settings *settings, State *state) {
    // Disable auto dynamic reordering 
    /**! @todo: dynamic variable reordering not working for side-channel verification */
    for(auto man : state->m_managers) man.AutodynDisable();
    
    // Compute shared inputs
    determine_shared_inputs(state);

    // Compute shared outputs
    determine_shared_outputs(state);

    if(settings->getSideChannel() || settings->getCombined()){
        // Disable auto dynamic reordering - does not work for side-channel verification
        for(auto man : state->m_managers) man.AutodynDisable();

        // Determine all possible probe positions
        determine_probe_positions(state, settings);
    }
}

void
ConfigurationSCA::update(State *state, const Settings *settings, std::vector<const verica::Wire*> modified, int order, bool simulate_outputs, const int thread_num){
    update_probe_combinations(state, settings, modified, order, simulate_outputs, thread_num);
}

void
ConfigurationSCA::finalize(const Settings *settings, State *state) {
}

void
ConfigurationSCA::report(std::string service, const Logger *logger, const Settings *settings, State *state) const {    
    /* Print header */
    logger->header("Configure SCA");

    /* Print info */
    if(settings->getVerbose() > 0) {
        logger->log(service, this->m_name, "Disabled auto-dynamic reordering for BDDs.");
        logger->log(service, this->m_name, "Determined " + std::to_string(state->m_shared_inputs.size()) + " shared inputs.");
        if(settings->getSideChannel() || settings->getCombined()){
            logger->log(service, this->m_name, ITEM + "Minimum number of shares: " + std::to_string(state->m_min_shared_inputs.size()));
            logger->log(service, this->m_name, "Determined " + std::to_string(m_positions.size()) + " probe positions.");
            logger->log(service, this->m_name, "Determined " + std::to_string(state->m_probe_combinations[0].size()) + " probe combinations.");
        }
        if(settings->getCombinedCNI() || settings->getCombinedCSNI() || settings->getCombinedCINI()){
            logger->log(service, this->m_name, "Determined " + std::to_string(this->m_abort_signals.size()) + " combinations of abort signals.");
        }
    }

    /* Print footer */
    logger->footer(service, this->m_name, SUCCESS);   
}



/* 
 * =========================================================================================
 * Member functions
 * =========================================================================================
 */
void 
ConfigurationSCA::determine_shared_inputs(State *state)
{
    /* Check error conditions */
    if (state->m_managers.size() == 0) throw std::logic_error(this->m_name + ": Design is not elaborated!");
    if (state->m_netlist_model->topmodule()->wires().size() == 0) throw std::logic_error(this->m_name + ": Detected empty top module!");

    /* Initialize set of BDD variables */
    std::set<const verica::Wire*> variables;

    /* Collect shared inputs and shared variables */
    for (auto p : state->m_netlist_model->topmodule()->input_pins())
    {        
        if (p->port_type() == verica::Flag::None && p->share_index() != -1 && p->share_domain() != -1)
        {
            state->m_shared_inputs[p->share_index()].push_back(p->fan_out());
            variables.insert(p->fan_out()->variables(0).begin(), p->fan_out()->variables(0).end());
        }
    }

    /* Erase duplicated shared inputs */
    for (auto input : state->m_shared_inputs)
    {        
        std::sort(state->m_shared_inputs[input.first].begin(), 
                  state->m_shared_inputs[input.first].end(),
                  [](const verica::Wire* a, const verica::Wire* b) { return a->source_pin()->share_domain() < b->source_pin()->share_domain(); }   
        );
        state->m_shared_inputs[input.first].erase(
            std::unique(state->m_shared_inputs[input.first].begin(), state->m_shared_inputs[input.first].end(), 
                [](const verica::Wire* w0, const verica::Wire* w1){return w0->source_pin()->share_domain() == w1->source_pin()->share_domain();}), 
            state->m_shared_inputs[input.first].end()
        );
    }

    /* Determine wires of the shared variables */
    for(auto v : variables) state->m_shared_variables.push_back(v);

    /* Find smallest inputs sharing */
    int minimal = (*state->m_shared_inputs.begin()).first;
    for(auto m : state->m_shared_inputs)
        minimal = (m.second.size() < state->m_shared_inputs[minimal].size()) ? m.first : minimal;

    state->m_min_shared_inputs = state->m_shared_inputs[minimal];
}

void 
ConfigurationSCA::determine_shared_outputs(State *state) {
    /* Check error conditions */
    if (state->m_managers.size() == 0) throw std::logic_error(this->m_name + ": Design is not elaborated!");
    if (state->m_netlist_model->topmodule()->wires().size() == 0) throw std::logic_error(this->m_name + ": Detected empty top module!");

    /* Collect shared inputs and shared variables */
    for (auto p : state->m_netlist_model->topmodule()->output_pins()){        
        if (p->port_type() == verica::Flag::None && p->share_index() != -1 && p->share_domain() != -1){
            state->m_shared_outputs[p->share_index()].push_back(p);
        }
    }

    /* Erase duplicated shared outputs */
    for (auto output : state->m_shared_outputs){        
        std::sort(state->m_shared_outputs[output.first].begin(), 
                  state->m_shared_outputs[output.first].end(),
                  [](const verica::Pin* a, const verica::Pin* b) { return a->share_domain() < b->share_domain(); }   
        );
        state->m_shared_outputs[output.first].erase(
            std::unique(state->m_shared_outputs[output.first].begin(), state->m_shared_outputs[output.first].end(), 
                [](const verica::Pin* w0, const verica::Pin* w1){return w0->share_domain() == w1->share_domain();}), 
            state->m_shared_outputs[output.first].end()
        );
    }

    /* Find smallest output sharing */
    int minimal = (*state->m_shared_outputs.begin()).first;
    for(auto m : state->m_shared_outputs)
        minimal = (m.second.size() < state->m_shared_outputs[minimal].size()) ? m.first : minimal;

    state->m_min_shared_outputs = state->m_shared_outputs[minimal];
}

void 
ConfigurationSCA::determine_probe_positions(State *state, const Settings *settings){
 /* Check error conditions */
    if (state->m_netlist_model->num_wires() == 0) throw std::logic_error(this->m_name + ": Detected empty set of probe positions!");

    /* Reduce probe combinations for glitches */
    if (settings->getSideChannelModelGlitches())
    {
        for (unsigned int idx = 0; idx < state->m_netlist_model->module_under_test()->wires().size(); idx++)
        {
            /* Current position */
            const verica::Wire *current = state->m_netlist_model->module_under_test()->wires()[idx];
            const verica::Pin *source = current->source_pin();

            /* Collect sequential probes */
            bool is_sequential = false;
            for (auto target : current->target_pins()) 
                is_sequential |= (target->parent_module()->is_sequential());
            
            /* Collect input probes */
            bool is_input_pin = (source->parent_module() == state->m_netlist_model->module_under_test());

            /* Collect output probes */
            bool is_output_pin = false;
            for (auto target : current->target_pins()) 
                is_output_pin |= (target->parent_module() == state->m_netlist_model->module_under_test());

            if (is_sequential || is_input_pin || is_output_pin) {
                // Only add wire if not blacklisted
                if(!current->sca_ignore()) m_positions.push_back(current);
            }
        }
    } 
    else {
        for(auto w : state->m_netlist_model->module_under_test()->wires()){
            bool is_output_pin = false;
            for (auto target : w->target_pins()) 
                is_output_pin |= (target->parent_module() == state->m_netlist_model->module_under_test());

            // Only add wire if not blacklisted
            if(!w->sca_ignore()) m_positions.push_back(w);
        }
    }


    /* Add abort signal to probe positions if combined analysis is enabled */
    if(settings->getCombinedCNI() || settings->getCombinedCSNI() || settings->getCombinedCINI()){
        // collect abort signals (error flags)
        std::vector<const verica::Wire*> error_flags;
        for(auto p : state->m_netlist_model->module_under_test()->output_pins()){
            if(p->port_type() == verica::ErrorFlag) error_flags.push_back(p->fan_in());
        }

        for(unsigned int comb=1; comb <= ((1 << error_flags.size())-1); comb++){
            std::vector<const verica::Wire*> new_comb;
            for(unsigned int bit=0; bit < error_flags.size(); bit++){
                if((comb >> bit) & 1) new_comb.push_back(error_flags[bit]);
            }
            this->m_abort_signals.push_back(new_comb);
        }
    }


    /* Identify outputs with same share domain */
    // First, identify share domains
    std::set<int> domains;
    for(auto p : state->m_netlist_model->module_under_test()->output_pins()){
        if (p->port_type() == verica::Flag::None && p->share_index() != -1 && p->share_domain() != -1) domains.insert(p->share_domain());
    }
    
    // Second, loop over all existing domains and collect corresponding wires
    for(auto d : domains){
        for(auto p : state->m_netlist_model->module_under_test()->output_pins()){
            if (p->port_type() == verica::Flag::None && p->share_index() != -1 && p->share_domain() != -1){
                if(d == p->share_domain()) m_outputs_same_domain[d].push_back(p->fan_in());
            }
        }  
    }


    /* Check for empty set */
    if (m_positions.size() == 0) throw std::logic_error(this->m_name + ": Detected empty set of probe positions!");


}

void
ConfigurationSCA::update_probe_combinations(State *state, const Settings *settings, std::vector<const verica::Wire*> modified, int max_order, bool simulate_outputs, const int thread_num) {
    /* Clear current set of probe combinations */
    state->m_probe_combinations[thread_num].clear();

    /* Define container collecting already covered domains */
    std::vector<std::set<int>> covered_domains;

    /* Generate all possible probe combinations for all orders */
    for (int order = 0; order < max_order; order++) {
        /* Initialize bitmask (first combination) */
        std::vector<bool> bitmask(m_positions.size());
        std::fill(bitmask.begin(), bitmask.begin() + (order + 1), true);

        /* Generate all possible probe combinations for current order */
        do
        {
            std::vector<const verica::Wire*> probes;
            int min = 0;
            int max = 0;
            int num_output_probes = 0;

            /* Check distance of probes (register stages) for multi-variate analysis */
            for (unsigned int idx = 0; idx < bitmask.size(); idx++) {
                if (bitmask[idx]) {
                    /* Generate probe combination */
                    probes.push_back(m_positions[idx]);

                    /* Initialize min/max stage index & support BDD */
                    if (probes.size() == 1) {
                        min = m_positions[idx]->stage_index();
                        max = m_positions[idx]->stage_index();
                    }

                    /* Update min/max stage index & support BDD */
                    else {
                        min = (min > m_positions[idx]->stage_index()) ? m_positions[idx]->stage_index() : min;
                        max = (max < m_positions[idx]->stage_index()) ? m_positions[idx]->stage_index() : max;
                    }
                }
            }

            /* Skip combinations*/
            bool skip = false;

            /* Skip combination if multi-variate threshold exceeded */
            skip |= (((max - min) >= settings->getSideChannelVariate()) && (settings->getSideChannelVariate() != 0));

            /* Skip if already analyzed but did not change (e.g., not in fault propagation path) */
            bool found = false;
            for (unsigned int elem = 0; elem < probes.size() && !found; elem++)
                found |= (std::find(modified.begin(), modified.end(), probes[elem]) != modified.end());
            skip |= !found;

            /* Add probe combination */
            if (!skip){
                std::vector<const verica::Wire*> virtual_probes;
                state->m_probe_combinations[thread_num].push_back(std::make_pair(probes, virtual_probes));

                /* Simulate all outputs of the same domain for PINI, CINI, ICINI */
                if(simulate_outputs){
                    // collect output domains
                    std::set<int> domains;
                    for(auto probe : probes){
                        for(auto p : probe->target_pins()) {
                            if(p->parent_module() == state->m_netlist_model->module_under_test()) domains.insert(p->share_domain());
                        }
                    }

                    if(std::find(covered_domains.begin(), covered_domains.end(), domains) == covered_domains.end()){
                        // collect all wires belonging to collected domains
                        std::vector<const verica::Wire*> wires;
                        for(auto d : domains) wires.insert(wires.end(), m_outputs_same_domain[d].begin(), m_outputs_same_domain[d].end());

                        // create combinations
                        for(uint64_t comb=1; comb <= ((1ull << wires.size())-1); comb++){
                            std::vector<const verica::Wire*> new_comb;
                            for(uint64_t bit=0; bit < wires.size(); bit++){
                                if((comb >> bit) & 1) new_comb.push_back(wires[bit]);
                            }
                            state->m_probe_combinations[thread_num].push_back(std::make_pair(probes, new_comb));
                        }

                        covered_domains.push_back(domains);
                    }
                }
            }
        }   
        while(std::prev_permutation(bitmask.begin(), bitmask.end()));
    }


    /* Add abort signals to updated probe combinations for combined analysis */
    if(settings->getCombinedCNI() || settings->getCombinedCSNI() || settings->getCombinedCINI()){
        unsigned int num_original_comb = state->m_probe_combinations[thread_num].size(); 

        for(auto comb : this->m_abort_signals){
            if(num_original_comb == 0){
                // empty vector for real probes (only virtual probes are available)
                std::vector<const verica::Wire*> temp;  
                state->m_probe_combinations[thread_num].push_back(std::make_pair(temp, comb));
            } else {
                for(unsigned int pos=0; pos<num_original_comb; pos++){
                    // extract real probes
                    std::vector<const verica::Wire*> real_probes = state->m_probe_combinations[thread_num][pos].first;

                    // combine real probes with "virtual" probes (i.e., abort signals)
                    state->m_probe_combinations[thread_num].push_back(std::make_pair(real_probes, comb));
                }
            }
        }
        
    }
}
