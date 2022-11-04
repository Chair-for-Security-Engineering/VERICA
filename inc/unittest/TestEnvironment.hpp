/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Niklas Entschladen (niklas.entschladen@rub.de)
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

#ifdef UNITTEST
#ifndef __VERICA_TEST_ENVIRONMENT_HPP_
#define __VERICA_TEST_ENVIRONMENT_HPP_

#include "Environment.hpp"

class TestEnvironment
{
    public:
        /* Enumeration of execution phases */
        enum execPhases {NONE, CELLLIB, PARSER, ANNOTATION, FILTERING, MULTI_THREADING, MODEL_POSTPROCESSING, ELABORATE, FIA, SCA, COMPLETE};

        /* Constructor(s) */
        TestEnvironment(int argc, char * argv[]);
        TestEnvironment(int argc, char * argv[], execPhases execPhase);

        /* Destructor */
        ~TestEnvironment();

        /* Create all service objects */
        void initialize();

        /* Controlled evaluation execution */
        void execute();

        /* Make TestEnvironment logger accessible from outside */
        Logger* getLogger();
        void setLogger(Logger*);

        /* Make TestEnvironment settings accessible from outside */
        Settings* getSettings();
        void setSettings(Settings*);
        
        /* Make TestEnvironment state accessible from outside */
        State* getState();
        void setState(State*);

        /* Make TestEnvironment parser accessible from outside */
        Parser* getParser();
        void setParser(Parser*);

        /* Make TestEnvironment preprocessor accessible from outside */
        Preprocessor* getPreprocessor();
        void setPreprocessor(Preprocessor*);

    private:
        /* Selected initialization phase */
        execPhases execPhase;

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
};

#endif // __VERICA_TEST_ENVIRONMENT_HPP_
#endif