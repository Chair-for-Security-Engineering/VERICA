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

#include <vector>
#include <string>
#include <filesystem>
#include <boost/test/unit_test.hpp>

#include "unittest/TestEnvironment.hpp"
#include "unittest/TestConfigurationFailingProbes.hpp"

namespace unittest {
namespace failingProbes {

// TestEnvironment TestConfigurationFailingProbes::generate_test_environment(std::string conf){
//     std::string conf_str{this->CONFIG_ARG_PARAM + conf};
//     char* CONFIG_ARG = &conf_str[0];
//     char* argv[2] = {this->UNITTEST_EXEC, CONFIG_ARG};
//     TestEnvironment testEnv{this->argc, argv, TestEnvironment::execPhases::COMPLETE};
//     return testEnv;
// }

/*TODO: Document parameter path*/
std::vector<std::vector<std::pair<int, std::string>>>
expected_failing_probes_ptree2pair(const pt::ptree &knownAnswers,
                                   const std::string &path){

    auto kA_failing_probes = knownAnswers.get_child(path);
    std::vector<std::vector<std::pair<int,std::string>>> expected_failing_probes;
    for(const auto & level0 : kA_failing_probes){
        std::vector<std::pair<int,std::string>> failing_probe;
        for(const auto & level1 : level0.second){
            int expectedUID = level1.second.get_child("uid").get_value<int>();
            std::string expectedName = level1.second.get_child("name").get_value<std::string>();
            failing_probe.push_back(std::make_pair(expectedUID, expectedName));
        }
        expected_failing_probes.push_back(failing_probe);
    }
    return expected_failing_probes;
}

bool is_same_element(const verica::Wire* computed, std::pair<int, std::string> expected){
    //BOOST_REQUIRE_MESSAGE(((computed->uid() == expected.first) && (computed->name() == expected.second)) || ((computed->uid() != expected.first) && (computed->name() != expected.second)),
    //    "\nExpected UID - Name combination: " << expected.first << " - " << expected.second << "\nComputed UID - Name combination: " << computed->uid() << " - " << computed->name());
    if((computed->uid() == expected.first)){ //&& (computed->name() == expected.second)){
        return true;
    }
    else{
        return false;
    }
}

bool is_same_vector(std::vector<const verica::Wire*> computed, std::vector<std::pair<int, std::string>> expected){
    size_t size = expected.size();
    if(computed.size() != size){
        return false;
    }
    for(size_t i = 0; i < size; ++i){
        if(!is_same_element(computed[i], expected[i])){
            return false;
        }
    }
    return true;
}

bool is_computation_expacted(std::vector<std::vector<const verica::Wire*>> computed, std::vector<std::vector<std::pair<int, std::string>>> expected){

    BOOST_REQUIRE(computed.size() == expected.size());
    size_t old_size = expected.size();
    while(expected.size() != 0){
        auto exp0 = expected.begin();
        if(computed.size() == 0){
            return false;
        }
        for(auto comp = computed.begin(); comp != computed.end(); ++comp){
            if(is_same_vector(*comp, *exp0)){
                expected.erase(exp0);
                computed.erase(comp);
                break;
            }
        }
        size_t new_size = expected.size();
        if(new_size == old_size){
            return false;
        }
        old_size = new_size;
    }
    return true;
}


void
checkProbeTestSuccess(const State* state){
    /* Compute failing  probes */
    BOOST_TEST_CHECKPOINT("Extract failing probes");
    auto computed_failing_probes = state->m_failing_probes;

    /* Check Size */
    BOOST_TEST_CHECKPOINT("Compare expacted size with computed size");
    BOOST_CHECK_EQUAL(computed_failing_probes.size(), 0);
}

void
checkProbeTestFailure(const State* state,
                      const std::string &expected_failing,
                      const std::string &answ){
    /* Set up */
    BOOST_TEST_CHECKPOINT("Parsing known answers");
    const pt::ptree knownAnswers = getKnownAnswers(answ);

    BOOST_TEST_CHECKPOINT("Extract failing probes");
    auto computed_failling_probes = state->m_failing_probes;

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

void
checkProbeTestSearch(const State* state, const std::string &answ){
    /* Set up */
    const pt::ptree knownAnswers = getKnownAnswers(answ);
    if(knownAnswers.get<bool>("is_inf_theo_sec")){
        BOOST_TEST_CHECKPOINT("Search with expected success");
        unittest::failingProbes::checkProbeTestSuccess(state);
    }
    else{
        BOOST_TEST_CHECKPOINT("Search with expected failure");
        const std::string json_expected_failing_find{"expected_failing_find"};
        unittest::failingProbes::checkProbeTestFailure(state, json_expected_failing_find, answ);
    }
}

}
}

#endif
