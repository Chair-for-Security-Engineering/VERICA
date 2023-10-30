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

#include "analyzer/ConfigurationCombinable.hpp"

// enum Composability { NI, SNI, PINI, CNI, CSNI, ICSNI, CINI, ICINI };

class ConfigurationComposability : public ConfigurationCombinable
{
    public:

        /* Constructor(s) */
        ConfigurationComposability(std::string name, const Composability type);

        /* Initialize analysis for given context & configuration */
        void initialize(const Settings *settings, State *state) override;

        /* Perform analysis for given context & configuration */
        void execute(const Settings *settings, State *state) override;

        /* Finalize analysis for given context & configuration */
        void finalize(const Settings *settings, State *state) override;

        /* Report analysis results for given context & configuration */
        void report(std::string service, const Logger *logger, const Settings *settings, State *state) const override;

        Composability getType() const override;

    private:
        void inter_vector_combinations_and(const std::vector<std::vector<std::set<const verica::Wire*>>> &intra, unsigned int offset, std::set<const verica::Wire*> combination, std::vector<std::set<const verica::Wire*>> &inter);

        Composability m_type;

        unsigned int m_max_order;                                                                           /**< Maximum security order for current design */
};

#endif // __VERICA_ANALYZER_CONFIGURATION_COMPOSABILITY_HPP_
