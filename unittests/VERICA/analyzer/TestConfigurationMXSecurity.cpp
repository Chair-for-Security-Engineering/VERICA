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

#include <numeric>
#include <vector>
#include <string>
#include <filesystem>
#include <boost/test/unit_test.hpp>

#include "unittest/TestEnvironment.hpp"
#include "unittest/TestConfigurationMXSecurity.hpp"

namespace unittest {
namespace m_x_security {

/*TODO: Document parameter path*/
double
expected_m_security_ptree2pair(const pt::ptree &knownAnswers,
                                   const std::string &path){

    auto expected_mx_security = knownAnswers.get_child("expected_failing").get_child(path).get_value<double>();
    return expected_mx_security;
}

void
checkSecurityTestSuccess(const std::vector<double> &computed){

    BOOST_TEST_CHECKPOINT("Compute sum of all entries of m_x_security");
    const auto sum_of_computed_elements = std::accumulate(computed.begin(),computed.end(),0);

    /* Check Element */
    BOOST_TEST_CHECKPOINT("Check if zero was computed");
    BOOST_CHECK_EQUAL(sum_of_computed_elements, 0);
}

 void checkSecurtiyTestFailure(
                      const std::vector<double> &computed,
                      const std::string &answ){
    /* Set up */
    BOOST_TEST_CHECKPOINT("Parsing known answers");
    const pt::ptree knownAnswers = getKnownAnswers(answ);

    const double expected_sum = expected_m_security_ptree2pair(knownAnswers, "expected_m_cini_security");

    BOOST_TEST_CHECKPOINT("Compute sum of all entries of m_x_security");
    const auto sum_of_computed_elements = std::accumulate(computed.begin(),computed.end(),0);

    BOOST_TEST_CHECKPOINT("Check...");
    BOOST_CHECK_EQUAL(sum_of_computed_elements, expected_sum);
}

} // m_x_security
} // unittest

#endif
