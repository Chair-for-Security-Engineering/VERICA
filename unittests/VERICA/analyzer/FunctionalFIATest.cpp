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

#include<vector>
#include<string>
#include <boost/test/unit_test.hpp>

#include "unittest/TestEnvironment.hpp"
#include "unittest/FunctionalFIATest.hpp"

TestEnvironment FunctionalFIATest::generate_test_environment(std::string conf){
    std::string conf_str{this->CONFIG_ARG_PARAM + conf};
    char* CONFIG_ARG = &conf_str[0];
    char* argv[2] = {this->UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{this->argc, argv, TestEnvironment::execPhases::COMPLETE};
    return testEnv;
}

// void verify_configuration(const pt::ptree answers, Settings* settings){
//     if(settings->getNumberOfFaults() != answers.get<size_t>("max_fault_events_secure")+1){
// 	throw std::runtime_error("Wrong value of fault-injection.configuration.number");
//     }
//     if(settings->getNumberOfFaults() != answers.get<size_t>("min_fault_events_insecure")){
// 	throw std::runtime_error("Wrong value of fault-injection.configuration.number");
//     }
// }

#endif
