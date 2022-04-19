/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2020/634.pdf
 *           https://eprint.iacr.org/2021/936.pdf
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
