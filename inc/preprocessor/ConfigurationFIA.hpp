/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2020/634.pdf
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

#ifndef __VERICA_PREPROCESSOR_CONFIGURATION_FIA_HPP_
#define __VERICA_PREPROCESSOR_CONFIGURATION_FIA_HPP_

#include "Configuration.hpp"

class ConfigurationFIA : public Configuration
{
    public:
        ConfigurationFIA(std::string name) : Configuration(name) { };

        /* Filter design for given settings */
        void execute(const Settings *settings, State *state) override;
        
        /* Report filter results */
        void report(std::string service, const Logger *logger, const Settings *settings, State *state) const override;

    private: TESTABLE

        bool m_notify_variate = false;

        /**
         * @brief Determine the applied variate (univariate, bivariate, ...) for fault injections.
         * @param settings Pointer to the settings.
         * @param state Pointer to the state.
         */
        void fault_determine_variate(const Settings *settings, State *state);   

        /**
        * @brief Extracts the fault mapping that should be used.
        * @param file Location of the defined fault mapping.
        * @param cellLibrary Pointer to the applied cell library.
        * @param faultMap Stores the final fault mapping.
        */
        int fault_get_mapping(const std::string &file, CellLibrary* cellLibrary, std::map<int, std::vector<verica::fault::Fault>> &faultMap);

        /**
        * @brief Extracts the allowed fault locations.
        * @param location Contains the location from the config file.
        * @param model Pointer to the circuit model.
        * @param faultLocations Contains pointer to the wires which should be faulted.
        */
        int fault_get_locations(const std::string location, verica::Netlist* model, std::vector<const verica::Wire*> &faultLocations);

        /**
        * @brief Determines propagation paths of all valid nodes.
        * @param model Pointer to the golden circuit model (netlist).
        */
        void fault_determine_propagation_paths(verica::Netlist* model);

        /**
        * @brief Controles the complexity reduction.
        * @param apply_reduction Holds the information from the settings if a reduction should be applied or not.
        * @param apply_sca Flag to identify if sca verification is enabled.
        * @param model Pointer to the golden circuit model (netlist).
        * @param faultLocations Vector of all valid fault locations.
        * @param faultLocationsReduced Vector of a reduced set of fault locations.
        */
        void fault_apply_complexity_reduction(const Settings* settings, verica::Netlist* model, std::vector<const verica::Wire*> &faultLocations, std::vector<const verica::Wire*> &faultLocationsReduced, std::map<int, std::vector<verica::fault::Fault>> &faultMap);

        /**
        * @brief Applies a complexity reduction of the nodes stored in faultLocations.
        * @param model Pointer to the golden circuit model (netlist).
        * @param faultLocations Vector of all valid fault locations.
        * @param faultLocationsReduced Vector of a reduced set of fault locations.
        */
        void fault_get_reduced_locations_conservative(verica::Netlist* model, std::vector<const verica::Wire*> &faultLocations, std::vector<const verica::Wire*> &faultLocationsReduced);

        /**
         * @brief Performs precomputations for SIFA and SFA based analyses.
         * @param state Pointer to the state.
         * @param num_of_cores Number of cores set in the config-file.
        */
       void fault_configure_sifa_sfa(State *state, int num_of_cores);

};

#endif // __VERICA_PREPROCESSOR_CONFIGURATION_FIA_HPP_