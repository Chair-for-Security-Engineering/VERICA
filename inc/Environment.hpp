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

#include "context/Logger.hpp"
#include "context/Settings.hpp"
#include "context/State.hpp"

#include "parser/Parser.hpp"

#include "preprocessor/Preprocessor.hpp"

#include "injector/Injector.hpp"

#include "analyzer/Analyzer.hpp"

#include "visualization/Visualizer.hpp"

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

    private:

        /* Member Functions */
        /** 
         * This function performs a multithreaded side-channel analysis of type T. It supports probing analysis (type=NONE)
         * and all implemented composability notions. 
         * 
         * @brief Performs a multithreaded side-channel analysis of type T.
         *
         * @param strategy The side-channel strategy that should be applied to the DUT.
         * @param name Name of the strategy (e.g., PROBING, NI, SNI, ...).
         * @param type Type of the composability strategy that should be applied.
         * 
         */   
        template<typename T> void 
        analyze_sca(T &strategy, std::string name, Composability type=NONE);

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
        analyze_combined(T &strategy, int thread_num);

        /** 
         * Reports the side-channel analysis results in a combined setting, i.e., with injected faults. 
         * 
         * @brief Reports SCA analysis results in a combined setting.
         *
         * @param strategy The side-channel strategy that should bne applied to the DUT.
         * @param strategies Vector to the applied SCA strategies (used for multithreading).
         * 
         */   
        template<typename T> void 
        report_combined(T &strategy, std::vector<T> strategies);

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
        template<typename T> void 
        report_independent_combined(std::vector<T> strategies, std::string name);

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
