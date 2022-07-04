/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2020/634.pdf
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2020, Pascal Sasdrich
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

#ifndef __UTIL_HPP_
#define __UTIL_HPP_

#include "config.hpp"

#include <set>
#include <map>
#include <cmath>
#include <chrono>
#include <vector>
#include <string>
#include <sstream>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <algorithm>
#include <functional>
#include <unordered_map>
#include <omp.h>

#include <boost/property_tree/json_parser.hpp>
#include <boost/property_tree/ptree.hpp>
namespace pt = boost::property_tree;

#ifndef DOUBLE_COMPARE_THRESHOLD
#define DOUBLE_COMPARE_THRESHOLD 0.000001
#endif

#ifndef LOGN_2
#define LOGN_2 0.69314718055994530942
#endif

/* Enable unittest frameworks to access private members marked as TESTABLE */
#ifdef UNITTEST
#   define TESTABLE protected :
#   define CONCRETE virtual
#else
#   define TESTABLE
#   define CONCRETE
#endif

#define time std::chrono::high_resolution_clock::now()

/* success/failure strings (colored) */
#define SUCCESS "\033[1;32mSUCCESS\033[0m"
#define FAILURE "\033[1;31mFAILURE\033[0m"

/* verbosity levels */
#define VBASE 0
#define VINFO 1
#define VFULL 2
#define VDETAIL 3

/* printing lists */
#define ITEM std::string("\t")

#ifdef UNITTEST
/**
 * @brief Parse known answers from JSON file.
 * @param katFile Known answers file path.
 */
static pt::ptree
getKnownAnswers(std::string katFile){
    pt::ptree knownAnswers;
    pt::read_json(katFile, knownAnswers);

    return knownAnswers;
}
#endif

template<typename T>
T binomial_coeff(T n, T k){
    T result = 1;

    if(k > n-k) k = n-k;

    for(T i=0; i < k; ++i){
        result *= (n - i);
        result /= (i + 1);
    }

    return result;
}

// static void
// inter_vector_combinations_and(const std::vector<std::vector<BDD>> &intra, int offset, BDD combination, std::vector<BDD> &inter)
// {
//     if (offset < intra.size()) {
//         for (int idx = 0; idx < intra[offset].size(); idx++) inter_vector_combinations_and(intra, offset + 1, combination & intra[offset][idx], inter);
//     } else {
//         inter.push_back(combination);
//     }
// }

// static void
// ConfigurationComposability::inter_vector_combinations_and(const std::vector<std::vector<std::set<const verica::Wire*>>> &intra, int offset, std::set<const verica::Wire*> combination, std::vector<std::set<const verica::Wire*>> &inter)
// {
//     if (offset < intra.size()) {
//         for (int idx = 0; idx < intra[offset].size(); idx++) {
//             std::set<const verica::Wire*> temp = combination;
//             temp.insert(intra[offset][idx].begin(), intra[offset][idx].end());
//             inter_vector_combinations_and(intra, offset + 1, temp, inter);
//         }
//     } else {
//         inter.push_back(combination);
//     }
// }

static bool
inter_vector_combinations_xor(Cudd_Manager& manager, const std::vector<std::vector<BDD>> &intra, unsigned int offset, BDD combination, int varcount)
{

    if (offset < intra.size()) {
        bool balanced = true;
        for (unsigned int idx = 0; idx < intra[offset].size() && balanced; idx++) 
            balanced &= inter_vector_combinations_xor(manager, intra, offset + 1, combination ^ intra[offset][idx], varcount);
        if (!balanced) return false;
    } else {
        return (abs(manager.bdd_satcountln(combination, varcount) - varcount + 1) < DOUBLE_COMPARE_THRESHOLD);
    }

    return true;
}

inline bool is_integer(const std::string & str)
{
   if(str.empty() || (!isdigit(str[0]))) return false;
   char * p;
   strtol(str.c_str(), &p, 10);
   return (*p == 0);
}

template<typename T> T evaluate_expressions(std::map<std::string, T> &operand_mapping, std::string expression){
    if(expression == "A") {
        return operand_mapping["A"];
    } else if(expression == "!A") {
        return !operand_mapping["A"];
    } else if(expression == "(A1 & A2)") {
        return operand_mapping["A1"] & operand_mapping["A2"];
    } else if(expression == "!(A1 & A2)") {
        return !(operand_mapping["A1"] & operand_mapping["A2"]);
    } else if(expression == "(A1 | A2)") {
        return !(operand_mapping["A1"] | operand_mapping["A2"]);
    } else if(expression == "!(A1 | A2)") {
        return !(operand_mapping["A1"] | operand_mapping["A2"]);        
    } else if(expression == "(A1 ^ A2)") {
        return !(operand_mapping["A1"] ^ operand_mapping["A2"]); 
    } else if(expression == "!(A1 ^ A2)") {
        return !(operand_mapping["A1"] ^ operand_mapping["A2"]); 
    } else {
        throw std::logic_error("Expression is invalid and cannot be evaluated!");
    }
}

template<typename T> bool is_in(const std::vector<T> vec, T elem){
    for(auto e : vec){
        if(e == elem) return true;
    }
    return false;
}

template<typename T> void cartesian_product(std::vector<std::vector<T>> &buckets, std::vector<std::vector<T>> &combinations){
    // make sure no bucket is empty
    bool check = true;
    for(auto& b : buckets)
        if(b.empty()) check &= false;

    if(check){    
        uint num_buckets = buckets.size();
        std::vector<uint> indices(num_buckets, 0);

        int next;
        while (true){
            std::vector<T> tmp;                                     // set of n elements from the n buckets
            for(uint ind=0; ind<indices.size(); ++ind){
                T elem = buckets[ind][indices[ind]];
                tmp.push_back(elem);
            }
            if(tmp.size() == num_buckets){                          // only add complete sets of elements (i.e., of size n)
                combinations.push_back(tmp);                        // push back combination
            }

            next = num_buckets-1;
            while(next >= 0 && (indices[next]+1 >= buckets[next].size()))
                next--;

            if(next < 0) break;

            indices[next]++;

            for(uint i=next+1; i<num_buckets; ++i) indices[i] = 0;
        }
    }

}

#endif // ___UTIL_HPP_
