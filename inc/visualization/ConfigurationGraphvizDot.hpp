/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Jan Richter-Brockmann (jan.richter-brockmann@rub.de)
 * DOCUMENT: --
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2022, Jan Richter-Brockmann
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

#ifndef __VERICA_ANALYZER_CONFIGURATION_GRAPHVIZ_DOT_HPP_
#define __VERICA_ANALYZER_CONFIGURATION_GRAPHVIZ_DOT_HPP_

#include "Configuration.hpp"

class ConfigurationGraphvizDot : public Configuration
{
    public:

        ConfigurationGraphvizDot(std::string name) : Configuration(name) { };

        /* Initialize strategy */
        void initialize(const Settings *settings, State *state) override;
    
        /* Perform analysis for given context & configuration */
        void execute(const Settings *settings, State *state) override;

        /* Report analysis results for given context & configuration */
        void report(std::string service, const Logger *logger, const Settings *settings, State *state) const override;

    private:

        /**
         * @brief Exports the full module under test to a dot-representation.
         *
         * @param state Pointer to the state.
         */
        bool export_full(State *state, const Settings *settings);

        /**
         * @brief Exports subgraph that only contains parts that are influenced by faults or probes.
         *
         * @param state Pointer to the state.
         */
        bool export_flaws(State *state, const Settings *settings);     

        /**
         * @brief Starts from a given wire and searches upwards to find the output of a gates or an input.
         *
         * @param w Starting wire.
         * @param mut Module under test.
         * 
         * @return Returns the output pin of a gate or an input pin.
         */
        const verica::Pin* get_next_pin(const verica::Wire* w, const verica::Module* mut);   

        /**
         * @brief Creates cluster of submodules and exports them to the dot-representation.
         *
         * @param gates Vector of all gates that are added to the graph.
         * @param modules Currently considered children (modules).
         * @param cluster Defines the current cluster. Is increased by one for each added cluster.
         * @param depth Indicates the indentation of the graph representation (just for formatting).
         * 
         * @return Returns the current graph in dot-representation (as string).
         */
        std::string clustering(std::vector<const verica::Module*> &gates, std::vector<const verica::Module*> modules, unsigned int cluster, unsigned int depth);

        /**
         * @brief Adds the edges to the graph.
         *
         * @param graph Current graph.
         * @param n_randomness Set of randomness inputs.
         * @param n_input Set of input nodes.
         * @param gates Vector of gates that should be connected.
         * @param mut Module under test.
         */
        void add_edges(std::string &graph, std::set<std::string> &n_randomness, std::set<const verica::Pin*> &n_input, std::vector<const verica::Module*> &gates, const verica::Module* mut);

        /**
         * @brief Highlights specific nodes in the graph in the given color.
         *
         * @param graph Current graph.
         * @param wires Vector of output wires of the target nodes.
         * @param mut Module under test.
         * @param color Color used to highlight the nodes.
         */
        void highlight_nodes(std::string &graph, std::vector<const verica::Wire*> &wires, const verica::Module *mut, std::string color);

        /* Private variables */
        bool m_done_full = false;
        bool m_done_flaw = false;        
};

#endif // __VERICA_ANALYZER_CONFIGURATION_GRAPHVIZ_DOT_HPP_
