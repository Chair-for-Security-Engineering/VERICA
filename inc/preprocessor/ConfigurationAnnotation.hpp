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

#ifndef __VERICA_PREPROCESSOR_CONFIGURATION_ANNOTATION_HPP_
#define __VERICA_PREPROCESSOR_CONFIGURATION_ANNOTATION_HPP_

#include <boost/program_options.hpp>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>
#include "boost/spirit/include/qi.hpp"
#include "boost/spirit/include/phoenix.hpp"

#include <boost/none.hpp>
#include <boost/optional.hpp>

#include <boost/fusion/adapted.hpp>

#include "Configuration.hpp"

class ConfigurationAnnotation : public Configuration
{
    public:
        ConfigurationAnnotation(std::string name) : Configuration(name) { };

        /* Filter design for given settings */
        void execute(const Settings *settings, State *state) override;
        
        /* Report filter results */
        void report(std::string service, const Logger *logger, const Settings *settings, State *state) const override;

    private: TESTABLE

        /**
         * @brief Parses and sets the input types (e.g., clock, reset, refresh).
         * @param settings Pointer to the settings.
         * @param state Pointer to the state.
        */
        void parse_and_set_types(State *state, std::map<std::string, const verica::Wire*> &name_to_wire);

        /**
         * @brief Parses and sets the primary input identifiers.
         * @param settings Pointer to the settings.
         * @param state Pointer to the state.
        */
        void parse_and_set_piids(State *state, std::map<std::string, const verica::Wire*> &name_to_wire);

        /**
         * @brief Parses and sets the share domain.
         * @param settings Pointer to the settings.
         * @param state Pointer to the state.
        */
        void parse_and_set_share_domain(State *state, std::map<std::string, const verica::Wire*> &name_to_wire, bool for_input);

        /**
         * @brief Parses and sets the share index.
         * @param settings Pointer to the settings.
         * @param state Pointer to the state.
        */
        void parse_and_set_share_index(State *state, std::map<std::string, const verica::Wire*> &name_to_wire, bool for_input);

        /**
         * @brief Gets the parsed list from the annotation.json file and searches for the corresponding wires in the netlist. A vector of the found wires is returned.
         * @param state Pointer to the state.
         * @param name_to_wire A map between the wire names and the wires.
         * @param wires_to_annotate Vector of wires that where parsed from the annotation file.
         * @param not_found Vector of wire names that could not be found in the netlist model.
        */
        std::vector<const verica::Wire*> create_list_of_vlog_wires(std::map<std::string, const verica::Wire*> &name_to_wire, std::vector<std::string> &wires_to_annotate, std::vector<std::string> &not_found);
        
        /**
         * @brief Small parser to extract names and ranges from a given string.
         * @param s String with a wire name and optional ranges.
        */        
        std::vector<std::string> parse_wire(std::string s);
        

        /* Boost property tree */
        boost::property_tree::ptree annotations;

        /* Member variables */
        int m_num_of_annotated_clock_wires = 0;
        std::vector<std::string> m_clock_wires_not_found;

        int m_num_of_annotated_control_wires = 0;
        std::vector<std::string> m_control_wires_not_found;

        int m_num_of_annotated_refresh_wires = 0;
        std::vector<std::string> m_refresh_wires_not_found;

        int m_num_of_annotated_error_wires = 0;
        std::vector<std::string> m_error_wires_not_found;

        int m_num_of_annotated_piid_wires = 0;
        std::vector<std::string> m_piid_wires_not_found;

        int m_num_of_annotated_share_domain_wires = 0;
        std::vector<std::string> m_share_domain_wires_not_found;

        int m_num_of_annotated_share_index_wires = 0;
        std::vector<std::string> m_share_index_wires_not_found;
};

#endif // __VERICA_PREPROCESSOR_CONFIGURATION_ANNOTATION_HPP_