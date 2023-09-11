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

/***********************************************************************
*                              DESCRIPTION
* This file is used to define the Testcases which should be used by all 
* Unittests based on the BOOST_DATA_TEST_CASE_F() Macro.
* We uses namespaces to isolate the constants of different test
* such as ConfigurationComposabilityTest and ConfigurationProbingTest
*
* Macros are used to distinguish different test sets:
* - FULLTEST:
*   - runs after a merge in CI/CD pipeline
*   - all tests are used
*   - takes some hours
* - MERGETEST:
*   - runs on mergerequest
*   - a subset of all test is used
*   - takes less than an hour
* - TEST:
*   - runs after a push in CI/CD pipeline
*   - a subset of all tests is executed
*   - takes less than 10min
*
* IMPORTANT: Any configuration used as a test must necessarily have the
* same number of cpu cores configured. 
* Otherwise, an unexpected error will occur.
*
* NOTE: [EXPANSIVE]: increasement of runtime in hours
* NOTE: [expansive]: increasement of runtime in some minuts 
************************************************************************/

namespace ComposabilityTestConfigurations {
    inline const std::string testBaseDir{"unittests/VERICA/config/Analyzer/ConfigurationComposability"};

    // NOTE: "cms3_p-sni_rob" is too expensive to genereate known answers!
    // NOTE: pini does not work! so we do not test it.

    #if defined(FULLTEST)
        inline const std::vector<std::string> tests{
            "cms3_p-ni_rob",            "cms3_p-ni_std",     "cms3_p-sni_std",   //"cms3_p-sni_rob",  // [EXPANSIVE]
            "dom1_p-ni_rob",            "dom1_p-ni_std",            "dom1_p-sni_std",           "dom1_p-sni_rob",   
            "dom2_p-ni_rob",            "dom2_p-ni_std",            "dom2_p-sni_std",           "dom2_p-sni_rob",
            "dom2-dep-insec_p-ni_rob",  "dom2-dep-insec_p-ni_std",  "dom2-dep-insec_p-sni_rob", "dom2-dep-insec_p-sni_std",
            "dom3_p-ni_rob",            "dom3_p-ni_std",          "dom3_p-sni_std",           "dom3_p-sni_rob",    // [EXPANSIVE]                                  
            "pini1_p-ni_rob",           "pini1_p-ni_std",           "pini1_p-sni_std",          "pini1_p-sni_rob",       //"pini1_p-pini_std",     "pini1_p-pini_rob",
                                                                    "hpc1d1_p-sni_std",         "hpc1d1_p-sni_rob",     //"hpc1d1_p-pini_std",    "hpc1d1_p-pini_rob",
                                                                    "hpc1d2_p-sni_std",         "hpc1d2_p-sni_rob",     //"hpc1d2_p-pini_std",    "hpc1d2_p-pini_rob",
                                                                    "hpc2d1_p-sni_std",         "hpc2d1_p-sni_rob",     //"hpc2d1_p-pini_std",    "hpc2d1_p-pini_rob",
                                                                    "hpc2d2_p-sni_std",         "hpc2d2_p-sni_rob",     //"hpc2d2_p-pini_std",    "hpc2d2_p-pini_rob",
            "uma_d2_p-ni_rob",          "uma_d2_p-ni_std",          "uma_d2_p-sni_std",         "uma_d2_p-sni_rob",     //"uma_d2_p-pini_std",    "uma_d2_p-pini_rob",
            "uma2_p-ni_std",            "uma2_p-ni_rob",            "uma2_p-sni_std",           "uma2_p-sni_rob",       //"uma2_p-pini_std",      "uma2_p-pini_rob"
        };

    #elif defined(MERGETEST)
        inline const std::vector<std::string> tests{
            //"cms3_p-ni_rob",            //"cms3_p-ni_std",     "cms3_p-sni_std",   //"cms3_p-sni_rob",  // [EXPANSIVE]
            "dom1_p-ni_rob",            "dom1_p-ni_std",            "dom1_p-sni_std",           "dom1_p-sni_rob",   
            "dom2_p-ni_rob",            "dom2_p-ni_std",            "dom2_p-sni_std",           "dom2_p-sni_rob",
            "dom2-dep-insec_p-ni_rob",  "dom2-dep-insec_p-ni_std",  "dom2-dep-insec_p-sni_rob", "dom2-dep-insec_p-sni_std",
            //"dom3_p-ni_rob",          //"dom3_p-ni_std",          "dom3_p_sni_std",           "dom3_p-sni_rob",    // [EXPANSIVE]                                  
            "pini1_p-ni_rob",           "pini1_p-ni_std",           "pini1_p-sni_std",          "pini1_p-sni_rob",       //"pini1_p-pini_std",     "pini1_p-pini_rob",
                                                                    "hpc1d1_p-sni_std",         "hpc1d1_p-sni_rob",     //"hpc1d1_p-pini_std",    "hpc1d1_p-pini_rob",
                                                                    "hpc1d2_p-sni_std",         "hpc1d2_p-sni_rob",     //"hpc1d2_p-pini_std",    "hpc1d2_p-pini_rob",
                                                                    "hpc2d1_p-sni_std",         "hpc2d1_p-sni_rob",     //"hpc2d1_p-pini_std",    "hpc2d1_p-pini_rob",
                                                                    "hpc2d2_p-sni_std",         "hpc2d2_p-sni_rob",     //"hpc2d2_p-pini_std",    "hpc2d2_p-pini_rob",
            "uma_d2_p-ni_rob",          "uma_d2_p-ni_std",          "uma_d2_p-sni_std",         "uma_d2_p-sni_rob",     //"uma_d2_p-pini_std",    "uma_d2_p-pini_rob",
            "uma2_p-ni_std",            "uma2_p-ni_rob",            "uma2_p-sni_std",           "uma2_p-sni_rob",       //"uma2_p-pini_std",      "uma2_p-pini_rob"
        };

    #else // TEST
        inline const std::vector<std::string> tests{            
            "dom1_p-ni_rob",            "dom1_p-ni_std",            "dom1_p-sni_std",           "dom1_p-sni_rob",   
            "dom2_p-ni_rob",            "dom2_p-ni_std",            "dom2_p-sni_std",           "dom2_p-sni_rob",
            "dom2-dep-insec_p-ni_rob",  "dom2-dep-insec_p-ni_std",  "dom2-dep-insec_p-sni_rob", "dom2-dep-insec_p-sni_std",                                            
            "pini1_p-ni_rob",           "pini1_p-ni_std",           "pini1_p-sni_std",          "pini1_p-sni_rob",       //"pini1_p-pini_std",     "pini1_p-pini_rob",
                                                                    "hpc1d1_p-sni_std",         "hpc1d1_p-sni_rob",     //"hpc1d1_p-pini_std",    "hpc1d1_p-pini_rob",
                                                                    "hpc1d2_p-sni_std",         "hpc1d2_p-sni_rob",     //"hpc1d2_p-pini_std",    "hpc1d2_p-pini_rob",
                                                                    "hpc2d1_p-sni_std",         "hpc2d1_p-sni_rob",     //"hpc2d1_p-pini_std",    "hpc2d1_p-pini_rob",
                                                                    "hpc2d2_p-sni_std",         "hpc2d2_p-sni_rob",     //"hpc2d2_p-pini_std",    "hpc2d2_p-pini_rob",
            "uma_d2_p-ni_rob",          "uma_d2_p-ni_std",          "uma_d2_p-sni_std",         "uma_d2_p-sni_rob",     //"uma_d2_p-pini_std",    "uma_d2_p-pini_rob",
            "uma2_p-ni_std",            "uma2_p-ni_rob",            "uma2_p-sni_std",           "uma2_p-sni_rob",       //"uma2_p-pini_std",      "uma2_p-pini_rob"
        };
    #endif
}

namespace ProbingTestConfigurations {
    const std::string testBaseDir{"unittests/VERICA/config/Analyzer/ConfigurationProbing"};
    #if defined(FULLTEST)
        const std::vector<std::string> tests{
            "cms3_rob",  // [EXPANSIVE]
            "cms3_std",  // [expansive]
            "dom0",
            "dom1",
            "dom2",
            "dom2-dep_rob",
            "dom2-dep_std",
            "dom2-dep-insec_rob",
            "dom2-dep-insec_std",
            "dom3",
            "pini1_rob",
            "pini1_std",
            "uma_d2_std",
            "uma_d2_rob",
            "uma2_std",
            "uma2_rob"
        };

    #elif defined(MERGETEST)
        const std::vector<std::string> tests{
            "cms3_std",  // [expansive]
            "dom0",
            "dom1",
            "dom2",
            "dom2-dep_rob",
            "dom2-dep_std",
            "dom2-dep-insec_rob",
            "dom2-dep-insec_std",
            "dom3",
            "pini1_rob",
            "pini1_std",
            "uma_d2_std",
            "uma_d2_rob",
            "uma2_std",
            "uma2_rob"
        };

    #else // Test
        const std::vector<std::string> tests{
            "dom0",
            "dom1",
            "dom2",
            "dom2-dep-insec_rob",
            "dom2-dep-insec_std",
            "pini1_rob",
            "pini1_std",
            "uma_d2_std",
            "uma_d2_rob",
            "uma2_std",
            "uma2_rob"
        };
    #endif
}
#endif