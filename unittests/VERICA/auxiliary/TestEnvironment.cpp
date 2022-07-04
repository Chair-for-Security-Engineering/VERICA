/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Niklas Entschladen (niklas.entschladen@rub.de)
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

#ifdef UNITTEST
#include <boost/algorithm/string/predicate.hpp>

#include "unittest/TestEnvironment.hpp"

#include "parser/ConfigurationLibrary.hpp"
#include "parser/ConfigurationNetlist.hpp"
#include "parser/ConfigurationVerilog.hpp"

#include "preprocessor/ConfigurationFiltering.hpp"
#include "preprocessor/ConfigurationMultithreading.hpp"
#include "preprocessor/ConfigurationAnnotation.hpp"
#include "preprocessor/ConfigurationModelPostprocessing.hpp"
#include "preprocessor/ConfigurationElaborate.hpp"
#include "preprocessor/ConfigurationFIA.hpp"
#include "preprocessor/ConfigurationSCA.hpp"

#include "composer/NetlistComposer.hpp"

/* 
 * =========================================================================================
 * Constructor(s)
 * =========================================================================================
 */

TestEnvironment::TestEnvironment(int argc, char * argv[]) :
    execPhase{execPhases::COMPLETE},
    m_logger{new Logger(100)},
    m_state{new State()},
    m_settings{new Settings(argc, argv)}
{
    /* Enable full evaluation */
    //this->execPhase = execPhases::COMPLETE;

    /* Registering new logger */
    //this->m_logger = new Logger(100);

    /* Registering new evaluation settings */
    //this->m_settings = new Settings(argc, argv);

    /* Registering new evaluation context */
    //this->m_state = new State();

    /* Initialize execution environment */
    this->initialize();

    /* Execute evaluation */
    this->execute();
}

TestEnvironment::TestEnvironment(int argc, char * argv[], TestEnvironment::execPhases execPhase) :
    execPhase{execPhase},
    m_logger{new Logger(100)},
    m_state{new State()},
    m_settings{new Settings(argc, argv)}
{
    /* Registering phase after which evaluation stops */
    //this->execPhase = execPhase;

    /* Registering new logger */
    //this->m_logger = new Logger(100);

    /* Registering new evaluation settings */
    //this->m_settings = new Settings(argc, argv);

    /* Registering new evaluation context */
    //this->m_state = new State();

    /* Initialize execution environment */
    this->initialize();

    /* Execute evaluation */
    this->execute();
}

/* 
 * =========================================================================================
 * Destructor
 * =========================================================================================
 */

TestEnvironment::~TestEnvironment()
{
    delete this->m_analyzer;
    delete this->m_injector;
    delete this->m_preprocessor;
    delete this->m_parser;
    delete this->m_settings;
    delete this->m_state;
    delete this->m_logger;
}

/* 
 * =========================================================================================
 * Member functions
 * =========================================================================================
 */

void
TestEnvironment::initialize()
{
    /* Registering new parser instance */
    this->m_parser = new Parser("PARSER", this->m_logger, this->m_settings, this->m_state);
    
    /* Registering new preprocessor instance */
    this->m_preprocessor = new Preprocessor("PREPROCESSOR", this->m_logger, this->m_settings, this->m_state);

    /* Registering new injector instance */
    this->m_injector = new Injector("INJECTOR", this->m_logger, this->m_settings, this->m_state);
        
    /* Registering new analyzer instance */
    this->m_analyzer = new Analyzer("ANALYZER", this->m_logger, this->m_settings, this->m_state);
}

void
TestEnvironment::execute()
{
    if (this->execPhase == execPhases::NONE) { return; }

    /* Design cell library parser configuration & execution */
    ConfigurationLibrary configLibrary{"CELLLIB"};
    this->m_parser->configure(&configLibrary);
    this->m_parser->execute();

    if (this->execPhase == execPhases::CELLLIB) { return; }

    /* Design parser configuration & execution */
    if (boost::algorithm::ends_with(this->m_settings->getDesignFilePath(), ".v")){
        ConfigurationVerilog configVerilog{"VERILOG"};
        this->m_parser->configure(&configVerilog);
        this->m_parser->execute();
    }
    else if (boost::algorithm::ends_with(this->m_settings->getDesignFilePath(), ".nl")){
        ConfigurationNetlist configNetlist{"NETLIST"};
        this->m_parser->configure(&configNetlist);
        this->m_parser->execute();
    }
    
    // NetlistComposer* nc = new NetlistComposer("COMPOSER");
    // nc->execute(this->m_settings, this->m_state);

    if (this->execPhase == execPhases::PARSER) { return; }

    /* Preprocessor configuration & execution */
    ConfigurationAnnotation configAnnotation{"ANNOTATION"};
    this->m_preprocessor->configure(&configAnnotation);
    this->m_preprocessor->execute();
    
    if (this->execPhase == execPhases::ANNOTATION) { return; }

    ConfigurationFiltering configFiltering{"FILTERING"};
    this->m_preprocessor->configure(&configFiltering);
    this->m_preprocessor->execute();

    if (this->execPhase == execPhases::FILTERING) { return; }

    ConfigurationMultithreading configMultithreading{"MULTI-THREADING"};
    this->m_preprocessor->configure(&configMultithreading);
    this->m_preprocessor->execute();

    if (this->execPhase == execPhases::MULTI_THREADING) { return; }

ConfigurationModelPostprocessing configModelPostprocessing{"MODEL POSTPROCESSING"};
    this->m_preprocessor->configure(&configModelPostprocessing);
    this->m_preprocessor->execute();

    if (this->execPhase == execPhases::MODEL_POSTPROCESSING) { return; }

    ConfigurationElaborate configElaborate{"ELABORATE"};
    this->m_preprocessor->configure(&configElaborate);
    this->m_preprocessor->execute();

    if (this->execPhase == execPhases::ELABORATE) { return; }

    ConfigurationFIA configFIA{"FIA"};
    this->m_preprocessor->configure(&configFIA);
    this->m_preprocessor->execute();

    if (this->execPhase == execPhases::FIA) { return; }

    ConfigurationSCA sca_preprocessor{"SCA"};
    this->m_preprocessor->configure(&sca_preprocessor);
    this->m_preprocessor->execute();

    if (this->execPhase == execPhases::SCA || this->execPhase == execPhases::COMPLETE) { return; }
}

Logger*
TestEnvironment::getLogger() { return this->m_logger; }

void
TestEnvironment::setLogger(Logger* logger) { 
    this->m_logger = logger;
    initialize(); 
} 

Settings*
TestEnvironment::getSettings() { return this->m_settings; }

void
TestEnvironment::setSettings(Settings* settings) { 
    this->m_settings = settings; 
    initialize();    
}

State*
TestEnvironment::getState() { return this->m_state; }

void
TestEnvironment::setState(State* state) {
    this->m_state = state;
    initialize();
}

Parser*
TestEnvironment::getParser() { return this->m_parser; }

void
TestEnvironment::setParser(Parser* parser) { 
    this->m_parser = parser; 
    initialize();    
}

Preprocessor*
TestEnvironment::getPreprocessor() { return this->m_preprocessor; }

void
TestEnvironment::setPreprocessor(Preprocessor* preprocessor) { 
    this->m_preprocessor = preprocessor; 
    initialize();    
}

#endif
