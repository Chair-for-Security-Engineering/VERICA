/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Felix Uhle (felix.uhle@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2020/634.pdf
 *           https://eprint.iacr.org/2021/936.pdf
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2022, Felix Uhle
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
#include <boost/test/data/test_case.hpp>
#include <boost/test/data/monomorphic.hpp>

#include "unittest/test_utils.hpp"
#include "analyzer/ConfigurationComposability.hpp"
#include "unittest/TestConfigurationFailingProbes.hpp"
#include "unittest/TestConfigurations.hpp"
#include "unittest/TestEnvironmentCombined.hpp"
#include "unittest/TestConfigurationMXSecurity.hpp"

// HINT: allows to use variables defined in TestConfigurations
using namespace ComposabilityTestConfigurations;
namespace bdata = boost::unit_test::data;

/***************** AUXILIARY CLASS DEFINITIONS *****************/
class TestConfigurationComposabilityCombined : public TestEnvironmentCombined<ConfigurationCombinable>{
    public:
        TestConfigurationComposabilityCombined() : TestEnvironmentCombined(){
    }
};

/***************************************************************/

/**************************** TESTS *****************************/

// ===================================================================================
// COMBINED TESTS
// ===================================================================================
BOOST_DATA_TEST_CASE_F(
    TestConfigurationComposabilityCombined,
    ComposabilityCombinedSuccessTest,
    bdata::make(test_utils::generate_unittest_dataset(combinedTestBaseDir, testsCombined, "pass")),
    conf){
    const std::string test_name{"COMPOSABILITY_COMBINED_SUCCESS_TEST"};

    if(!test_utils::is_file_accessable(conf)){
		BOOST_TEST_MESSAGE(conf + " does not exist!\n" + test_name + " is not executed!\n If side channel order is zero, this is desired!");
    }
    else{
		execute(conf, test_name);// NOTE: from TestEnvironmentSCA exposed by fixture
		unittest::failingProbes::checkProbeTestSuccess(testEnv->m_state);
		unittest::m_x_security::checkSecurityTestSuccess(testEnv->m_state->m_cini_security);
    }
}

BOOST_DATA_TEST_CASE_F(
    TestConfigurationComposabilityCombined,
    ComposabilityCombinedFailureSCAdTest,
    bdata::make(test_utils::generate_unittest_dataset(combinedTestBaseDir, testsCombined, "failSCAd")) ^
    bdata::make(test_utils::generate_unittest_dataset(combinedTestBaseDir, testsCombined, "answers")),
    conf, answ){
    const std::string test_name{"COMPOSABILITY_COMBINED_FAIL_SCAd_TEST"};
    const std::string json_expected_failing{"expected_failing"};

    if(!test_utils::is_file_accessable(conf)){
        BOOST_TEST_MESSAGE(conf + " does not exist!\n" + test_name + " is not executed!\n If side channel order is zero, this is desired!");
    }
    else{
		execute(conf, test_name);// NOTE: from TestEnvironmentSCA exposed by fixture
		unittest::failingProbes::checkProbeTestFailure(testEnv->m_state, json_expected_failing, answ);
		unittest::m_x_security::checkSecurityTestSuccess(testEnv->m_state->m_cini_security);
    }
}

BOOST_DATA_TEST_CASE_F(
    TestConfigurationComposabilityCombined,
    ComposabilityCombinedFailureFIAkTest,
    bdata::make(test_utils::generate_unittest_dataset(combinedTestBaseDir, testsCombined, "failFIAk")) ^
    bdata::make(test_utils::generate_unittest_dataset(combinedTestBaseDir, testsCombined, "answers")),
    conf, answ){
    const std::string test_name{"COMPOSABILITY_COMBINED_FAIL_FIAk_TEST"};

    if(!test_utils::is_file_accessable(conf)){
        BOOST_TEST_MESSAGE(conf + " does not exist!\n" + test_name + " is not executed!\n If side channel order is zero, this is desired!");
    }
    else{
		execute(conf, test_name);// NOTE: from TestEnvironmentSCA exposed by fixture
		unittest::failingProbes::checkProbeTestSuccess(testEnv->m_state);
		unittest::m_x_security::checkSecurtiyTestFailure(testEnv->m_state->m_cini_security, answ);
    }
}
/****************************************************************/
#endif
