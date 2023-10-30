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

#pragma once
#include <string>

#include "context/Logger.hpp"
#include "context/Settings.hpp"
#include "context/State.hpp"
#include "Configuration.hpp"

class ConfigurationCombinable : public Configuration
{
    public:

        /* Constructor(s) */
        ConfigurationCombinable(std::string name) : Configuration(name){ };

        /* Destructor */
        virtual ~ConfigurationCombinable() { };

        /* Virtual function(s) */
        virtual void initialize(const Settings *settings, State *state) = 0;
        virtual void execute(const Settings *settings, State *state) = 0;
        virtual void finalize(const Settings *settings, State *state) = 0;
        virtual void report(std::string service, const Logger *logger, const Settings *settings, State *state) const = 0;

        virtual Composability getType() const = 0;

        void insert(const ConfigurationCombinable* configuration);

        const std::vector<std::vector<const verica::Wire*>>& failing_probes() const {
            return this->m_failing_probes;
        };

        const std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>>>&
        leaking_combinations() const {
            return this->m_leaking_combinations;
        };

        const bool& independent() const { return this->m_independent; }

        void current_probes(const std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>> current_probes) { this->m_current_probes = current_probes; };

    protected:

        /**< Statistical independence for current probe combination */
        bool m_independent;

        /**< Container for current probe combination separated into real and virtual probes */
        std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>> m_current_probes;

        /**< Container for failing probe combinations */
        std::vector<std::vector<const verica::Wire*>> m_failing_probes;

        /* Container for failing probe combinations under fault injections */
        /**< Container for combinations of probes and faults */
        std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>>> m_leaking_combinations;
};
