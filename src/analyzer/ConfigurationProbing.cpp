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

#include "analyzer/ConfigurationProbing.hpp"

void
ConfigurationProbing::initialize(const Settings *settings, State *state)
{
    /* Get maximum order of security */
    this->m_max_order = (settings->getSideChannelOrder() > 0) ? settings->getSideChannelOrder() : state->m_min_shared_inputs.size() - 1;

    /* Clear failing probes (from previous runs) */
    this->m_failing_probes.clear();
}

void
ConfigurationProbing::execute(const Settings *settings, State *state)
{
    /* Current thread number */
    int threadNum = omp_get_thread_num();

    /* Collect current set of shares */
    std::set<const verica::Wire*> variables;
    for(auto probe : this->m_current_probes) {
        variables.insert(probe->variables(threadNum).begin(), probe->variables(threadNum).end());
    }

    std::vector<uint32_t> shares;
    for(auto var : variables){
        if(std::find(shares.begin(), shares.end(), var->primary_input_identifier()) == shares.end())
            shares.push_back(var->primary_input_identifier());
    }

    /* Skip probing (not all shares contributing)? */
    this->m_independent = true;
    for (unsigned int si = 0; si < state->m_shared_inputs.size() && this->m_independent; si++) 
    {
        unsigned int count = 0;

        for (unsigned int sd = 0; sd < state->m_shared_inputs[si].size(); sd++) 
        {
            count += (std::find(shares.begin(), shares.end(), state->m_shared_inputs[si][sd]->primary_input_identifier()) != shares.end());
        }

        this->m_independent &= (count != state->m_shared_inputs[si].size()); 
    }

    if (!this->m_independent)
    {
        /* Current combination of probes */
        std::vector<const verica::Wire*> extended_probes;

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

        /* Collect secrets */
        BDD secrets = state->m_managers[threadNum].bddOne();
        for (auto probe : extended_probes)
            secrets &= probe->secrets(threadNum);

        this->m_independent = true;

        /* Check combinations & secrets for statistical independence */
        for (uint64_t comb = 1; comb < (uint64_t)(1 << extended_probes.size()) && this->m_independent; comb++) 
        { 
            /* Generate probe observation */
            BDD observation = state->m_managers[threadNum].bddOne();
            for (unsigned int elem = 0; elem < extended_probes.size(); elem++){
                if (comb & (1 << elem)) observation &= extended_probes[elem]->functions(threadNum);
            }

            /* Statistical independence check */
            this->m_independent &= state->m_managers[threadNum].bdd_statindependence(observation, secrets);

            if (!this->m_independent){
                this->m_failing_probes.push_back(this->m_current_probes);
            }
        }    

        if(!this->m_independent) {
            this->m_combined_leaking_probes.push_back(this->m_current_probes);

            // add leaking fault injections
            if(settings->getFaultInjection() || settings->getCombined()){
                this->m_combined_leaking_fault_injections.push_back(state->m_current_fault_injections[threadNum]);
            }
        }
    }
}

void
ConfigurationProbing::finalize(const Settings *settings, State *state)
{
    /* Trivial probe combination */
    if (settings->getSideChannelOrder() == 0)
        this->m_failing_probes.push_back(state->m_min_shared_inputs);

    /* Sort failing probe combinations by size (small to large) */
    std::sort(this->m_failing_probes.begin(), this->m_failing_probes.end(), [](const std::vector<const verica::Wire*> & a, const std::vector<const verica::Wire*> & b){ return a.size() < b.size(); });
}

void
ConfigurationProbing::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
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

    /* Add results to state for visualization */
    if(!m_combined_leaking_fault_injections.empty())
        state->m_visualization_faults = m_combined_leaking_fault_injections[0].first;
    if(!m_failing_probes.empty())
        state->m_visualization_probes = m_failing_probes[0];

}

void
ConfigurationProbing::insert(const ConfigurationProbing* configuration)
{
    for (auto combination : configuration->failing_probes())
        if (std::find(this->m_failing_probes.begin(), this->m_failing_probes.end(), combination) == this->m_failing_probes.end())
            this->m_failing_probes.push_back(combination);

    for (auto combination : configuration->combined_failing_probes())
        this->m_combined_leaking_probes.push_back(combination);

    for (auto combination : configuration->combined_leaking_faults())
        this->m_combined_leaking_fault_injections.push_back(combination);   
}
