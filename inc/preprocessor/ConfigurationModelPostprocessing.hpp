/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Jan Richter-Brockmann (jan.richter-brockmann@rub.de)
 * DOCUMENT: ---
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2021, Jan Richter-Brockmann
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

#ifndef __VERICA_PREPROCESSOR_CONFIGURATION_MODEL_POSTPROCESSING_HPP_
#define __VERICA_PREPROCESSOR_CONFIGURATION_MODEL_POSTPROCESSING_HPP_

#include "Configuration.hpp"

class ConfigurationModelPostprocessing : public Configuration
{
    public:
        ConfigurationModelPostprocessing(std::string name) : Configuration(name) { };

        /* Filter design for given settings */
        void execute(const Settings *settings, State *state) override;
        
        /* Report filter results */
        void report(std::string service, const Logger *logger, const Settings *settings, State *state) const override;

    private: TESTABLE

        /**
        * @brief Set the primary input identifier for each input wire of model.
        * @param model Circuit model to be elaborated.
        */       
        void set_primary_input_identifier(verica::Netlist* model);

        int m_num_of_removed_clock_wires = 0;
        int m_num_of_removed_control_wires = 0;

        int m_num_of_removed_pins;
        int m_num_of_removed_wires;
};

#endif // __VERICA_PREPROCESSOR_CONFIGURATION_MODEL_POSTPROCESSING_HPP_