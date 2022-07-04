/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Niklas Entschladen (niklas.entschladen@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2020/634.pdf
 *           https://eprint.iacr.org/2021/936.pdf
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

#define BOOST_TEST_DYN_LINK
#include <boost/test/unit_test.hpp>

#include "unittest/TestEnvironment.hpp"

BOOST_AUTO_TEST_SUITE(Environment_Test_Suite)

/************************ CONFIGURATIONS ************************/
const int argc = 2;
char UNITTEST_EXEC[] = "bin/test/verica";
char CONFIG_ARG[] = "--config=unittests/VERICA/config/test.json";
char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
/****************************************************************/

// Check the constructor and destructor of the Environment class.
void environmentConstructionTest() {
    /** Suppress console output **/
    // std::streambuf* cout_sbuf = std::cout.rdbuf(); // save original sbuf
    // std::ofstream   fout("/dev/null");
    // std::cout.rdbuf(fout.rdbuf()); // redirect 'cout' to a 'fout'
    /*****************************/

    Environment* environment = new Environment(argc, argv);

    delete environment;
    /**** Free console output ****/
    // std::cout.rdbuf(cout_sbuf); // restore the original stream buffer
    /*****************************/
}

// Check the constructor and destructor of the TestEnvironment class.
void testEnvironmentConstructionTest() {
    /** Suppress console output **/
    // std::streambuf* cout_sbuf = std::cout.rdbuf(); // save original sbuf
    // std::ofstream   fout("/dev/null");
    // std::cout.rdbuf(fout.rdbuf()); // redirect 'cout' to a 'fout'
    /*****************************/

    TestEnvironment* testEnvironment = new TestEnvironment(argc, argv);

    delete testEnvironment;
    
    /**** Free console output ****/
    // std::cout.rdbuf(cout_sbuf); // restore the original stream buffer
    /*****************************/
}

BOOST_AUTO_TEST_CASE(Environment_Tests) {
    BOOST_REQUIRE_NO_THROW(environmentConstructionTest());      // Correct construction of the environment MUST NOT throw an exception.
    BOOST_REQUIRE_NO_THROW(testEnvironmentConstructionTest());  // Correct construction of the test environment MUST NOT throw an exception.
}

BOOST_AUTO_TEST_SUITE_END()
#endif