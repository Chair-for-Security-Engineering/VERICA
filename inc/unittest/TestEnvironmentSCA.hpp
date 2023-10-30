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


template<typename T>
struct TestEnvironmentSCA
{
    private:
        const int argc = 2;
        char UNITTEST_EXEC[16]{"bin/test/verica"};
        const std::string CONFIG_ARG_PARAM{"--config="};

    protected:
        std::unique_ptr<TestEnvironment> testEnv;
        std::unique_ptr<T> configuration; // TODO: explain why we need this


    public:
        TestEnvironmentSCA() = default;
        ~TestEnvironmentSCA() = default;

        void execute(const std::string &config, const std::string &test_name){

            BOOST_TEST_CHECKPOINT("Setting up TestEnvironment (" << test_name <<")");
            this->testEnv = test_utils::generateTestEnvironmentOnHeap(config);
            const Composability type = testEnv->getType();

            BOOST_TEST_CHECKPOINT("Analyze SCA");
            this->configuration = std::make_unique<T>(test_name, type);
            this->testEnv->analyze_sca(testEnv->getScaPreprocessor(), *configuration, test_name, type);
        }
};

#endif
