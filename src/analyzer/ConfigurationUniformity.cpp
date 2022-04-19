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

#include "analyzer/ConfigurationUniformity.hpp"

#include "util.hpp"

void
ConfigurationUniformity::initialize(State *state)
{

    /* Count input shares */
    this->m_variable_count = state->m_shared_variables.size();
    
    /* Count refresh inputs */
    for (auto p : state->m_netlist_model->module_under_test()->input_pins())
        if (p->port_type() == verica::Refresh) this->m_variable_count++;
        
    /* Collect output shares */
    for (auto p : state->m_netlist_model->module_under_test()->output_pins()) 
        this->m_output_shares[p->share_index()].push_back(p->fan_in());
        
}

void
ConfigurationUniformity::execute(const Settings *settings, State *state)
{
    (void)settings; // We do not need a settings object in this function. However, it must be given as paramter due to an overwriting. 

    /* Initialize */
    this->m_uniform = true;

    /* Generate & check all possible (intra) output combinations */
    std::vector<std::vector<BDD>> intra(this->m_output_shares.size());
    for (unsigned int idx = 0; idx < this->m_output_shares.size() && this->m_uniform; idx++) {
        for (uint64_t comb = 1; comb < ((1ull << this->m_output_shares[idx].size()) - 1) && this->m_uniform; comb++) {
            intra[idx].push_back(state->m_managers[0].bddZero());
            for (unsigned int elem = 0; elem < this->m_output_shares[idx].size(); elem++) {
                if (comb & (1 << elem)) intra[idx].back() ^= this->m_output_shares[idx][elem]->functions(0);
            }

            if (abs(state->m_managers[0].bdd_satcountln(intra[idx].back(), this->m_variable_count) - this->m_variable_count + 1) > DOUBLE_COMPARE_THRESHOLD) this->m_uniform = false;
        }
    }

    /* Generate & check all possible (inter) output combinations */
    if (this->m_uniform) this->m_uniform = inter_vector_combinations_xor(state->m_managers[0], intra, 0, state->m_managers[0].bddZero(), this->m_variable_count); 
}

void
ConfigurationUniformity::finalize()
{

}

void
ConfigurationUniformity::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
{   
    (void)settings; // We do not need a settings object in this function. However, it must be given as paramter due to an overwriting.
    (void)state; // We do not need a state object in this function. However, it must be given as paramter due to an overwriting.

    /* Print header */
    logger->header("ANALYSIS REPORT");
    
    /* Print results */
    if (this->m_uniform) {
        logger->log(service, this->m_name, SUCCESS);
    } else {
        logger->log(service, this->m_name, FAILURE);
    }
}