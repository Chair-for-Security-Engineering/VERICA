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

#include<vector>
#include<string>
#include "unittest/TestEnvironment.hpp"

struct TestConfigurationFailingProbes
{
    protected:
        const int argc = 2;
        char UNITTEST_EXEC[16]{"bin/test/verica"};
        const std::string CONFIG_ARG_PARAM{"--config="};

    public:
        TestConfigurationFailingProbes() = default;
        ~TestConfigurationFailingProbes() = default;
        TestEnvironment generate_test_environment(std::string conf);
        std::vector<std::vector<std::pair<int, std::string>>> expected_failing_probes_ptree2pair(pt::ptree knownAnswers, std::string path);
        bool is_same_element(const verica::Wire* computed, std::pair<int, std::string> expected);
        bool is_same_vector(std::vector<const verica::Wire*> computed, std::vector<std::pair<int, std::string>> expected);
        bool is_computation_expacted(std::vector<std::vector<const verica::Wire*>> computed, std::vector<std::vector<std::pair<int, std::string>>> expected);
        template<typename T> void checkProbeTestSuccess(const std::string test_name, std::string conf);
        template<typename T> void checkProbeTestFailure(const std::string test_name, const std::string expected_failing, const std::string conf, const std::string answ);
        template<typename T> void checkProbeTestSearch(const std::string test_name, std::string conf, std::string answ);

};

// Template Implementations
template<typename T> void
TestConfigurationFailingProbes::checkProbeTestSuccess(const std::string test_name, std::string conf){
    /* Set up */
    BOOST_TEST_CHECKPOINT("Setting up TestEnvironment (" << test_name <<")");
    TestEnvironment testEnv{this->generate_test_environment(conf)};
    const Composability type{testEnv.getType()};

    /* Create new probing verification strategy */
    BOOST_TEST_CHECKPOINT("Analyze SCA");
    T probing{test_name, type};
    testEnv.analyze_sca(probing, test_name, type);

    /* Compute failing  probes */
    BOOST_TEST_CHECKPOINT("Extract failing probes");
    auto computed_failing_probes = probing.failing_probes();

    /* Check Size */
    BOOST_TEST_CHECKPOINT("Compare expacted size with computed size");
    BOOST_CHECK_EQUAL(computed_failing_probes.size(), 0);
}

template<typename T> void
TestConfigurationFailingProbes::checkProbeTestFailure(const std::string test_name, const std::string expected_failing, const std::string conf, const std::string answ){
    /* Set up */
    BOOST_TEST_CHECKPOINT("Setting up TestEnvironment (" << test_name <<")");
    const pt::ptree knownAnswers = getKnownAnswers(answ);
    TestEnvironment testEnv{this->generate_test_environment(conf)};
    const Composability type{testEnv.getType()};

    /* Create new probing verification strategy */
    BOOST_TEST_CHECKPOINT("Analyze SCA");
    T probing{test_name, type};
    testEnv.analyze_sca(probing, test_name, type);

    /* Compute failing probes */
    BOOST_TEST_CHECKPOINT("Extract failing probes");
    auto computed_failling_probes = probing.failing_probes();

    /* Check if FAILING is reported by verica */
    BOOST_TEST_CHECKPOINT("Check if at least one failing probe was found");
    BOOST_REQUIRE_MESSAGE(computed_failling_probes.empty() == false,
                          "No failing probe was found! Thus, verica reports SUCCESS, but FAILURE is expected!");

    /* Check Side Channel Order */
    BOOST_TEST_CHECKPOINT("Compare expacted side channel order with computed side channel order");
    const size_t expected_order = knownAnswers.get<size_t>("expected_side_channel_order");
    const size_t computed_order = computed_failling_probes[0].size() - 1;
    BOOST_REQUIRE_EQUAL(computed_order, expected_order);

    /* Check size */
    BOOST_TEST_CHECKPOINT("Compare expacted size with computed size");
    auto expected_m_failing_probes_size = knownAnswers.get<int>(expected_failing + ".expected_m_failing_probes_size");
    BOOST_REQUIRE_EQUAL(computed_failling_probes.size(), expected_m_failing_probes_size);

    /* Check Combinations*/
    BOOST_TEST_CHECKPOINT("Compare expacted combinations with computed combinations");
    auto expected_failing_probes = expected_failing_probes_ptree2pair(knownAnswers, expected_failing + ".expected_m_failing_probes");


    //NOTE: negation of the statement is checked by boost!
    BOOST_WARN_MESSAGE(expected_failing_probes.size() != 0 || expected_order >= 3, "No failing probes are given.");
    BOOST_WARN_MESSAGE(expected_failing_probes.size() != 0 || expected_order < 3,
        "Combination of failing probes is not checked. Side channel order (" << expected_order << ") is to high!");

    if(expected_failing_probes.size() != 0){
        BOOST_REQUIRE(this->is_computation_expacted(computed_failling_probes, expected_failing_probes));
    }
}

template<typename T> void
TestConfigurationFailingProbes::checkProbeTestSearch(const std::string test_name, std::string conf, std::string answ){
    /* Set up */
    const pt::ptree knownAnswers = getKnownAnswers(answ);
    if(knownAnswers.get<bool>("is_inf_theo_sec")){
        BOOST_TEST_CHECKPOINT("Search with expected success");
        TestConfigurationFailingProbes::checkProbeTestSuccess<T>(test_name, conf);
    }
    else{
        BOOST_TEST_CHECKPOINT("Search with expected failure");
        const std::string json_expected_failing_find{"expected_failing_find"};
        TestConfigurationFailingProbes::checkProbeTestFailure<T>(test_name, json_expected_failing_find, conf, answ);
    }
}
#endif
