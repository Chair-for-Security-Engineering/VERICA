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


#define BOOST_TEST_DYN_LINK
#include <boost/test/unit_test.hpp>
#include <boost/test/data/test_case.hpp>
#include <boost/test/data/monomorphic.hpp>

namespace unittest{
namespace failingProbes{
        std::vector<std::vector<std::pair<int, std::string>>>
        expected_failing_probes_ptree2pair(const pt::ptree &knownAnswers,
                                           const std::string &path);
        bool is_same_element(const verica::Wire* computed,
                             std::pair<int, std::string> expected);
        bool is_same_vector(std::vector<const verica::Wire*> computed,
                            std::vector<std::pair<int, std::string>> expected);
        bool is_computation_expacted(std::vector<std::vector<const verica::Wire*>> computed,
                                     std::vector<std::vector<std::pair<int, std::string>>> expected);

        // NOTE: This function were introduced to access the new created m_failing_probe
        // member variable of the State. This was required since for combined strategies
        // multiple executions of different strategies leads to the final report.
        // The problem is, that it could happen that the last execution reports succes,
        // while a different one has already reported failure.
        // Thus, the failing_probes of the failing one must be used to verify the
        // correctnes in a failure case.
        // This is the usecase for which this function were introduced.
        // There might be a better cleaner solution, but this works.
        void checkProbeTestSuccess(const State* config);
        void checkProbeTestFailure(const State* config,
                                   const std::string &expected_failing,
                                   const std::string &answ);
        void checkProbeTestSearch(const State* config,
                                  const std::string &answ);

        template<typename T> void checkProbeTestSuccess(const T* config);
        template<typename T> void checkProbeTestFailure(const T* config,
                                                        const std::string &expected_failing,
                                                        const std::string &answ);
        template<typename T> void checkProbeTestSearch(const T* config,
                                                       const std::string &answ);


// Template Implementations
template<typename T> void
checkProbeTestSuccess(const T* config){
    /* Compute failing  probes */
    BOOST_TEST_CHECKPOINT("Extract failing probes");
    auto computed_failing_probes = config->failing_probes();

    /* Check Size */
    BOOST_TEST_CHECKPOINT("Compare expacted size with computed size");
    BOOST_CHECK_EQUAL(computed_failing_probes.size(), 0);
}

template<typename T> void
checkProbeTestFailure(const T* config,
                      const std::string &expected_failing,
                      const std::string &answ){
    /* Set up */
    BOOST_TEST_CHECKPOINT("Parsing known answers");
    const pt::ptree knownAnswers = getKnownAnswers(answ);

    BOOST_TEST_CHECKPOINT("Extract failing probes");
    auto computed_failling_probes = config->failing_probes();

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
    auto expected_failing_probes = unittest::failingProbes::expected_failing_probes_ptree2pair(knownAnswers, expected_failing + ".expected_m_failing_probes");


    //NOTE: negation of the statement is checked by boost!
    BOOST_WARN_MESSAGE(expected_failing_probes.size() != 0 || expected_order >= 3, "No failing probes are given.");
    BOOST_WARN_MESSAGE(expected_failing_probes.size() != 0 || expected_order < 3,
        "Combination of failing probes is not checked. Side channel order (" << expected_order << ") is to high!");

    if(expected_failing_probes.size() != 0){
        BOOST_REQUIRE(unittest::failingProbes::is_computation_expacted(computed_failling_probes, expected_failing_probes));
    }
}

template<typename T> void
checkProbeTestSearch(const T* config, const std::string &answ){
    /* Set up */
    const pt::ptree knownAnswers = getKnownAnswers(answ);
    if(knownAnswers.get<bool>("is_inf_theo_sec")){
        BOOST_TEST_CHECKPOINT("Search with expected success");
        unittest::failingProbes::checkProbeTestSuccess<T>(config);
    }
    else{
        BOOST_TEST_CHECKPOINT("Search with expected failure");
        const std::string json_expected_failing_find{"expected_failing_find"};
        unittest::failingProbes::checkProbeTestFailure<T>(config, json_expected_failing_find, answ);
    }
}

} //namespace failingProbes
} //namespace unittest
#endif
