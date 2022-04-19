/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Jan Richter-Brockmann (jan.richter-brockmann@rub.de)
 *           Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: --
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2021, Pascal Sasdrich and Jan Richter-Brockmann
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

#ifndef __VERICA_ANALYZER_CONFIGURATION_FAULT_DETECTION_HPP_
#define __VERICA_ANALYZER_CONFIGURATION_FAULT_DETECTION_HPP_

#include "Configuration.hpp"

class ConfigurationFaultDetection : public Configuration
{
    public:

        ConfigurationFaultDetection(std::string name) : Configuration(name) { };
    
        /* Perform analysis for given context & configuration */
        void execute(const Settings *settings, State *state) override;

        /* Report analysis results for given context & configuration */
        void report(std::string service, const Logger *logger, const Settings *settings, State *state) const override;
        
};

#endif // __VERICA_ANALYZER_CONFIGURATION_FAULT_DETECTION_HPP_