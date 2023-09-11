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

#ifndef __VERICA_ANALYZER_CONFIGURATION_COMPOSABILITY_HPP_
#define __VERICA_ANALYZER_CONFIGURATION_COMPOSABILITY_HPP_

#include "Configuration.hpp"

// enum Composability { NI, SNI, PINI, CNI, CSNI, ICSNI, CINI, ICINI };

class ConfigurationComposability : public Configuration
{
    public:
    
        /* Constructor(s) */
        ConfigurationComposability(std::string name, const Composability type);

        /* Initialize analysis for given context & configuration */
        void initialize(const Settings *settings, State *state);

        /* Perform analysis for given context & configuration */
        void execute(const Settings *settings, State *state) override;

        /* Finalize analysis for given context & configuration */
        void finalize(const Settings *settings, State *state) override;

        /* Report analysis results for given context & configuration */
        void report(std::string service, const Logger *logger, const Settings *settings, State *state) const override;
        
        /* Insert failing probes of external configuration into this configuration*/
        void insert(const ConfigurationComposability* configuration);

        /* Accessor function(s) */
        const bool& independent() const { return this->m_independent; }
        const std::vector<std::vector<const verica::Wire*>>& failing_probes() const { return this->m_failing_probes; };
        const std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>>> & leaking_combinations() const { return this->m_leaking_combinations; };

        /* Mutator function(s) */
        void current_probes(const std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>> current_probes) { this->m_current_probes = current_probes; };

    private:    
        void inter_vector_combinations_and(const std::vector<std::vector<std::set<const verica::Wire*>>> &intra, unsigned int offset, std::set<const verica::Wire*> combination, std::vector<std::set<const verica::Wire*>> &inter);

        Composability m_type;

        unsigned int m_max_order;                                                                           /**< Maximum security order for current design */
        bool m_independent;                                                                                 /**< Statistical independence for current probe combination */
        std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>> m_current_probes;     /**< Container for current probe combination separated into real and virtual probes */
        std::vector<std::vector<const verica::Wire*>> m_failing_probes;                                     /**< Container for failing probe combinations */

        /* Container for failing probe combinations under fault injections */ 
        std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>>> m_leaking_combinations;  /**< Container for combinations of probes and faults */
};

#endif // __VERICA_ANALYZER_CONFIGURATION_COMPOSABILITY_HPP_