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

namespace fs = std::filesystem;

TestEnvironment TestConfigurationFailingProbes::generate_test_environment(std::string conf){
    std::string conf_str{this->CONFIG_ARG_PARAM + conf};
    char* CONFIG_ARG = &conf_str[0];
    char* argv[2] = {this->UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{this->argc, argv, TestEnvironment::execPhases::COMPLETE};
    return testEnv;
}

/*TODO: Document parameter path*/
std::vector<std::vector<std::pair<int, std::string>>> TestConfigurationFailingProbes::expected_failing_probes_ptree2pair(pt::ptree knownAnswers, std::string path){
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

bool TestConfigurationFailingProbes::is_same_element(const verica::Wire* computed, std::pair<int, std::string> expected){
    //BOOST_REQUIRE_MESSAGE(((computed->uid() == expected.first) && (computed->name() == expected.second)) || ((computed->uid() != expected.first) && (computed->name() != expected.second)),
    //    "\nExpected UID - Name combination: " << expected.first << " - " << expected.second << "\nComputed UID - Name combination: " << computed->uid() << " - " << computed->name());
    if((computed->uid() == expected.first)){ //&& (computed->name() == expected.second)){
        return true;
    }
    else{
        return false;
    }
}

bool TestConfigurationFailingProbes::is_same_vector(std::vector<const verica::Wire*> computed, std::vector<std::pair<int, std::string>> expected){
    size_t size = expected.size();
    if(computed.size() != size){
        return false;
    }
    for(size_t i = 0; i < size; ++i){
        if(!this->is_same_element(computed[i], expected[i])){
            return false;
        }
    }
    return true;
}

bool TestConfigurationFailingProbes::is_computation_expacted(std::vector<std::vector<const verica::Wire*>> computed, std::vector<std::vector<std::pair<int, std::string>>> expected){
    BOOST_REQUIRE(computed.size() == expected.size());

    size_t old_size = expected.size();
    while(expected.size() != 0){
        auto exp0 = expected.begin();
        if(computed.size() == 0){
            return false;
        }
        for(auto comp = computed.begin(); comp != computed.end(); ++comp){
            if(this->is_same_vector(*comp, *exp0)){
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


#endif