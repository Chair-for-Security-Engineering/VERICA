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
#define BOOST_TEST_DYN_LINK
#include <boost/test/unit_test.hpp>

#include "unittest/TestEnvironment.hpp"
#include "parser/ConfigurationLibrary.hpp"


BOOST_AUTO_TEST_SUITE(ConfigurationLibraryTestSuite)

/************************ CONFIGURATIONS ************************/
const int argc = 2;
char UNITTEST_EXEC[] = "bin/test/verica";
std::string CONFIG_ARG_PARAM = "--config=";
std::string correctLibraryConfig = "unittests/VERICA/config/LibraryParser/correctLibrary.json";
std::string reversedOrderLibraryConfig = "unittests/VERICA/config/LibraryParser/reversedOrderLibrary.json";
std::string erroneousLibraryNumBoolExpConfig = "unittests/VERICA/config/LibraryParser/erroneousLibraryNumBoolExp.json";
std::string erroneousLibraryNumInputConfig = "unittests/VERICA/config/LibraryParser/erroneousLibraryNumInput.json";
std::string erroneousLibraryNumOutputConfig = "unittests/VERICA/config/LibraryParser/erroneousLibraryNumOutput.json";
std::string erroneousLibraryNumVariantConfig = "unittests/VERICA/config/LibraryParser/erroneousLibraryNumVariant.json";
std::string erroneousLibraryRedundantGateNameConfig = "unittests/VERICA/config/LibraryParser/erroneousLibraryRedundantGateName.json";
std::string erroneousLibraryUnsupportedGadgetConfig = "unittests/VERICA/config/LibraryParser/erroneousLibraryUnsupportedGadget.json";
/****************************************************************/

/*************************** GLOBALS ***************************/
TestEnvironment* testEnv;
ConfigurationLibrary* confLib = new ConfigurationLibrary("TEST_CELLLIB");
/***************************************************************/

void correctLibraryParserTest() {                      // Correct library MUST NOT throw an exception.
    std::string conf_str(CONFIG_ARG_PARAM + correctLibraryConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    testEnv = new TestEnvironment(argc, argv, TestEnvironment::execPhases::NONE);
    BOOST_REQUIRE_NO_THROW(testEnv->getParser()->configure(confLib));
    BOOST_REQUIRE_NO_THROW(testEnv->getParser()->execute());
    BOOST_CHECK((testEnv->getState()->m_cell_library->gate_types()).size() == 14);
}

void consistentIdentifierLibraryParserTest() {         // Gadget IDs must be independent from the order of occurance.
    std::string conf_str(CONFIG_ARG_PARAM + correctLibraryConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    testEnv = new TestEnvironment(argc, argv, TestEnvironment::execPhases::NONE);
    testEnv->getParser()->configure(confLib);
    testEnv->getParser()->execute();
    std::map<std::string, CellTemplate*> originalOrder = testEnv->getState()->m_cell_library->gate_types();

    std::string rconf_str(CONFIG_ARG_PARAM + reversedOrderLibraryConfig);
    char* RCONFIG_ARG = &rconf_str[0]; 
    char* rargv[2] = {UNITTEST_EXEC, RCONFIG_ARG};
    testEnv = new TestEnvironment(argc, rargv, TestEnvironment::execPhases::NONE);
    testEnv->getParser()->configure(confLib);
    testEnv->getParser()->execute();
    std::map<std::string, CellTemplate*> reversedOrder = testEnv->getState()->m_cell_library->gate_types();

    for (auto const& gadget : originalOrder) {
        for (int i = 0; i < ((gadget.second)->m_identifier).size(); i++) {
            BOOST_CHECK(((gadget.second)->m_identifier)[i] == ((reversedOrder[gadget.first])->m_identifier)[i]);
        }
    }
}

BOOST_AUTO_TEST_CASE(LibraryParserTests) {
    correctLibraryParserTest();
    consistentIdentifierLibraryParserTest();
}

void erroneousLibraryNumBoolExpParserTest() {          // Wrong number of boolean expressions MUST throw an exception.
    std::string conf_str(CONFIG_ARG_PARAM + erroneousLibraryNumBoolExpConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    testEnv = new TestEnvironment(argc, argv, TestEnvironment::execPhases::NONE);
    BOOST_REQUIRE_NO_THROW(testEnv->getParser()->configure(confLib));
    BOOST_REQUIRE_THROW(testEnv->getParser()->execute(), std::logic_error);
}

void erroneousLibraryNumInputParserTest() {            // Wrong number of input pins MUST throw an exception.
    std::string conf_str(CONFIG_ARG_PARAM + erroneousLibraryNumInputConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    testEnv = new TestEnvironment(argc, argv, TestEnvironment::execPhases::NONE);
    BOOST_REQUIRE_NO_THROW(testEnv->getParser()->configure(confLib));
    BOOST_REQUIRE_THROW(testEnv->getParser()->execute(), std::logic_error);
}

void erroneousLibraryNumOutputParserTest() {           // Wrong number of output pins MUST throw an exception.
    std::string conf_str(CONFIG_ARG_PARAM + erroneousLibraryNumOutputConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    testEnv = new TestEnvironment(argc, argv, TestEnvironment::execPhases::NONE);
    BOOST_REQUIRE_NO_THROW(testEnv->getParser()->configure(confLib));
    BOOST_REQUIRE_THROW(testEnv->getParser()->execute(), std::logic_error);
}

void erroneousLibraryNumVariantParserTest() {          // Wrong number of variants MUST throw an exception.
    std::string conf_str(CONFIG_ARG_PARAM + erroneousLibraryNumVariantConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    testEnv = new TestEnvironment(argc, argv, TestEnvironment::execPhases::NONE);
    BOOST_REQUIRE_NO_THROW(testEnv->getParser()->configure(confLib));
    BOOST_REQUIRE_THROW(testEnv->getParser()->execute(), std::logic_error);
}

/* It seems to be not an erroneous case anymore...

void erroneousLibraryRedundantGateNameParserTest() {   // Multiple gate definitions for the same gate identifier MUST throw an exception.
    std::string conf_str(CONFIG_ARG_PARAM + erroneousLibraryRedundantGateNameConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    testEnv = new TestEnvironment(argc, argv, TestEnvironment::execPhases::NONE);
    BOOST_REQUIRE_NO_THROW(testEnv->getParser()->configure(confLib));
    BOOST_REQUIRE_THROW(testEnv->getParser()->execute(), std::logic_error);
}

*/

void erroneousLibraryUnsupportedGadgetParserTest() {   // Unsupported gadgets MUST throw an exception.
    std::string conf_str(CONFIG_ARG_PARAM + erroneousLibraryUnsupportedGadgetConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    testEnv = new TestEnvironment(argc, argv, TestEnvironment::execPhases::NONE);
    BOOST_REQUIRE_NO_THROW(testEnv->getParser()->configure(confLib));
    BOOST_REQUIRE_THROW(testEnv->getParser()->execute(), std::logic_error);
}

BOOST_AUTO_TEST_CASE(LibraryParserExceptionTests) {
    erroneousLibraryNumBoolExpParserTest();
    erroneousLibraryNumInputParserTest();
    erroneousLibraryNumOutputParserTest();
    erroneousLibraryNumVariantParserTest();
    // erroneousLibraryRedundantGateNameParserTest();
    erroneousLibraryUnsupportedGadgetParserTest();
}

BOOST_AUTO_TEST_SUITE_END()
#endif