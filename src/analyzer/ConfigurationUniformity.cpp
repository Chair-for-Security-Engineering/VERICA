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

#include "analyzer/ConfigurationUniformity.hpp"

#include "util.hpp"

void
ConfigurationUniformity::initialize(const Settings *settings, State *state)
{
    /* Count input shares */
    this->m_variable_count = state->m_shared_variables.size();
    
    /* Count refresh inputs */
    for (auto p : state->m_netlist_model->module_under_test()->input_pins())
        if (p->port_type() == verica::Refresh) this->m_variable_count++;
        
    /* Collect output shares separated by fault domains */
    std::set<int> fault_domains;
    for (auto p : state->m_netlist_model->module_under_test()->output_pins()){
        fault_domains.insert(p->fault_domain());
    }

    for (auto d : fault_domains){
        std::map<int, std::vector<const verica::Wire*>> output_shares_per_fault_domain;
        for (auto p : state->m_netlist_model->module_under_test()->output_pins()){
            if(p->fault_domain() == d)
                output_shares_per_fault_domain[p->share_index()].push_back(p->fan_in());
        }
        this->m_output_shares.push_back(output_shares_per_fault_domain);
    }

}

void
ConfigurationUniformity::execute(const Settings *settings, State *state)
{
    (void)settings; // We do not need a settings object in this function. However, it must be given as parameter due to an overwriting. 

    /* Initialize */
    this->m_uniform = true;

    /* Generate & check all possible (intra) output combinations */
    for(auto output_shares : this->m_output_shares){
        std::vector<std::vector<BDD>> intra(output_shares.size());
        unsigned int share_cnt = 0;
        for (auto output_shares_map : output_shares){
            for (uint64_t comb = 1; comb < ((1ull << output_shares_map.second.size()) - 1) && this->m_uniform; comb++) {
                intra[share_cnt].push_back(state->m_managers[0].bddZero());
                for (unsigned int elem = 0; elem < output_shares_map.second.size(); elem++) {
                    if (comb & (1 << elem)) intra[share_cnt].back() ^= output_shares_map.second[elem]->functions(0);
                }

                if (abs(state->m_managers[0].bdd_satcountln(intra[share_cnt].back(), this->m_variable_count) - this->m_variable_count + 1) > DOUBLE_COMPARE_THRESHOLD) this->m_uniform = false;
            }
            share_cnt++;

            if(!this->m_uniform) break;
        }

        /* Generate & check all possible (inter) output combinations */
        if (this->m_uniform) this->m_uniform = inter_vector_combinations_xor(state->m_managers[0], intra, 0, state->m_managers[0].bddZero(), this->m_variable_count); 
    }

}

void
ConfigurationUniformity::finalize()
{

}

void
ConfigurationUniformity::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
{   
    (void)settings;     // We do not need a settings object in this function. However, it must be given as paramter due to an overwriting.
    (void)state;        // We do not need a state object in this function. However, it must be given as paramter due to an overwriting.

    /* Print header */
    logger->header("ANALYSIS REPORT");

    /* Print some information */
    logger->log(service, this->m_name, "Performed uniformity checks on " + std::to_string(this->m_output_shares.size()) + " fault domains.");
    
    /* Print footer */
    if (this->m_uniform) {
        logger->footer(service, this->m_name, SUCCESS);
    } else {
        logger->footer(service, this->m_name, FAILURE);
    }
}