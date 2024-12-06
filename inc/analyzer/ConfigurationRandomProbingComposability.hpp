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

#ifndef __VERICA_ANALYZER_CONFIGURATION_RANDOM_PROBING_COMPOSABILITY_HPP_
#define __VERICA_ANALYZER_CONFIGURATION_RANDOM_PROBING_COMPOSABILITY_HPP_

#include "analyzer/ConfigurationCombinable.hpp"

class ConfigurationRandomProbingComposability : public ConfigurationCombinable
{
    public:

        ConfigurationRandomProbingComposability(std::string name, const Composability type);

        /* Initialize analysis for given context & configuration */
        void initialize(const Settings *settings, State *state) override;

        /* Perform analysis for given context & configuration */
        void execute(const Settings *settings, State *state) override;

        /* Finalize analysis for given context & configuration */
        void finalize(const Settings *settings, State *state) override;

        /* Report analysis results for given context & configuration */
        void report(std::string service, const Logger *logger, const Settings *settings, State *state) const override;

        void insert(const ConfigurationCombinable* configuration);

        /* Accessor function(s) */
        const bool& independent() const { return this->m_independent; }
        const long double leaking_probability() const { return this->m_leaking_probability; }
        const long double leaking_probability_bound() const { return this->m_leaking_probability_upper_bound; }
        const int combination() const { return this->m_combination_cnt; }

        /* Mutator function(s) */
        //  void current_probes(const std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>> current_probes) { this->m_current_probes = current_probes; std::cout << "current probes: " << m_current_probes.first.size() << std::endl;};

        Composability getType() const override;

    private:

        void random_probing(const Settings *settings, State *state, std::vector<const verica::Wire*> &wires, std::vector<const verica::Wire*> comb, int ptr);

        bool probing_security(const Settings *settings, State *state);

        void update_upper_bound(const Settings *settings, State *state, std::vector<const verica::Wire*> &wires, std::vector<const verica::Wire*> &comb, int &ptr, long double &scaling);

        void direct_convolution(std::vector<long double> &vec1, std::vector<long double> vec2);

        Composability m_type;                                                                               /**< Notion type */

        unsigned int m_max_order;                                                                           /**< Maximum security order for current design */
        std::vector<const verica::Wire*> m_wires_mut;                                                          /**< Contains all wires of the module under test that are considered for probing checks */
        std::vector<const verica::Wire*> m_current_probe_combination;                                       /**< Container for current probe combination */
        std::vector<long double> m_leaking_probabilities;                                                   /**< Storing leaking probabilities */
        std::vector<long double> m_leaking_probabilities_upper_bound;                                       /**< Storing leaking probabilities */
        long double m_leaking_probability = 0.0;                                                            /**< Storing leaking probability */
        long double m_leaking_probability_upper_bound = 0.0;                                                /**< Storing leaking probability */
        long double m_final_leaking_probability = 0.0;
        long double m_final_leaking_probability_upper_bound = 0.0;
        long unsigned int  m_combination_cnt = 0;
};

#endif // __VERICA_ANALYZER_CONFIGURATION_RANDOM_PROBING_COMPOSABILITY_HPP_
