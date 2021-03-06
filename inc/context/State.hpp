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

#ifndef __VERICA_CONTEXT_STATE_HPP_
#define __VERICA_CONTEXT_STATE_HPP_

#include "injector/fault.hpp"

#include "netlist/Netlist.hpp"
#include "context/CellLibrary.hpp"
#include "context/FaultLibrary.hpp"

// Used for SCA analysis
enum Composability {NONE, NI, SNI, PINI, CNI, CSNI, ICSNI };

class State
{
    public:

        /* Constructor */
        State();

        /* Destructor */
        ~State();

        /* Cell Library */
        CellLibrary* m_cell_library = new CellLibrary();

        /* Netlist */
        verica::Netlist *m_netlist_model = nullptr;

        /* SCA: Sharing details */
        std::map<int, std::vector<const verica::Wire*>> m_shared_inputs;
        std::vector<const verica::Wire*> m_min_shared_inputs;
        std::vector<const verica::Wire*> m_shared_variables;
        unsigned int m_num_output_shares = 0;

        /* SCA: Probe combinations */
        std::vector<std::vector<std::vector<const verica::Wire*>>> m_probe_combinations;

        /* CUDD manager */
        std::vector<Cudd_Manager> m_managers;

        /* Fault Library */
        FaultLibrary* m_fault_library = new FaultLibrary();

        /* Fault related members */
        std::map<int, std::vector<verica::fault::Fault>> m_faultMap;
        std::vector<const verica::Wire*> m_faultLocations; 
        std::vector<const verica::Wire*> m_faultLocationsReduced; 

        /* Detection-based */
        std::vector<const verica::Wire*> m_error_flags;
        std::vector<const verica::Wire*> m_data_output_wires;

        int m_mut_input_size = 0;
        std::vector<const verica::Wire*> m_mut_outputs;
        int m_current_number_of_injected_faults = 0;

        /* Precomputations SIFA and SFA */
        std::vector<std::vector<BDD>> m_unshared_output_combinations;

        std::vector<std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>>> m_leaking_fault_injections;

        /* Reporting FIA */
        std::vector<double> m_effective;
        std::vector<double> m_ineffective;
        std::vector<double> m_detected;
        std::vector<double> m_scenarios;
        std::vector<double> m_na_security;
        std::vector<double> m_sna_security;

        std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> m_current_fault_injections;
        std::vector<int> m_current_number_of_input_faults;

        /* Combined Analysis */
        std::vector<std::pair<int, int>> m_verified_cni_orders = {std::make_pair(0,0)};
        std::vector<std::pair<int, int>> m_verified_csni_orders = {std::make_pair(0,0)};
        std::vector<std::pair<int, int>> m_verified_icsni_orders = {std::make_pair(0,0)};

        /* Fault/Probe Pair for Visualization */
        std::vector<const verica::Wire*> m_visualization_faults;
        std::vector<const verica::Wire*> m_visualization_probes;
};

#endif // __VERICA_CONTEXT_STATE_HPP_