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

#ifndef __VERICA_ENVIRONMENT_HPP_
#define __VERICA_ENVIRONMENT_HPP_

#include "analyzer/ConfigurationCombinable.hpp"
#include "context/Logger.hpp"
#include "context/Settings.hpp"
#include "context/State.hpp"

#include "parser/Parser.hpp"

#include "preprocessor/Preprocessor.hpp"
#include "preprocessor/ConfigurationSCA.hpp"

#include "injector/Injector.hpp"

#include "analyzer/Analyzer.hpp"

#include "visualization/Visualizer.hpp"
#include <vector>


class Environment
{
    public:
        /* Constructor(s) */
        Environment(int argc, char * argv[]);

        /* Desctructor */
        ~Environment();

        /* Create all service objects */
        void initialize();

        /* Execute verification process */
        void execute();

    private: TESTABLE
        /* Member Functions */

        void finalize();
        void visualize();
        /**
         * This function performs a multithreaded fault-injection analysis of type T.
         * TODO: It supports ...
         *
         * @brief Performs a multithreaded fault-injection analysis of type T.
         * TODO:
         * @param T The fault injection analysis strategy that should be applied to the DUT.
         * @param name Name of the strategy (e.g., FAULT-DETECTION, FAULT-CORRECTION, FAULT-SFA, FAULT-SIFA)
         *
         */
        template<typename T> void
        analyze_fia(std::string name);

        /**
         * This function performs a multithreaded side-channel analysis of type T.
         * It supports probing analysis (type=NONE) and all implemented composability notions.
         *
         * @brief Performs a multithreaded side-channel analysis of type T.
         *
         * @param strategy The side-channel strategy that should be applied to the DUT.
         * @param name Name of the strategy (e.g., PROBING, NI, SNI, ...).
         * @param type Type of the composability strategy that should be applied.
         *
         */
        template<typename T> void
        analyze_sca(ConfigurationSCA &sca_preprocessor,
                    T &strategy, 
                    std::string name, 
                    Composability type=Composability::NONE);

        void report_combined(std::vector<std::unique_ptr<ConfigurationCombinable>> &sca_configurations,
                                  std::vector<std::vector<std::unique_ptr<ConfigurationCombinable>>> &sca_configurations_multithreading);


        void gen_configuration(const Composability comp, const std::string &strategy,
                                std::vector<std::unique_ptr<ConfigurationCombinable>> &sca_configurations);

        void gen_multithreading_configurations(
            const Composability comp,
            const std::string &strategy,
            std::vector<std::vector<std::unique_ptr<ConfigurationCombinable>>> &sca_configurations_multithreading);

        void generate_choosen_fia_configuration(
            std::unique_ptr<Configuration> &fault_strategy
        );

        void generate_choosen_sca_configurations(
            std::vector<std::unique_ptr<ConfigurationCombinable>> &sca_configurations,
            std::vector<std::vector<std::unique_ptr<ConfigurationCombinable>>> &sca_configurations_multithreading
        );

        void initialize_sca_configurations(
            std::vector<std::unique_ptr<ConfigurationCombinable>> &sca_configurations,
            std::vector<std::vector<std::unique_ptr<ConfigurationCombinable>>> &sca_configurations_multithreading);

        void analyze_combined(ConfigurationSCA &sca_preprocessor,
                              std::unique_ptr<Configuration> &fault_strategy,
                              std::vector<std::unique_ptr<ConfigurationCombinable>> &sca_configurations,
                              std::vector<std::vector<std::unique_ptr<ConfigurationCombinable>>> &sca_configurations_multithreading);

        /**
         * This function performs a multithreaded side-channel analysis in the combined settings (i.e., with injected faults) of type T.
         * It supports probing analysis (type=NONE) and all implemented composability notions.
         *
         * @brief Performs a multithreaded side-channel analysis of type T in a combined setting.
         *
         * @param strategy The side-channel strategy that should be applied to the DUT.
         * @param thread_num Number of the working thread.
         *
         */
        template<typename T> void
        analyze_sca_combined(T &strategy, int thread_num);

        /**
         * Reports the side-channel analysis results in a combined setting, i.e., with injected faults.
         *
         * @brief Reports SCA analysis results in a combined setting.
         *
         * @param strategy The side-channel strategy that should bne applied to the DUT.
         * @param strategies Vector to the applied SCA strategies (used for multithreading).
         *
         */
        void
        report_sca_combined(std::unique_ptr<ConfigurationCombinable> &strategy,
                            std::vector<std::unique_ptr<ConfigurationCombinable>> &strategies);

        /**
         * Reports a detailed analysis report of an combined analysis of FIA and SCA without
         * considering reciprocal effects.
         *
         * @brief Detailed analysis report of combined analysis without considering reciprocal effects.
         *
         * @param strategies Vector to the applied SCA strategies (used for multithreading).
         * @param name Is used for reporting (e.g., PROB, NI, SNI, ...).
         *
         */
        void
        report_independent_combined(std::vector<std::unique_ptr<ConfigurationCombinable>> &strategies, std::string name);


        /* Logger */
        Logger *m_logger;

        /* State */
        State *m_state;

        /* Settings */
        Settings *m_settings;

        /* Parser */
        Parser *m_parser;

        /* Preprocessor */
        Preprocessor *m_preprocessor;

        /* Injector */
        Injector *m_injector;

        /* Analyzer */
        Analyzer *m_analyzer;

        /* Visualizer */
        Visualizer *m_visualizer;
};

#endif // __VERICA_ENVIRONMENT_HPP_
