/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Niklas Entschladen (niklas.entschladen@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2020/634.pdf
 *           https://eprint.iacr.org/2021/936.pdf
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2022, Pascal Sasdrich
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
#include "parser/ConfigurationFirrtl.hpp"

BOOST_AUTO_TEST_SUITE(ConfigurationFirrtlTestSuite)

/************************ CONFIGURATIONS ************************/
const int argc = 2;
char UNITTEST_EXEC[] = "bin/test/verica";
std::string CONFIG_ARG_PARAM = "--config=";
std::string preprocessConfig = "unittests/VERICA/config/FirrtlParser/preprocess.json";
std::string emptyFirrtlConfig = "unittests/VERICA/config/FirrtlParser/emptyFirrtl.json";
/****************************************************************/

/*************************** GLOBALS ***************************/
ConfigurationFirrtl confFirrtl{"TEST_FIRRTL"};
/***************************************************************/

/***************** AUXILIARY CLASS DEFINITIONS *****************/
class TestConfigurationFirrtl : public ConfigurationFirrtl {
    public:
        TestConfigurationFirrtl(): ConfigurationFirrtl("TEST_FIRRTL") {}
};
/***************************************************************/

/********************** HELPER FUNCTIONS **********************/
bool checkPreprocessor(const std::string& p1, const std::istringstream& result) {
  std::ifstream expectedResultFile(p1, std::ios_base::in);
  std::stringstream expectedResult;
  std::string line;

  expectedResult << expectedResultFile.rdbuf();
  
  return (expectedResult.str() == result.str());
}
/**************************************************************/

BOOST_FIXTURE_TEST_CASE(FirrtlParserPreprocessTest, TestConfigurationFirrtl) {
    // Prepare check of the preprocess function.
    std::string conf_str(CONFIG_ARG_PARAM + preprocessConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::NONE};
    std::string compareFilePath = "unittests/VERICA/Designs/Firrtl/trivialAddNotPreprocessed.fir";

    // Check the preprocess function.
    BOOST_REQUIRE_NO_THROW(preprocess(testEnv.getSettings()));
    const std::istringstream result = preprocess(testEnv.getSettings());

    // Check the generated design file against the excpeted file.
    BOOST_CHECK(checkPreprocessor(compareFilePath, result));
}

// TODO: Add non-exceptional test cases.

BOOST_AUTO_TEST_CASE(FirrtlParserTests) {
    // TODO: Register non-exceptional test cases.
}

void emptyFirrtlParserTest() {                 // Empty FIRRTL file MUST throw an execption and MUST NOT contain any gates/wires/pins.
    std::string conf_str(CONFIG_ARG_PARAM + emptyFirrtlConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::CELLLIB};
    BOOST_REQUIRE_NO_THROW(testEnv.getParser()->configure(&confFirrtl));
    BOOST_REQUIRE_THROW(testEnv.getParser()->execute(), std::logic_error);
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_modules() == 0);
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_gates() == 0);
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_wires() == 0);
    BOOST_CHECK(testEnv.getState()->m_netlist_model->num_pins() == 0);
}

// TODO: Add exceptional test cases.

BOOST_AUTO_TEST_CASE(FirrtlParserExceptionTests) {
    emptyFirrtlParserTest();
    // TODO: Register exceptional test cases.
}

BOOST_AUTO_TEST_SUITE_END()
#endif