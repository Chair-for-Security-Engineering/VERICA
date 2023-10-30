/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Felix Uhle (felix.uhle@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2022/484.pdf
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
#pragma once

#define BOOST_TEST_DYN_LINK
#include<vector>
#include<string>
#include<numeric>
#include "unittest/TestEnvironment.hpp"

struct FunctionalFIATest
{
    protected:
        const int argc = 2;
        char UNITTEST_EXEC[16]{"bin/test/verica"};
        const std::string CONFIG_ARG_PARAM{"--config="};

    public:
        FunctionalFIATest() = default;
        ~FunctionalFIATest() = default;

        TestEnvironment generate_test_environment(std::string conf);

        template<typename T> void
        verifyFIATestSuccess(const std::string test_name, std::string conf, std::string answ);

        template<typename T> void
        verifyFIATestFailure(const std::string test_name, std::string conf, std::string answ);
};

// Template Implementations

/*
 *  @brief This template function verifies that Verica classifies
 *  a secure design (in terms of FIA) as secure.
 *
 *  @param test_name is the name of the current test,
 *  it is used to identify the instatiation of the template.
 *
 *  @param conf is the name of the configuration which is used for the
 *  current test.
 *
 *  @param answ is the name of the known answers file of the current test.
 */
template<typename T> void
FunctionalFIATest::verifyFIATestSuccess(const std::string test_name, std::string conf, std::string answ){
    /* Set up */
    BOOST_TEST_CHECKPOINT("Setting up TestEnvironment (" << test_name <<")");
    const pt::ptree knownAnswers = getKnownAnswers(answ);
    const pt::ptree answers = knownAnswers.get_child("success");
    TestEnvironment testEnv{this->generate_test_environment(conf)};

    /* Check that configuration file is correct*/
    if(testEnv.getSettings()->getNumberOfFaults() != answers.get<size_t>("max_fault_events_secure")){
	    throw std::runtime_error("Wrong value of fault-injection.configuration.number");
    }

    /* Create new fia verification strategy */
    BOOST_TEST_CHECKPOINT("Analyze FIA");
    testEnv.analyze_fia<T>(test_name);

    /* Compute the number of effective faults */
    BOOST_TEST_CHECKPOINT("Extract number of effective faults");
    auto num_effective_faults = std::reduce(testEnv.getState()->m_effective.begin(),
                                        testEnv.getState()->m_effective.end());
    auto num_fault_scenarios = std::reduce(testEnv.getState()->m_scenarios.begin(),
                                        testEnv.getState()->m_scenarios.end());

    BOOST_TEST_CHECKPOINT("Parse fault scenarios from answers.json");
    const size_t num_expected_fault_scenarios = answers.get<size_t>("entries_m_scenarios");

    /* Verify that no effective fault occurs */
    BOOST_TEST_CHECKPOINT("Compare expacted size with computed size");
    BOOST_CHECK_EQUAL(num_effective_faults, 0);
    BOOST_REQUIRE_EQUAL(num_fault_scenarios, num_expected_fault_scenarios);
}

/*
 *  @brief This template function verifies that Verica classifies
 *  a insecure design (in terms of FIA) as insecure.
 *
 *  @param test_name is the name of the current test,
 *  it is used to identify the instatiation of the template.
 *
 *  @param conf is the name of the configuration which is used for the
 *  current test.
 *
 *  @param answ is the name of the known answers file of the current test.
 */
template<typename T> void
FunctionalFIATest::verifyFIATestFailure(const std::string test_name, std::string conf, std::string answ){
    /* Set up */
    BOOST_TEST_CHECKPOINT("Setting up TestEnvironment (" << test_name <<")");
    const pt::ptree knownAnswers = getKnownAnswers(answ);
    const pt::ptree answers = knownAnswers.get_child("failure");

    TestEnvironment testEnv{this->generate_test_environment(conf)};

    /* Check that configuration file is correct*/
    if(testEnv.getSettings()->getNumberOfFaults() != answers.get<size_t>("min_fault_events_insecure")){
	    throw std::runtime_error("Wrong value of fault-injection.configuration.number");
    }

    /* Create new fia verification strategy */
    BOOST_TEST_CHECKPOINT("Analyze FIA");
    testEnv.analyze_fia<T>(test_name);

    /* Compute the number of effective faults */
    BOOST_TEST_CHECKPOINT("Extract number of effective faults & fault scenarios");
    auto num_effective_faults = std::reduce(testEnv.getState()->m_effective.begin(),
                                        testEnv.getState()->m_effective.end());
    auto num_fault_scenarios = std::reduce(testEnv.getState()->m_scenarios.begin(),
                                        testEnv.getState()->m_scenarios.end());

    /* Read the number of expected effective faults */
    BOOST_TEST_CHECKPOINT("Parse expected number of effective faults & fault scenarios from answers.json");
    const size_t num_expected_effective_faults = answers.get<size_t>("entries_m_effective");
    const size_t num_expected_fault_scenarios = answers.get<size_t>("entries_m_scenarios");


    /* Verify that the correct number of effective fault occurs */
    BOOST_TEST_CHECKPOINT("Compare number of expected faults & fault scenarios with computed one");
    BOOST_REQUIRE_EQUAL(num_effective_faults, num_expected_effective_faults);
    BOOST_REQUIRE_EQUAL(num_fault_scenarios, num_expected_fault_scenarios);
}
#endif
