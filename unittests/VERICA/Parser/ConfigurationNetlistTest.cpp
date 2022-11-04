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
#include "parser/ConfigurationNetlist.hpp"


BOOST_AUTO_TEST_SUITE(ConfigurationNetlistTestSuite)

/************************ CONFIGURATIONS ************************/
const int argc = 2;
char UNITTEST_EXEC[] = "bin/test/verica";
std::string CONFIG_ARG_PARAM = "--config=";
std::string trivialNetlistConfig = "unittests/VERICA/config/NetlistParser/trivialNetlist.json";
std::string emptyNetlistConfig = "unittests/VERICA/config/NetlistParser/emptyNetlist.json";
std::string erroneousGateNetlistConfig = "unittests/VERICA/config/NetlistParser/erroneousGateNetlist.json";
std::string erroneousInputNetlistConfig = "unittests/VERICA/config/NetlistParser/erroneousInputNetlist.json";
std::string erronoeusInputPinOrderNetlistConfig = "unittests/VERICA/config/NetlistParser/undefined_pin_reference.json";
/****************************************************************/

/*************************** GLOBALS ***************************/
ConfigurationNetlist confNL{"TEST_NETLIST"};
/***************************************************************/

void trivialNetlistParserTest() {                  // Trivial netlist MUST NOT throw an exception.
    std::string conf_str(CONFIG_ARG_PARAM + trivialNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    //testEnv = new TestEnvironment(argc, argv, TestEnvironment::execPhases::CELLLIB);
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::CELLLIB};
    BOOST_REQUIRE_NO_THROW(testEnv.getParser()->configure(&confNL));
    BOOST_REQUIRE_NO_THROW(testEnv.getParser()->execute());
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_modules() == 1);    // Netlist always contains a top module.
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_gates() == 4);
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_wires() == 7);
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_pins() == 16);
}

BOOST_AUTO_TEST_CASE(NetlistParserTests) {
    trivialNetlistParserTest();
}

void emptyNetlistParserTest() {                    // Empty netlist MUST throw an execption and MUST NOT contain any gates/wires/pins.
    std::string conf_str(CONFIG_ARG_PARAM + emptyNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::CELLLIB};
    BOOST_REQUIRE_NO_THROW(testEnv.getParser()->configure(&confNL));
    BOOST_REQUIRE_THROW(testEnv.getParser()->execute(), std::logic_error);
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_modules() == 1);    // Netlist always contains a top module.
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_gates() == 0);
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_wires() == 0);
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_pins() == 0);
}

void erroneousGateNetlistParserTest() {            // Erroneous gates MUST throw an exception.
    std::string conf_str(CONFIG_ARG_PARAM + erroneousGateNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::CELLLIB};
    BOOST_REQUIRE_NO_THROW(testEnv.getParser()->configure(&confNL));
    BOOST_REQUIRE_THROW(testEnv.getParser()->execute(), std::logic_error);
}

void erroneousInputNetlistParserTest() {           // Erroneous inputs MUST throw an exception.
    std::string conf_str(CONFIG_ARG_PARAM + erroneousInputNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::CELLLIB};
    BOOST_REQUIRE_NO_THROW(testEnv.getParser()->configure(&confNL));
    BOOST_REQUIRE_THROW(testEnv.getParser()->execute(), std::logic_error);
}

void erronoeusInputPinOrderNetlistParserTest() {   /* 
                                                    * References to undefined or future input pins MUST throw an execption.
                                                    * The test case indirectly checks for missing input gates, too.
                                                    */
    std::string conf_str(CONFIG_ARG_PARAM + erronoeusInputPinOrderNetlistConfig);
    char* CONFIG_ARG = &conf_str[0];
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::CELLLIB};
    BOOST_REQUIRE_NO_THROW(testEnv.getParser()->configure(&confNL));
    BOOST_REQUIRE_THROW(testEnv.getParser()->execute(), std::logic_error);
}

BOOST_AUTO_TEST_CASE(NetlistParserExceptionTests) {
    emptyNetlistParserTest();
    erroneousGateNetlistParserTest();
    erroneousInputNetlistParserTest();
    erronoeusInputPinOrderNetlistParserTest();
}

BOOST_AUTO_TEST_SUITE_END()
#endif