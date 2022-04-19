/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Niklas Entschladen (niklas.entschladen@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2020/634.pdf
 *           https://eprint.iacr.org/2021/936.pdf
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2021, Niklas Entschladen
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

#include "preprocessor/ConfigurationElaborate.hpp"

#define TEST_MODEL_VECTOR_LENGTH 2

BOOST_AUTO_TEST_SUITE(Masking_Test_Suite)

/***************** AUXILIARY CLASS DEFINITIONS *****************/
class TestConfigurationElaborate : public ConfigurationElaborate {
    public:
        TestConfigurationElaborate(): ConfigurationElaborate("TEST_MASKING") {}
};
/***************************************************************/

/* Functions used to gernerate test maps */
std::map<int, BDD>
make_bddvar_map(Cudd_Manager manager, int factor = 0)
{
    std::map<int, BDD> bddmap;
    for (int i = 0; i < TEST_MODEL_VECTOR_LENGTH; i++) {
        bddmap.insert(std::pair<int, BDD>(i, manager.bddVar(i + TEST_MODEL_VECTOR_LENGTH * factor)));
    }

    return bddmap;
}

std::map<int, std::vector<BDD>>
make_bddvar_vector_map(std::map<int, BDD> map1, std::map<int, BDD> map2)
{
    std::map<int, std::vector<BDD>> bddvectormap;
    for (std::map<int, BDD>::iterator mapit = map1.begin(); mapit != map1.end(); mapit++) {
        std::vector<BDD> temp;
        temp.push_back(map1[mapit->first]);
        temp.push_back(map2[mapit->first]);
        bddvectormap.insert(std::pair<int, std::vector<BDD>>(mapit->first, temp));
    }

    return bddvectormap;
}

std::map<int, std::vector<BDD>>
make_bddvar_vector_map(std::map<int, BDD> map1, std::map<int, BDD> map2, std::map<int, BDD> map3)
{
    std::map<int, std::vector<BDD>> bddvectormap;
    for (std::map<int, BDD>::iterator mapit = map1.begin(); mapit != map1.end(); mapit++) {
        std::vector<BDD> temp;
        temp.push_back(map1[mapit->first]);
        temp.push_back(map2[mapit->first]);
        temp.push_back(map3[mapit->first]);
        bddvectormap.insert(std::pair<int, std::vector<BDD>>(mapit->first, temp));
    }

    return bddvectormap;
}

/*****************************************/

BOOST_FIXTURE_TEST_CASE(Boolean_Masking_Test, TestConfigurationElaborate){
    Cudd_Manager manager = Cudd_Manager(0,0,1<<8,1<<16,1*1024*1024*1024ull);

    std::map<int, BDD> dd1, dd2, dd3;
    std::map<int, BDD> result1, result2, result;
    std::map<int, BDD> neutralElement;
    for (int i = 0; i < TEST_MODEL_VECTOR_LENGTH; i++) {
        neutralElement.insert(std::pair<int, BDD>(i, manager.bddZero()));
    }

    // Commutativity Test (a^b = b^a)
    dd1 = make_bddvar_map(manager, 0);
    dd2 = make_bddvar_map(manager, 1);
    std::map<int, std::vector<BDD>> vector12 = make_bddvar_vector_map(dd1, dd2);
    std::map<int, std::vector<BDD>> vector21 = make_bddvar_vector_map(dd2, dd1);
    result1 = booleanMasking(manager, vector12);
    result2 = booleanMasking(manager, vector21);
    BOOST_CHECK(result1 == result2);

    // Associativity Test ((a^b)^c = (b^c)^a)
    dd1 = make_bddvar_map(manager, 0);
    dd2 = make_bddvar_map(manager, 1);
    dd3 = make_bddvar_map(manager, 2);
    std::map<int, std::vector<BDD>> vector123 = make_bddvar_vector_map(dd1, dd2, dd3);
    std::map<int, std::vector<BDD>> vector231 = make_bddvar_vector_map(dd2, dd3, dd1);
    result1 = booleanMasking(manager, vector123);
    result2 = booleanMasking(manager, vector231);
    BOOST_CHECK(result1 == result2);

    // Neutral Element Test (a^0 = a)
    dd1 = make_bddvar_map(manager, 0);
    std::map<int, std::vector<BDD>> vector1n = make_bddvar_vector_map(dd1, neutralElement);
    result = booleanMasking(manager, vector1n);
    BOOST_CHECK(result == dd1);

    // Own Inverse Test (a^a = 0)
    dd1 = make_bddvar_map(manager, 0);
    std::map<int, std::vector<BDD>> vector11 = make_bddvar_vector_map(dd1, dd1);
    result = booleanMasking(manager, vector11);
    BOOST_CHECK(result == neutralElement);
}

BOOST_FIXTURE_TEST_CASE(Additive_Masking_Test, TestConfigurationElaborate){
    Cudd_Manager manager = Cudd_Manager(0,0,1<<8,1<<16,1*1024*1024*1024ull);

    std::map<int, BDD> dd1, dd2, dd3;
    std::map<int, BDD> result1, result2, result;
    std::map<int, BDD> neutralElement;
    for (int i = 0; i < TEST_MODEL_VECTOR_LENGTH; i++) {
        neutralElement.insert(std::pair<int, BDD>(i, manager.bddZero()));
    }

    // Commutativity Test (a+b = b+a)
    dd1 = make_bddvar_map(manager, 0);
    dd2 = make_bddvar_map(manager, 1);
    std::map<int, std::vector<BDD>> vector12 = make_bddvar_vector_map(dd1, dd2);
    std::map<int, std::vector<BDD>> vector21 = make_bddvar_vector_map(dd2, dd1);
    result1 = additiveMasking(manager, vector12)[0];
    result2 = additiveMasking(manager, vector21)[0];
    BOOST_CHECK(result1 == result2);

    // Associativity Test ((a+b)+c = (b+c)+a)
    dd1 = make_bddvar_map(manager, 0);
    dd2 = make_bddvar_map(manager, 1);
    dd3 = make_bddvar_map(manager, 2);
    std::map<int, std::vector<BDD>> vector123 = make_bddvar_vector_map(dd1, dd2, dd3);
    std::map<int, std::vector<BDD>> vector231 = make_bddvar_vector_map(dd2, dd3, dd1);
    result1 = additiveMasking(manager, vector123)[0];    
    result2 = additiveMasking(manager, vector123)[0];
    BOOST_CHECK(result1 == result2);

    // Neutral Element Test (a+0 = a)
    dd1 = make_bddvar_map(manager, 0);
    std::map<int, std::vector<BDD>> vector1n = make_bddvar_vector_map(dd1, neutralElement);
    result = additiveMasking(manager, vector1n)[0];
    BOOST_CHECK(result == dd1);
}

BOOST_AUTO_TEST_SUITE_END()
#endif 