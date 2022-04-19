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
#ifndef __VERICA_TEST_INJECTOR_HPP_
#define __VERICA_TEST_INJECTOR_HPP_

#include "injector/Injector.hpp"

class TestInjector
{
    public:

        /* Constructor(s) */
        TestInjector(Logger *logger, Settings *settings, State *state);

        /* Injector to test */
        Injector* injector;

        /* Make private methods of Injector public for test purposes */
        void generate_fault_combinations_partly(std::vector<std::vector<const verica::Wire* >> &faultLocations, std::vector<std::vector<const verica::Wire*>> &permutedFaultLocations, std::vector<std::vector<bool>> &bitmasks, int variate, uint64_t start, uint64_t range);
        std::vector<const verica::Wire*> generate_specific_fault_combinations(std::vector<const verica::Wire*> &faultLocations, std::vector<bool> &bitmask);

        void fault_injection_incremental(std::vector<const verica::Wire*> &nodes, std::vector<verica::fault::Fault> &faultList, int core);
        void fault_node(const verica::Wire* wire, verica::fault::Fault fault, int core);
        void elaborate_node(const verica::Wire* wire, int core);

        /* Make private methods of Injector public for test purposes */
        std::vector<std::vector<const verica::Wire*>> getPermutedFaultLocations();
        std::vector<const verica::Wire*> getValidFaultLocationsIn();
        std::vector<std::vector<const verica::Wire*>> getFaultLocations();
        std::vector<uint32_t> getStageNumbers();
        std::vector<std::vector<bool>> getBitmasks();
        std::vector<bool> getBitmask();
        int getNumOfCombinations();
        bool getPermutationDone();
        int getCurrentNumberOfFaults();
        bool getBatchComputingDone();
        uint64_t getBatchRange();
        uint64_t getBatchStart();
};

#endif // __VERICA_TEST_INJECTOR_HPP_
#endif