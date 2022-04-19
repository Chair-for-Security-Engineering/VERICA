/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2020/634.pdf
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

#ifndef __VERICA_PARSER_VERILOG_NETLIST_FACTORY_VERILOG_HPP_
#define __VERICA_PARSER_VERILOG_NETLIST_FACTORY_VERILOG_HPP_

#include <string>
#include <vector>

#include "context/State.hpp"

typedef std::vector<boost::variant<boost::variant<std::string, std::vector<boost::tuple<boost::variant<std::pair<int, int>, int>, int>>>, std::pair<std::string, std::string>>> attribute_list; 
typedef boost::variant<std::string, std::vector<boost::tuple<boost::variant<boost::tuple<int, int>, int>, int>>> silver_attribute;
typedef std::vector<boost::tuple<boost::variant<boost::tuple<int, int>, int>, int>> piid_attribute;

class NetlistFactoryVerilog
{
    public:
        NetlistFactoryVerilog(State *state) : m_state(state) { };

        verica::Module* add_module(std::string name);
        void set_topmodule(verica::Module* parent, verica::Module* child);

        const verica::Wire* add_wire(std::string name, verica::Module* parent, verica::Pin* source_pin);
        void add_wires(verica::Module *module, std::vector<std::string> identifiers, boost::optional<std::pair<int, int>> range);

        std::vector<const verica::Pin*> get_ports(verica::Module* m, std::string port_identifier);
        void add_ports(verica::Module* module, std::string type, boost::optional<std::pair<int, int>> range, std::vector<std::string> identifiers, boost::optional<std::vector<boost::variant<silver_attribute, piid_attribute, std::pair<std::string, std::string>>>> attributes);

        std::vector<boost::variant<const verica::Pin*, const verica::Wire*>> get_pins_and_wires(const verica::Module* module, std::vector<boost::tuple<std::string, boost::optional<boost::variant<int, std::pair<int, int>>>>> identifiers);
        std::vector<boost::variant<const verica::Pin*, const verica::Wire*>> get_pins_and_wires_single(verica::Module* module, boost::tuple<std::string, boost::optional<boost::variant<int, std::pair<int, int>>>> identifier);
        std::vector<boost::variant<const verica::Pin*, const verica::Wire*>> get_pins_and_wires_multiple(verica::Module* module, std::vector<boost::tuple<std::string, boost::optional<boost::variant<int, std::pair<int, int>>>>> identifiers);
        std::vector<boost::variant<const verica::Pin*, const verica::Wire*>> get_pins_and_wires_single_assign(verica::Module* module, boost::tuple<std::string, boost::optional<boost::variant<int, std::pair<int, int>>>> identifier);
        std::vector<boost::variant<const verica::Pin*, const verica::Wire*, std::string>> get_connectors(verica::Module* module, bool parent, std::vector<boost::variant<std::vector<int>, boost::tuple<std::string, boost::optional<boost::variant<int, std::pair<int, int>>>>>> identifiers);
        
        verica::Module* add_gate(CellTemplate type, std::string name, verica::Module *parent);

        void assign(verica::Module* module, std::vector<const verica::Pin*> pins, std::vector<boost::variant<const verica::Pin*, const verica::Wire*>> pins_and_wires);
        void assign_connections(verica::Module* module, std::vector<const verica::Pin*> pins, std::vector<boost::variant<const verica::Pin*, const verica::Wire*, std::string>> pins_and_wires);
        void assign_wires(verica::Module* module, std::vector<boost::variant<const verica::Pin*, const verica::Wire*>> left_identifiers, std::vector<boost::variant<const verica::Pin*,const verica::Wire*>> right_identifiers);

        //std::vector<int>
        std::vector<int> read_int(int width, char format, std::string value);

        //void remove_unconnected_pins_and_wires();
        //void remove_clock_control();
        
    private:
        State *m_state;

        // hold primary input identifier
        std::map<int, int> m_piid_map;
};

#endif // __VERICA_PARSER_VERILOG_NETLIST_FACTORY_VERILOG_HPP_