/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Jan Richter-Brockmann (jan.richter-brockmann@rub.de)
 * DOCUMENT: --
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

#ifndef __VERICA_COMPOSER_CONFIGURATION_IRON_MASK_HPP_
#define __VERICA_COMPOSER_CONFIGURATION_IRON_MASK_HPP_

#include "Configuration.hpp"

class ConfigurationIronMask : public Configuration
{
    public:

        ConfigurationIronMask(std::string name) : Configuration(name) { };

        /* Initialize strategy */
        void initialize(const Settings *settings, State *state) override;
    
        /* Perform analysis for given context & configuration */
        void execute(const Settings *settings, State *state) override;

        /* Finalize analysis for given context & configuration */
        void finalize(const Settings *settings, State *state);

        /* Report analysis results for given context & configuration */
        void report(std::string service, const Logger *logger, const Settings *settings, State *state) const override;

        /* Insert results from another configuration into this configuration*/
        void insert(const ConfigurationIronMask* configuration);

        /* Accessor function(s) */
        const int& exports() const { return this->m_export_cnt; }

    private:
        void extract_gates(State *state, std::vector<int> &gates);
        // void extract_gates(State *state, std::vector<int> &gates, std::map<int, bool> &sequ_gates);

        /**
         * @brief Starts from a given wire and searches upwards to find the output of a gates or an input.
         *
         * @param w Starting wire.
         * @param mut Module under test.
         * 
         * @return Returns the output pin of a gate or an input pin.
         */
        const verica::Pin* get_next_pin(const verica::Wire* w, const verica::Module* mut);   


        int m_export_cnt = 0;

       
};

#endif // __VERICA_COMPOSER_CONFIGURATION_IRON_MASK_HPP_
