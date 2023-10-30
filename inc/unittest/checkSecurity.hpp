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
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTERS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * Please see license.rtf and README for license and further instructions.
 */
#ifdef UNITTEST
#pragma once

#include "unittest/TestEnvironment.hpp"
#include <string>
#include <vector>

#define BOOST_TEST_DYN_LINK
#include <boost/test/data/monomorphic.hpp>
#include <boost/test/data/test_case.hpp>
#include <boost/test/unit_test.hpp>

namespace unittest {
namespace checkSecurtiy {
std::vector<std::vector<std::pair<int, std::string>>>
expected_failing_probes_ptree2pair(const pt::ptree &knownAnswers,
                                   const std::string &path);
bool is_same_element(const double computed,
                     const double expected);
bool is_same_vector(std::vector<double> &computed,
                    std::vector<double> &expected);
bool is_computation_expacted(
    std::vector<double> &computed,
    std::vector<double> &expected);

void checkProbeTestSuccess(const TestEnvironment &testEnv);
void checkProbeTestFailure(const TestEnvironment &testEnv,
                           const std::string &expected_failing,
                           const std::string &answ);

// Template Implementations
void checkProbeTestSuccess(const TestEnvironment &testEnv) {
  /* Compute failing  probes */
  BOOST_TEST_CHECKPOINT("Extract failing probes");
  const auto computed_cini_security = testEnv.m_state->m_cini_security;

  /* Check Size */
  BOOST_TEST_CHECKPOINT("Compare expacted size with computed size");
  BOOST_CHECK_EQUAL(computed_cini_security.size(), 0);
}

void checkProbeTestFailure(const TestEnvironment &testEnv,
                           const std::string &expected_failing,
                           const std::string &answ) {
  /* Set up */
  BOOST_TEST_CHECKPOINT("Parsing known answers");
  const pt::ptree knownAnswers = getKnownAnswers(answ);

  BOOST_TEST_CHECKPOINT("Extract failing probes");
  const auto computed_cini_security = testEnv.m_state->m_cini_security;

  /* Check if FAILING is reported by verica */
  BOOST_TEST_CHECKPOINT("Check if at least one failing probe was found");
  BOOST_REQUIRE_MESSAGE(computed_cini_security.empty() == false,
                        "No failing probe was found! Thus, verica reports "
                        "SUCCESS, but FAILURE is expected!");

  /* Check Side Channel Order */
  BOOST_TEST_CHECKPOINT(
      "Compare expacted side channel order with computed side channel order");
  const size_t expected_order =
      knownAnswers.get<size_t>("expected_side_channel_order");
  const size_t computed_order = computed_cini_security[0].size() - 1;
  BOOST_REQUIRE_EQUAL(computed_order, expected_order);

  /* Check size */
  BOOST_TEST_CHECKPOINT("Compare expacted size with computed size");
  auto expected_m_failing_probes_size = knownAnswers.get<int>(
      expected_failing + ".expected_m_failing_probes_size");
  BOOST_REQUIRE_EQUAL(computed_cini_security.size(),
                      expected_m_failing_probes_size);

  /* Check Combinations*/
  BOOST_TEST_CHECKPOINT(
      "Compare expacted combinations with computed combinations");
  auto expected_cini_security =
      unittest::checkSecurtiy::expected_failing_probes_ptree2pair(
          knownAnswers, expected_failing + ".expected_m_failing_probes");

  // NOTE: negation of the statement is checked by boost!
  BOOST_WARN_MESSAGE(expected_failing_probes.size() != 0 || expected_order >= 3,
                     "No failing probes are given.");
  BOOST_WARN_MESSAGE(
      expected_failing_probes.size() != 0 || expected_order < 3,
      "Combination of failing probes is not checked. Side channel order ("
          << expected_order << ") is to high!");

  if (expected_failing_probes.size() != 0) {
    BOOST_REQUIRE(unittest::failingProbes::is_computation_expacted(
        computed_cini_security, expected_cini_security));
  }
}

// TODO: remove?
//
// template <typename T>
// void checkProbeTestSearch(const T *config, const std::string &answ) {
//   /* Set up */
//   const pt::ptree knownAnswers = getKnownAnswers(answ);
//   if (knownAnswers.get<bool>("is_inf_theo_sec")) {
//     BOOST_TEST_CHECKPOINT("Search with expected success");
//     unittest::failingProbes::checkProbeTestSuccess<T>(config);
//   } else {
//     BOOST_TEST_CHECKPOINT("Search with expected failure");
//     const std::string json_expected_failing_find{"expected_failing_find"};
//     unittest::failingProbes::checkProbeTestFailure<T>(
//         config, json_expected_failing_find, answ);
//   }
// }

} // namespace checkSecurtiy
} // namespace unittest
#endif
