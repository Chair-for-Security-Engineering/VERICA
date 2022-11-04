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
#define BOOST_TEST_DYN_LINK
#include <boost/test/unit_test.hpp>

#include "unittest/TestEnvironment.hpp"
#include "parser/ConfigurationVerilog.hpp"
#include "composer/NetlistComposer.hpp"


BOOST_AUTO_TEST_SUITE(ConfigurationVerilogTestSuite)

/************************ CONFIGURATIONS ************************/
const int argc = 2;
char UNITTEST_EXEC[] = "bin/test/verica";
std::string CONFIG_ARG_PARAM = "--config=";
std::string simpleVerilogConfig = "unittests/VERICA/config/VerilogParser/simpleVerilog.json";
std::string emptyVerilogConfig = "unittests/VERICA/config/VerilogParser/emptyVerilog.json";
std::string erroneousPinVerilogConfig = "unittests/VERICA/config/VerilogParser/erroneousPinVerilog.json";
std::string erroneousWireVerilogConfig = "unittests/VERICA/config/VerilogParser/erroneousWireVerilog.json";
std::string erroneousGateVerilogConfig = "unittests/VERICA/config/VerilogParser/erroneousGateVerilog.json";
/****************************************************************/

/*************************** GLOBALS ***************************/
ConfigurationVerilog confVlog{"TEST_VERILOG"};
/***************************************************************/

void simpleVerilogParserTest() {                // Simple Verilog file MUST NOT throw an exception.
    std::string conf_str(CONFIG_ARG_PARAM + simpleVerilogConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::CELLLIB};
    BOOST_REQUIRE_NO_THROW(testEnv.getParser()->configure(&confVlog));
    BOOST_REQUIRE_NO_THROW(testEnv.getParser()->execute());
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_modules() == 4);
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_gates() == 12);
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_wires() == 42);
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_pins() == 74);
}

BOOST_AUTO_TEST_CASE(VerliogParserTests) {
    simpleVerilogParserTest();
}

void emptyVerilogParserTest() {                 // Empty Verilog file MUST throw an execption and MUST NOT contain any gates/wires/pins.
    std::string conf_str(CONFIG_ARG_PARAM + emptyVerilogConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::CELLLIB};
    BOOST_REQUIRE_NO_THROW(testEnv.getParser()->configure(&confVlog));
    BOOST_REQUIRE_THROW(testEnv.getParser()->execute(), std::logic_error);
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_modules() == 0);
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_gates() == 0);
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_wires() == 0);
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_pins() == 0);
}

void erroneousPinVerilogParserTest() {          // Erroneous pins MUST throw an exception.
    std::string conf_str(CONFIG_ARG_PARAM + erroneousPinVerilogConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::CELLLIB};
    BOOST_REQUIRE_NO_THROW(testEnv.getParser()->configure(&confVlog));
    BOOST_REQUIRE_THROW(testEnv.getParser()->execute(), std::logic_error);
}

void erroneousWireVerilogParserTest() {         // Erroneous wires MUST throw an exception.
    std::string conf_str(CONFIG_ARG_PARAM + erroneousWireVerilogConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::CELLLIB};
    BOOST_REQUIRE_NO_THROW(testEnv.getParser()->configure(&confVlog));
    BOOST_REQUIRE_THROW(testEnv.getParser()->execute(), std::logic_error);
}

void erroneousGateVerilogParserTest() {         // Erroneous gates MUST throw an exception.
    std::string conf_str(CONFIG_ARG_PARAM + erroneousGateVerilogConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::CELLLIB};
    BOOST_REQUIRE_NO_THROW(testEnv.getParser()->configure(&confVlog));
    BOOST_REQUIRE_THROW(testEnv.getParser()->execute(), std::logic_error);
}

BOOST_AUTO_TEST_CASE(VerilogParserExceptionTests) {
    emptyVerilogParserTest();
    erroneousPinVerilogParserTest();
    erroneousWireVerilogParserTest();
    erroneousGateVerilogParserTest();
}

BOOST_AUTO_TEST_SUITE_END()
#endif