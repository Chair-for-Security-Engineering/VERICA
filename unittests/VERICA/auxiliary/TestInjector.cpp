/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Niklas Entschladen (niklas.entschladen@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2022/484
 *           https://eprint.iacr.org/2022/1131
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
#include "unittest/TestInjector.hpp"

/* 
 * =========================================================================================
 * Constructor(s)
 * =========================================================================================
 */

TestInjector::TestInjector(Logger *logger, Settings *settings, State *state) :
    injector{new Injector("TEST_INJECTOR", logger, settings, state)}
{

}

/* 
 * =========================================================================================
 * Destructor
 * =========================================================================================
 */
TestInjector::~TestInjector(){
    delete this->injector;
    this->injector = nullptr;
}
/* 
 * =========================================================================================
 * Member functions
 * =========================================================================================
 */

void
TestInjector::generate_fault_combinations_partly(std::vector<std::vector<const verica::Wire* >> &faultLocations, std::vector<std::vector<const verica::Wire*>> &permutedFaultLocations, std::vector<std::vector<bool>> &bitmasks, int variate, uint64_t start, uint64_t range) {
    this->injector->generate_fault_combinations_partly(faultLocations, permutedFaultLocations, bitmasks, variate, start, range);
}

std::vector<const verica::Wire*>
TestInjector::generate_specific_fault_combinations(std::vector<const verica::Wire*> &faultLocations, std::vector<bool> &bitmask) {
    std::vector<const verica::Wire*> sfc = this->injector->generate_specific_fault_combinations(faultLocations, bitmask);
    return sfc;
}

void 
TestInjector::fault_injection_incremental(std::vector<const verica::Wire*> &nodes, std::vector<verica::fault::Fault> &faultList, int core) {
    this->injector->fault_injection_incremental(nodes, faultList, core);
}

void 
TestInjector::fault_node(const verica::Wire* wire, verica::fault::Fault fault, int core) {
    this->injector->fault_node(wire, fault, core);
}

void 
TestInjector::elaborate_node(const verica::Wire* wire, int core) {
    this->injector->elaborate_node(wire, core);
}

std::vector<std::vector<const verica::Wire*>> 
TestInjector::getPermutedFaultLocations() {
    return this->injector->m_permutedFaultLocations;
}

std::vector<const verica::Wire*>
TestInjector::getValidFaultLocationsIn() {
    return this->injector->m_validFaultLocationsIn;
};

std::vector<std::vector<const verica::Wire*>>
TestInjector::getFaultLocations() {
    return this->injector->m_faultLocations;
}

std::vector<uint32_t>
TestInjector::getStageNumbers() {
    return this->injector->m_stage_numbers;
}

std::vector<std::vector<bool>>
TestInjector::getBitmasks() {
    return this->injector->m_bitmasks;
}

std::vector<bool>
TestInjector::getBitmask() {
    return this->injector->m_bitmask;
}

int
TestInjector::getNumOfCombinations() {
    return this->injector->m_num_of_combinations;
}

bool
TestInjector::getPermutationDone() {
    return this->injector->m_permutation_done;
}

int
TestInjector::getCurrentNumberOfFaults() {
    return this->injector->m_current_number_of_faults;
}

bool
TestInjector::getBatchComputingDone() {
    return this->injector->m_batch_computing_done;
}

uint64_t
TestInjector::getBatchRange() {
    return this->injector->m_batch_range;
}

uint64_t
TestInjector::getBatchStart() {
    return this->injector->m_batch_start;
}
#endif