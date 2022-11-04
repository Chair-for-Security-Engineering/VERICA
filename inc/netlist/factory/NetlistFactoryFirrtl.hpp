/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Niklas Entschladen (niklas.entschladen@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2022/484
 *           https://eprint.iacr.org/2022/1131
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2022, Pascal Sasdrich
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

#ifndef __VERICA_PARSER_FIRRTL_NETLIST_FACTORY_FIRRTL_HPP_
#define __VERICA_PARSER_FIRRTL_NETLIST_FACTORY_FIRRTL_HPP_

#include <math.h>
#include <string>
#include <vector>

#include "context/State.hpp"

typedef boost::tuple<boost::optional<int>, boost::optional<int>> INTEGER_TYPE;
typedef boost::tuple<boost::optional<int>, boost::optional<int>, boost::optional<int>> FIXED_TYPE;
typedef boost::tuple<boost::optional<int>> CLOCK_TYPE;

typedef boost::variant<std::vector<int>, std::string, verica::Module*> EXP_TYPE;

class NetlistFactoryFirrtl
{
    public:
        NetlistFactoryFirrtl(State *state) : m_state(state) {
            // Initialize counters.
            mux_counter = 0;
            cond_valid_counter = 0;
            primop_counter = 0;
            bitop_pins = 0;
            bitop_wires = 0;
            padding_pins = 0;
            padding_wires = 0;
        };

        // Circuit operations.
        void set_circuit(std::string name);

        // Module opereations.
        verica::Module* add_module(std::string name);
        void set_topmodule(verica::Module* parent, verica::Module* child);

        // Port operations.
        void add_ports(verica::Module* module, std::string dir, std::string identifier, boost::variant<INTEGER_TYPE, FIXED_TYPE, CLOCK_TYPE> type);

        // Statement operations.
        void add_wires(verica::Module *module, std::string identifier, boost::variant<INTEGER_TYPE, FIXED_TYPE, CLOCK_TYPE> type);
        void add_register(verica::Module *module, std::string identifier, boost::variant<INTEGER_TYPE, FIXED_TYPE, CLOCK_TYPE> type);
        void add_instance(verica::Module *module, std::string instance_identifier, std::string identifier);
        void add_node(verica::Module *module, std::string identifier, EXP_TYPE exp);
        void add_connection(verica::Module *module, EXP_TYPE exp_left, EXP_TYPE exp_right);

        // Expression operations.
        std::vector<int> read_int(boost::optional<int> width, int value, bool signedInteger);
        std::vector<int> read_int_from_bits(boost::optional<int> width, std::string value, bool signedInteger);
        std::string check_reference(verica::Module* module, std::string identifier);
        std::string check_sub_index(verica::Module* module, std::string identifier, int index);
        verica::Module* add_multiplexer(verica::Module* module, EXP_TYPE sel, EXP_TYPE exp1, EXP_TYPE exp2);
        verica::Module* add_cond_valid(verica::Module* module, EXP_TYPE exp1, EXP_TYPE exp2);
        verica::Module* add_primop_logic_gate(verica::Module* module, std::string cell_id, std::vector<EXP_TYPE> arguments);
        EXP_TYPE primop_interpret(EXP_TYPE expression);
        std::string primop_bit_operation(verica::Module* module, std::string bitop, EXP_TYPE exp1, boost::variant<EXP_TYPE, int> exp2_or_param1, boost::optional<int> param2);

    private:
        State *m_state;

        // Circuit name for topmodule declaration.
        std::string circuit_name;

        // Counters used for unambiguous naming.
        unsigned int mux_counter;           // Number of created multiplexer modules.
        unsigned int cond_valid_counter;    // Number of created cond. valid modules.
        unsigned int primop_counter;        // Number of primitive operation modules.
        unsigned int bitop_pins;            // Number of performed bit operations on pins;
        unsigned int bitop_wires;           // Number of performed bit operations on wires;
        unsigned int padding_pins;          // Number of pins used for padding.
        unsigned int padding_wires;         // Number of wires used for padding.

        // Maps used to identify netlist components.
        std::map<std::string, verica::Module*> m_module_map;                                                            // Map identifiers to modules (vercia::Module).
        std::map<std::pair<verica::Module*, std::string>, std::vector<verica::Pin*>> m_port_vector_map;                 // Map identifiers to ports (verica::Pin).
        std::map<std::pair<verica::Module*, std::string>, std::vector<const verica::Pin*>> m_bitop_pin_vector_map;      // Map identifiers to bit operated pins (verica::Pin).
        std::map<std::pair<verica::Module*, std::string>, std::vector<const verica::Pin*>> m_inst_pin_vector_map;       // Map identifiers to instance pins (verica::Pin).
        std::map<std::pair<verica::Module*, std::string>, std::vector<verica::Wire*>> m_wire_vector_map;                // Map identifiers to wires (verica::Wire).
        std::map<std::pair<verica::Module*, std::string>, std::vector<const verica::Wire*>> m_bitop_wire_vector_map;    // Map identifiers to bit operated wires (verica::Wire).
        std::map<std::pair<verica::Module*, std::string>, verica::Module*> m_reg_map;                                   // Map identifiers to registers (verica::Module).
        std::map<std::pair<verica::Module*, std::string>, verica::Module*> m_inst_map;                                  // Map identifiers to instances (verica::Module).
        std::map<std::pair<verica::Module*, std::string>, EXP_TYPE> m_node_map;                                         // Map identifiers to nodes (EXP_TYPE).

        // Helper functions.
        boost::variant<const std::vector<const verica::Pin*>, const std::vector<const verica::Wire*>> get_pins_or_wires_from_expression(verica::Module* module, EXP_TYPE exp, bool input);
        void connect_expressions_to_module(verica::Module* module, verica::Module* exp_module, std::vector<EXP_TYPE> expressions, int idx = 0, bool fromCellTemplate = false);
        unsigned int get_expression_size(verica::Module* module, EXP_TYPE exp, bool input);
        const std::vector<const verica::Pin*> get_wire_inputs(const std::vector<const verica::Wire*> wires);
        const std::vector<const verica::Pin*> get_submodule_pins(const verica::Module* module, bool input);
};

#endif // __VERICA_PARSER_FIRRTL_NETLIST_FACTORY_FIRRTL_HPP_