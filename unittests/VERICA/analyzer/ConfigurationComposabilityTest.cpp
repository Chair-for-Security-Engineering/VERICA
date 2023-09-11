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

using namespace ComposabilityTestConfigurations; // allows to use variables defined in TestConfigurations
namespace bdata = boost::unit_test::data;

/***************** AUXILIARY CLASS DEFINITIONS *****************/
class TestConfigurationComposability : public TestConfigurationFailingProbes{
    public:
        TestConfigurationComposability() : TestConfigurationFailingProbes(){}
};
/***************************************************************/

/**************************** TESTS *****************************/
BOOST_DATA_TEST_CASE_F(
    TestConfigurationComposability,
	Composability_Search_Test,
	bdata::make(generate_unittest_dataset(testBaseDir, tests, "find")) ^ bdata::make(generate_unittest_dataset(testBaseDir, tests,"answers")),
	conf,
	answ){
    const std::string test_name{"COMPOSABILITY_SEARCH_TEST"};

    if(!is_file_accessable(conf)){
        BOOST_TEST_MESSAGE(conf + " does not exist!\n" + test_name + " is not executed!");
    }
    else{
       checkProbeTestSearch<ConfigurationComposability>(test_name, conf, answ);
    }
}

BOOST_DATA_TEST_CASE_F(
    TestConfigurationComposability,
	Composability_Failure_Test,
	bdata::make(generate_unittest_dataset(testBaseDir, tests, "fail")) ^ bdata::make(generate_unittest_dataset(testBaseDir, tests, "answers")),
	conf,
	answ){
    const std::string test_name{"COMPOSABILITY_FAILURE_TEST"};
    const std::string json_expected_failing{"expected_failing"};

    if(!is_file_accessable(conf)){
        BOOST_TEST_MESSAGE(conf + " does not exist!\n" + test_name + " is not executed!");
    }
    else{
	    checkProbeTestFailure<ConfigurationComposability>(test_name, json_expected_failing, conf, answ);
    }
}

BOOST_DATA_TEST_CASE_F(
    TestConfigurationComposability,
	Composability_Success_Test,
	bdata::make(generate_unittest_dataset(testBaseDir, tests, "pass")),
	conf){
    const std::string test_name{"COMPOSABILITY_SUCCESS_TEST"};

    if(!is_file_accessable(conf)){
        BOOST_TEST_MESSAGE(conf + " does not exist!\n" + test_name + " is not executed!\n If side channel order is zero, this is desired!");
    }
    else{
	   checkProbeTestSuccess<ConfigurationComposability>(test_name, conf);
    }
}
/****************************************************************/
#endif