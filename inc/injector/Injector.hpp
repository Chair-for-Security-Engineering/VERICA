/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de)
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

#ifndef __VERICA_INJECTOR_HPP_
#define __VERICA_INJECTOR_HPP_

#include "Service.hpp"

class Injector : public Service
{
    public:

        /* Constructor */
        Injector(std::string name, Logger *logger, Settings *settings, State *state);

        /* Destructor */
        ~Injector();

        struct InjectionContext;

        /* Accessor function(s) */
        /**
        * @brief Indicates if the generation of permuted fault locations is completed for the given n.
        * 
        * @return Returns true if generation is done.
        */
        const bool& permutation_done() const { return m_permutation_done; }
        
        /**
        * @brief Returns the vector of permuted fault locations.
        */        
        const std::vector<std::vector<const verica::Wire*>>& permuted_fault_locations() const { return m_permutedFaultLocations; }


        /* Computations */ 
        /**
        * @brief Extracts the next batch of permuted fault locations.
        * @param number_of_faults Number of faults that should be injected simultaneously in one logic stage.
        */
        void get_next_fault_locations(unsigned int number_of_faults);

        /**
        * @brief Modifies the BDDs associated with the wires stored in permutation and updates all BDDs on the propagation path. 
        * @param permutation Contains the permutation of fault locations that should be faulted.
        */
        std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> prepeare_fault_mappings_for_injection(std::vector<const verica::Wire*> &permutation);

        /**
        * @brief Modifies the BDDs associated with the wires stored in permutation and updates all BDDs on the propagation path. 
        * @param wires List of wires that should be faulted.
        * @param faultList List of valid fault mappings of target wires.
        * @param core Working thread.
        */
        void inject(std::vector<const verica::Wire*> &wires, std::vector<verica::fault::Fault> &faultList, int core);

        /**
        * @brief This function is used to detect effective faults and interrupt the computation. A detailed report is returned to the user. 
        * @param fault_mappings List of pair that contains the fault locations (wires) with the corresponding fault types.
        * @param thread_num Working thread.
        * @param position Current position in the fault_mappings list.
        * @param cancel Indicats if a analysis should be canceled.
        */
        void interrupt_fault_injection(std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> fault_mappings, int &thread_num, bool &cancel);

        /**
        * @brief After each call of inject(), the faulted BDDs need to be restored.
        * @param locations Permuted locations.
        * @param thread_num Working thread.
        */
        void restore_faulty_models(std::vector<const verica::Wire*> &locations, int &thread_num);

        void adapt_permuted_fault_locations_for_sna();

    private:
        friend class TestInjector;

        void generate_fault_combinations_partly(std::vector<std::vector<const verica::Wire* >> &faultLocations, std::vector<std::vector<const verica::Wire*>> &permutedFaultLocations, std::vector<std::vector<bool>> &bitmasks, int variate, uint64_t start, uint64_t range);
        std::vector<const verica::Wire*> generate_specific_fault_combinations(std::vector<const verica::Wire*> &faultLocations,  std::vector<bool> &bitmask);

        void fault_injection_incremental(std::vector<const verica::Wire*> &nodes, std::vector<verica::fault::Fault> &faultList, int core);
        void fault_node(const verica::Wire* wire, verica::fault::Fault fault, int core);
        void elaborate_node(const verica::Wire* wire, int core);

        /* State for computing permuted fault locations */
        std::vector<std::vector<const verica::Wire*>> m_permutedFaultLocations;         // permuted fault locations used to inject faults
        std::vector<const verica::Wire*> m_validFaultLocationsIn;                       // contains either faultLocations or faultLocationsReduced
        std::vector<std::vector<const verica::Wire*>> m_faultLocations;                 // contains all fault locations extracted from the valid logic stages
        std::vector<uint32_t> m_stage_numbers;                                          // contains different stage numbers that are available in the valid vector of fault locations
        std::vector<std::vector<bool>> m_bitmasks;                                      // bitsmask to determine combinations of fault locations in each logic stage
        std::vector<bool> m_bitmask;                                                    // is used to generate all valid combinations of stages based on the given variate
        unsigned int m_num_of_combinations;                                             // stores the number of combinations that need to be generated
        bool m_permutation_done = true;                                                 // indicates if the computation for the current parameters (i.e., a given n) is done
        unsigned int m_current_number_of_faults = 0;                                    // stores to number of fault injections that are currently evaluated
        bool m_batch_computing_done = true;                                             // stores the state of the batch computation of the permuted fault locations
        uint64_t m_batch_range = 1;                                                     // batch size
        uint64_t m_batch_start = 0;                                                     // stores the starting point of the current batch
};

#endif // __VERICA_INJECTOR_HPP_