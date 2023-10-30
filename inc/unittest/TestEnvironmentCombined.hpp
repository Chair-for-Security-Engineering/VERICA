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
#include <boost/test/unit_test.hpp>
#include <boost/test/data/test_case.hpp>
#include <boost/test/data/monomorphic.hpp>

#include <memory>
#include <vector>
#include <string>
#include "test_utils.hpp"
#include "unittest/TestEnvironment.hpp"
#include "analyzer/ConfigurationComposability.hpp"

template<typename T>
struct TestEnvironmentCombined
{
    private:
        const int argc = 2;
        char UNITTEST_EXEC[16]{"bin/test/verica"};
        const std::string CONFIG_ARG_PARAM{"--config="};

    protected:
        std::unique_ptr<TestEnvironment> testEnv;
        std::unique_ptr<Configuration> fault_strategy;
        std::vector<std::unique_ptr<T>> configuration; // TODO: explain why we need this
        std::vector<std::vector<std::unique_ptr<T>>> configuration_multithreading; // TODO: explain why we need this


    public:
        TestEnvironmentCombined() = default;
        ~TestEnvironmentCombined() = default;

        void execute(const std::string &config, const std::string &test_name){
            BOOST_TEST_CHECKPOINT("Setting up TestEnvironment (" << test_name <<")");
            this->testEnv = test_utils::generateTestEnvironmentOnHeap(config);

            //is this step required?
            // FIXME: obviously this can only work if the selected combined strategy is CINI
            // ConfigurationComposability composability_cini{"CINI", Composability::CINI};
            // this->testEnv->analyze_sca(composability_cini, "CINI", Composability::CINI);

            BOOST_TEST_CHECKPOINT("Generate fault strategy");
            /* Create new fault verification strategy */
            this->testEnv->generate_choosen_fia_configuration(fault_strategy);


            BOOST_TEST_CHECKPOINT("Generating sca configurations");
            // std::vector<std::unique_ptr<ConfigurationCombinable>> sca_configurations;
            this->testEnv->generate_choosen_sca_configurations(this->configuration,
                                                               this->configuration_multithreading);

            // ConfigurationSCA* sca_preprocessor_ptr = this->testEnv->getScaPreprocessor();


            BOOST_TEST_CHECKPOINT("Generating sca configurations");
            this->testEnv->analyze_combined(this->testEnv->getScaPreprocessor(),
                                            this->fault_strategy,
                                            this->configuration,
                                            this->configuration_multithreading);
        }
};

#endif
