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

#ifndef __VERICA_ANALYZER_CONFIGURATION_RANDOM_PROBING_HPP_
#define __VERICA_ANALYZER_CONFIGURATION_RANDOM_PROBING_HPP_

#include "analyzer/ConfigurationCombinable.hpp"

class ConfigurationRandomProbing : public ConfigurationCombinable
{
    public:

        ConfigurationRandomProbing(std::string name, const Composability type);

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
        const std::map<int, long unsigned int> counter() const { return this->m_counter; }

        /* Mutator function(s) */

        Composability getType() const override;

    private:

        void random_probing(const Settings *settings, State *state, std::vector<const verica::Wire*> &wires, std::vector<const verica::Wire*> comb, int ptr);

        bool probing_security(const Settings *settings, State *state);

        void update_upper_bound(const Settings *settings, State *state, std::vector<const verica::Wire*> &wires, std::vector<const verica::Wire*> &comb, int &ptr, long double &scaling);

        std::vector<long double> direct_convolution(std::vector<long double> vec1, std::vector<long double> vec2);

        unsigned int m_max_order;                                           /**< Maximum security order for current design */
        std::vector<const verica::Wire*> m_current_probe_combination;       /**< Container for current probe combination */
        long double m_leaking_probability = 0.0;                            /**< Storing leaking probability */
        long double m_leaking_probability_upper_bound = 0.0;                /**< Storing leaking probability */
        long unsigned int m_combination_cnt = 0;
        std::map<int, long unsigned int> m_counter;
};

#endif // __VERICA_ANALYZER_CONFIGURATION_RANDOM_PROBING_HPP_
