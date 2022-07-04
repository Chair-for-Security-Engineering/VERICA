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

#ifndef __VERICA_PREPROCESSOR_CONFIGURATION_FILTERING_HPP_
#define __VERICA_PREPROCESSOR_CONFIGURATION_FILTERING_HPP_

#include "Configuration.hpp"

class ConfigurationFiltering : public Configuration
{
    public:
        ConfigurationFiltering(std::string name) : Configuration(name) { };

        /* Filter design for given settings */
        void execute(const Settings *settings, State *state) override;
        
        /* Report filter results */
        void report(std::string service, const Logger *logger, const Settings *settings, State *state) const override;

    private: TESTABLE

        /**
         * @brief Removes the flag for the blacklisting from all wires.
         * @param state Pointer to the state.
        */
        void clear_filter(State *state);

        /**
         * @brief Applies filtering based on the value in blacklist_filter.
         * @param settings Pointer to the settings.
         * @param state Pointer to the state.
         * @param blacklist_filter Set to true to apply blacklist filtering.
         * @param strategy Indicates the strategy for which the filter is applied. (0) SCA, (1) FIA
        */
        void apply_filter(const Settings *settings, State *state, const bool blacklist_filter, const bool strategy);
};

#endif // __VERICA_PREPROCESSOR_CONFIGURATION_FILTERING_HPP_