/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de)
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

#ifndef __VERICA_CONTEXT_STATE_HPP_
#define __VERICA_CONTEXT_STATE_HPP_

#include "injector/fault.hpp"

#include "netlist/Netlist.hpp"
#include "context/CellLibrary.hpp"
#include "context/FaultLibrary.hpp"

// Used for SCA analysis
enum class Composability { NONE, NI, SNI, PINI, CNI, CSNI, ICSNI, CINI, ICINI };

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

        std::map<int, std::vector<const verica::Pin*>> m_shared_outputs;
        std::vector<const verica::Pin*> m_min_shared_outputs;
        unsigned int m_num_output_shares = 0;

        /* SCA: Probe combinations */
        // first entry in the pair contains all real probes while the second entry contains all "virtual" probes (e.g., for simulating abort signals)
        std::vector<std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>>>> m_probe_combinations;

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
        std::vector<double> m_na_security;      // do we need this? Can the same information be extracted from the vectors below?
        std::vector<double> m_sna_security;     // do we need this? Can the same information be extracted from the vectors below?
        std::vector<double> m_fini_security;    // do we need this? Can the same information be extracted from the vectors below?
        std::vector<double> m_cini_security;    // do we need this? Can the same information be extracted from the vectors below?

        std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> m_current_fault_injections;
        std::vector<int> m_current_number_of_input_faults;

        /* Combined Analysis */
        std::vector<std::pair<int, int>> m_verified_cni_orders = {std::make_pair(0,0)};
        std::vector<std::pair<int, int>> m_verified_csni_orders = {std::make_pair(0,0)};
        std::vector<std::pair<int, int>> m_verified_icsni_orders = {std::make_pair(0,0)};
        std::vector<std::pair<int, int>> m_verified_cini_orders = {std::make_pair(0,0)};
        std::vector<std::pair<int, int>> m_verified_icini_orders = {std::make_pair(0,0)};

        /* Fault/Probe Pair for Visualization */
        std::vector<const verica::Wire*> m_visualization_faults;
        std::vector<const verica::Wire*> m_visualization_probes;

        
        /* Reporting */
        // store leaking probes of different strategies 
        std::vector<std::vector<const verica::Wire*>> m_leaking_probes_sca;
        std::vector<std::vector<const verica::Wire*>> m_leaking_probes_pni;
        std::vector<std::vector<const verica::Wire*>> m_leaking_probes_psni;
        std::vector<std::vector<const verica::Wire*>> m_leaking_probes_pini;

        // store effective faults of different strategies
        std::vector<std::vector<const verica::Wire*>> m_effective_faults_fia;
        std::vector<std::vector<const verica::Wire*>> m_effective_faults_fni;
        std::vector<std::vector<const verica::Wire*>> m_effective_faults_fsni;
        std::vector<std::vector<const verica::Wire*>> m_effective_faults_fini;
        std::vector<std::vector<const verica::Wire*>> m_effective_faults_cni;
        std::vector<std::vector<const verica::Wire*>> m_effective_faults_csni;
        std::vector<std::vector<const verica::Wire*>> m_effective_faults_icsni;
        std::vector<std::vector<const verica::Wire*>> m_effective_faults_cini;
        std::vector<std::vector<const verica::Wire*>> m_effective_faults_icini;

        // store leaking combinations of probes and faults
        std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>>> m_leaking_combinations_sca_fia;
        std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>>> m_leaking_combinations_cni;
        std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>>> m_leaking_combinations_csni;
        std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>>> m_leaking_combinations_icsni;
        std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>>> m_leaking_combinations_cini;
        std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<const verica::Wire*>>> m_leaking_combinations_icini;
};

#endif // __VERICA_CONTEXT_STATE_HPP_