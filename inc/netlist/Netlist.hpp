/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: 
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
 * Please see LICENSE and README for license and further instructions.
 */

#ifndef __VERICA_NETLIST_HPP__
#define __VERICA_NETLIST_HPP__

#include <string>
#include <algorithm>   
#include <unordered_set>

#include "boost/tuple/tuple.hpp"
#include "boost/optional.hpp"
#include "boost/optional/optional.hpp"
#include "boost/variant/get.hpp"
#include "boost/variant/variant.hpp"
#include "boost/range/adaptor/indexed.hpp"
#include <boost/none.hpp>

#include "netlist/CellTemplate.hpp"
#include "netlist/Module.hpp"
#include "netlist/Wire.hpp"
#include "netlist/Pin.hpp"

#include "injector/fault.hpp"
#include "context/CellLibrary.hpp"

namespace verica
{
    typedef std::vector<boost::variant<boost::variant<std::string, std::vector<boost::tuple<boost::variant<std::pair<int, int>, int>, int>>>, std::pair<std::string, std::string>>> attribute_list; 

    class Netlist
    {
        public:
            void info();

            /* Constructor(s) */
            Netlist(std::string name);


            /* Statistics */
            int num_modules();
            int num_gates();
            int num_combinational_gates();
            int num_sequential_gates();
            int num_wires();
            int num_pins();


            /* Accessor(s) */
            const std::string& name() const { return this->m_name; };


            /* Utility */
            std::string wire_vector_to_json_string(std::vector<const Wire*> vec);
            std::string fault_state_to_json_string(std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>> fault_mappings, CellLibrary* cell_library);


            /* Module functions */
            Module* add_module(std::string name);
            Module* add_module(std::string name, Module* parent);
            Module* add_module(std::string name, Module* parent, CellTemplate gate_template);
            Module* replicate_module(std::string name, Module* parent, const Module* origin, bool submodule);

            const std::map<int, Module*>& modules() const { return m_modules; }
            const Module* get_module(const int uid) const { return m_modules.at(uid); }

            void set_topmodule(Module *new_top);
            const Module* topmodule() const { return m_topmodule; }

            void set_module_under_test(Module *new_module);
            const Module* module_under_test() const { return m_module_under_test; }

            void ignore_module(int uid, bool ignore);    // TODO: Split into include_module(Module *module) and exclude_module(Module *module)?

            std::vector<const verica::Module*> get_gates(uint uid);

            void remove_module(int uid);
            

            /* Wire functions */
            Wire* add_wire(std::string name);
            Wire* add_wire(std::string name, Module *parent);
            Wire* add_wire(std::string name, Module *parent, int primary_input_identifier);

            const std::map<int, Wire*>& wires() const { return m_wires; }
            const Wire* get_wire(const int uid) const { return m_wires.at(uid); }

            void rename_wire(int uid, std::string new_name);
            void sort_wires();

            void remove_wire(int uid);

            void resize_bdd_vectors(int uid, int size);
            void set_bdd_golden_function(int uid, BDD function, int idx);
            void set_bdd_faulty_function(int uid, BDD function, int idx);
            void set_bdd_secret(int uid, BDD function, int idx);

            void insert_variable(int uid, const Wire* wire, int idx);
            void insert_variable(int uid, std::set<const Wire*> wires, int idx);
            
            void insert_register(int uid, const Wire* wire, int idx);
            void insert_register(int uid, std::set<const Wire*> wires, int idx);
            
            void set_depth_index(int uid, int index);
            void set_stage_index(int uid, int index);

            void add_share(verica::Module* module, int index, int share);

            void push_back_to_propagation_path(int uid, const Wire* new_item);
            void set_faulty_gate_identifier(int uid, int new_identifier, int core);
            void set_primary_input_identifier(int uid, int identifier);


            /* Pin functions */
            Pin* add_pin(std::string name);
            Pin* add_pin(std::string name, Module *parent, bool is_input);
            Pin* add_pin(std::string name, Module *parent, bool is_input, int gate_identifier);
            void set_constant_input(int pin_uid, int const_value);

            const std::map<int, Pin*>& pins() const { return m_pins; }
            const Pin* get_pin(const int uid) const { return m_pins.at(uid); }

            void set_pin_share_domain(int uid, int share_domain);
            void set_pin_share_index(int uid, int share_index);
            void set_pin_type(Pin *p, Flag port_type);
            void set_pin_type(int uid, Flag port_type);
            void set_pin_gate_identifier(int uid, int gate_identifier);

            void remove_pin(int uid);  


            /* Connectivity functions */
            void set_wire_source(int uid, int pin_uid);
            void set_wire_target(int uid, int pin_uid);


            /* Hierarchy functions */
            void set_parent_module(Module *child, Module *parent);
            void add_wire_to_parents(Module *parent, const Wire *wire);

            int& register_stages() { return m_register_stages; }
            const int& register_stages() const { return m_register_stages; }

            int& logic_stages() { return m_logic_stages; }
            const int& logic_stages() const { return m_logic_stages; }

            /* Replica information */
            std::map<int, int> m_replica_pin_uids;
            std::map<int, verica::Module*> m_replica_modules;


            /* Postprocessing functions */
            void remove_type_from_netlist(Flag type);
            int remove_unconnected_pins();
            int remove_unconnected_wires();

            /* Debugging */
            void print_hierarchy(const Module* top, int level);            


        private:
            /* Netlist name */
            std::string m_name;

            /* Hierarchy (entry point) */
            Module* m_topmodule;
            Module* m_module_under_test;    

            /* Container */
            std::map<int,  Module*> m_modules;
            std::map<int,  Wire*> m_wires;
            std::map<int,  Pin*> m_pins;
            int m_next_module_id = 0;
            int m_next_wire_id = 0;
            int m_next_pin_id = 0;

            /* Hierarical details */
            int m_register_stages = 0;
            int m_logic_stages = 0;
    };
}

#endif // __VERICA_NETLIST_HPP__