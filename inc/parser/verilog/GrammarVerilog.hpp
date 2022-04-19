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

#ifndef __VERICA_PARSER_VERILOG_GRAMMAR_VERILOG_HPP_
#define __VERICA_PARSER_VERILOG_GRAMMAR_VERILOG_HPP_

#include "boost/spirit/include/qi.hpp"
#include "boost/spirit/include/phoenix.hpp"

#include <boost/fusion/adapted.hpp>

#include "context/State.hpp"

#include "netlist/factory/NetlistFactoryVerilog.hpp"

typedef std::vector<boost::variant<boost::variant<std::string, std::vector<boost::tuple<boost::variant<std::pair<int, int>, int>, int>>>, std::pair<std::string, std::string>>> attribute_list; 
typedef boost::variant<std::string, std::vector<boost::tuple<boost::variant<boost::tuple<int, int>, int>, int>>> silver_attribute;
typedef std::vector<boost::tuple<boost::variant<boost::tuple<int, int>, int>, int>> piid_attribute;


template<typename Iterator, typename Skipper>
class GrammarVerilog : public boost::spirit::qi::grammar<Iterator, Skipper> {
    public:
        GrammarVerilog(State* state) : GrammarVerilog::base_type(START), m_netlist_factory(state)
        {
            for (auto cell : state->m_cell_library->gate_types())
                GATE_TYPES.add(cell.first, *cell.second);

            /* PARSER DIRECTIVES */
            using boost::spirit::qi::as_string;
            using boost::spirit::qi::lexeme;
            using boost::spirit::qi::omit;

            /* CHARACTER PARSERS */
            using boost::spirit::qi::char_;
            using boost::spirit::qi::lit;
            using boost::spirit::qi::string; 
            
            /* CHARACTER CLASSIFICATION PARSERS */
            using boost::spirit::qi::ascii::alpha;
            using boost::spirit::qi::ascii::alnum;

            /* NUMERIC PARSERS */
            using boost::spirit::qi::int_;

            /* PLACEHOLDERS */
            using namespace boost::spirit::qi::labels;

            /* RULE DEFINITIONS: RANGES */
            SINGLE %= ("[" >> int_ >> "]");
            RANGE  %= ("[" >> int_ >> ":" >> int_ >> "]");

            /* RULE DEFINITIONS: DEFAULT IDENTIFIERS */
            DEFAULT_IDENTIFIER %= IDENTIFIER >> -(SINGLE | RANGE);

            /* RULE DEFINITIONS: IDENTIFIERS */
            IDENTIFIER %= as_string[(alpha | char_("_\\")) >> *(alnum | char_("_$/<>.^"))];

            /* RULE DEFINITIONS: PINS */
            PIN_IDENTIFIER %= IDENTIFIER;

            /* RULE DEFINITIONS: GATES */
            GATE_IDENTIFIER     %= IDENTIFIER;
            GATE_INSTANTIATION   = (GATE_TYPES >> GATE_IDENTIFIER) [_val = boost::phoenix::bind(&NetlistFactoryVerilog::add_gate, &m_netlist_factory, boost::spirit::_1, boost::spirit::_2, _r1)] 
                                >> lit("(")
                                >> (PORT_ASSIGNMENT(_val) % ",")
                                >> lit(")") >> lit(";");

            /* RULE DEFINITIONS: WIRES */
            WIRE_IDENTIFIER   %= IDENTIFIER;
            WIRE_DECLARATION   = lit("wire") >> (-RANGE[_a = boost::spirit::_1] >> (WIRE_IDENTIFIER % ",")[_b = boost::spirit::_1] >> ";")[boost::phoenix::bind(&NetlistFactoryVerilog::add_wires, &m_netlist_factory, _r1, _b, _a)];
            WIRE_ASSIGNMENT    = lit("assign") >> (DEFAULT_IDENTIFIER[_a = boost::phoenix::bind(&NetlistFactoryVerilog::get_pins_and_wires_single_assign, &m_netlist_factory, _r1, boost::spirit::_1)]) >> lit("=") >> (DEFAULT_IDENTIFIER[_b = boost::phoenix::bind(&NetlistFactoryVerilog::get_pins_and_wires_single_assign, &m_netlist_factory, _r1, boost::spirit::_1), boost::phoenix::bind(&NetlistFactoryVerilog::assign_wires, &m_netlist_factory, _r1, _a, _b)])  > lit(";"); 

            /* RULE DEFINITIONS: PORTS */
            PORT_IDENTIFIER     %= IDENTIFIER;
            PORT_DECLARATION     = -ATTRIBUTE_LIST[_c = boost::spirit::_1] >> (string("input") | string("output"))[_a = boost::spirit::_1] >> (-RANGE[_b = boost::spirit::_1] >> (PORT_IDENTIFIER % ",")[boost::phoenix::bind(&NetlistFactoryVerilog::add_ports, &m_netlist_factory, _r1, _a, _b, boost::spirit::_1, _c)] >> ";");
            PORT_ASSIGNMENT     %= (lit(".") >> PORT_IDENTIFIER [_a = boost::phoenix::bind(&NetlistFactoryVerilog::get_ports, &m_netlist_factory, _r1, boost::spirit::_1)] >> (lit("(") >> -(((ASSIGNMENT_LIST[_c = boost::spirit::_1, _b = boost::phoenix::bind(&NetlistFactoryVerilog::get_connectors, &m_netlist_factory, _r1, true, _c)]) | (lit("{") >> ASSIGNMENT_LIST [_c = boost::spirit::_1, _b = boost::phoenix::bind(&NetlistFactoryVerilog::get_connectors, &m_netlist_factory, _r1, true, _c)] >> lit("}")))[boost::phoenix::bind(&NetlistFactoryVerilog::assign_connections, &m_netlist_factory, _r1, _a, _b)]) >> lit(")")));

            ASSIGNMENT = (int_ >> string("'") >> char_("bdh") >> as_string[*(char_("0-9a-fA-F"))])[_val = boost::phoenix::bind(&NetlistFactoryVerilog::read_int, &m_netlist_factory, boost::spirit::_1, boost::spirit::_3, boost::spirit::_4)] /*string("1'b0") | string("1'b1"))*/ | (DEFAULT_IDENTIFIER)[_val = boost::spirit::_1] ;
            ASSIGNMENT_LIST = (ASSIGNMENT % ",");

            /* RULE DEFINITIONS: MODULES */
            MODULE_IDENTIFIER    %= IDENTIFIER;
            MODULE_DECLARATION  = *ATTRIBUTE
                                >> "module" >> MODULE_IDENTIFIER[_val = boost::phoenix::bind(&NetlistFactoryVerilog::add_module, &m_netlist_factory, boost::spirit::_1), boost::phoenix::bind(MODULE_TYPES.add, boost::spirit::_1, _val)]
                                >> "(" >> (PORT_IDENTIFIER % ",") >> ")" >> ";"
                                >> *(PORT_DECLARATION(_val) | WIRE_DECLARATION(_val)  | MODULE_INSTANTIATION(_val)  | GATE_INSTANTIATION(_val)  | WIRE_ASSIGNMENT(_val) )
                                >> string("endmodule");         
            MODULE_INSTANTIATION =  MODULE_TYPES [_a = boost::spirit::_1, boost::phoenix::bind(&NetlistFactoryVerilog::set_topmodule, &m_netlist_factory, _r1, _a)] >> MODULE_IDENTIFIER
                                >> lit("(") >> (PORT_ASSIGNMENT(_a) % ",") >> lit(")") >> lit(";");

            /* RULE DEFINITIONS: ATTRIBUTES */
            ATTRIBUTE               %= ATTRIBUTE_IDENTIFIER >> "=" >> ATTRIBUTE_SPECIFICATION;
            ATTRIBUTE_IDENTIFIER    %= IDENTIFIER;
            ATTRIBUTE_SPECIFICATION %= lexeme['"' >> *(char_ - '"') >> '"'];

            SILVER_ATTRIBUTE        %= lit("SILVER") >> "=" >> lit('"') >> (SILVER_ATTRIBUTE_TYPE | SILVER_ATTRIBUTE_SHARE) >>  lit('"');
            SILVER_ATTRIBUTE_SHARE  %= ((((lit("[") >> int_ >> lit(":") >> int_ >> lit("]")) | (int_)) >> lit("_") >> int_) % ",");
            SILVER_ATTRIBUTE_TYPE   %= string("clock") | string("refresh") | string("control");

            PIID_ATTRIBUTE          %= lit("PIID") >> "=" >> lit('"') >> (PIID_ATTRIBUTE_RED) >>  lit('"');
            PIID_ATTRIBUTE_RED      %= ((((lit("[") >> int_ >> lit(":") >> int_ >> lit("]")) | (int_)) >> lit("_") >> int_) % ",");

            ATTRIBUTE_LIST          %= "(*" >> ((SILVER_ATTRIBUTE | PIID_ATTRIBUTE | ATTRIBUTE) % ",") >> "*)";
                
            /* RULE DEFINITION: START SYMBOL (ENTRY POINT) */
            START = *(MODULE_DECLARATION);
        }

    private:

        /* Netlist factory */
        NetlistFactoryVerilog m_netlist_factory;

        // RULE DECLARATIONS: RANGES
        boost::spirit::qi::rule<Iterator, int(), Skipper> SINGLE;
        boost::spirit::qi::rule<Iterator, std::pair<int,int>(), Skipper> RANGE;

        // RULE DECLARATIONS: IDENTIFIER
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> IDENTIFIER;

        // RULE DECLARATIONS: DEFAULT IDENTIFIERS
        boost::spirit::qi::rule<Iterator, boost::tuple<std::string, boost::optional<boost::variant<int, std::pair<int, int>>>>, Skipper> DEFAULT_IDENTIFIER;

        /* RULE DECLARATION: PINS */
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> PIN_IDENTIFIER;
        boost::spirit::qi::rule<Iterator, void(), Skipper> PIN_ASSIGNMENT;

        /* RULE DECLARATION: GATES */
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> GATE_IDENTIFIER;
        boost::spirit::qi::rule<Iterator, verica::Module*(verica::Module*), Skipper> GATE_INSTANTIATION;

        /* RULE DECLARATION: WIRES */
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> WIRE_IDENTIFIER;
        boost::spirit::qi::rule<Iterator, void(verica::Module*), boost::spirit::qi::locals<boost::optional<std::pair<int, int>>, std::vector<std::string>>, Skipper> WIRE_DECLARATION;
        boost::spirit::qi::rule<Iterator, void(verica::Module*), boost::spirit::qi::locals<std::vector<boost::variant<const verica::Pin*, const verica::Wire*>>, std::vector<boost::variant<const verica::Pin*, const verica::Wire*>>>, Skipper> WIRE_ASSIGNMENT;

        /* RULE DECLARATION: PORTS */
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> PORT_IDENTIFIER;
        boost::spirit::qi::rule<Iterator, void(verica::Module*), boost::spirit::qi::locals<std::string, boost::optional<std::pair<int, int>>, boost::optional<std::vector<boost::variant<silver_attribute, piid_attribute,  std::pair<std::string, std::string>>>>>, Skipper> PORT_DECLARATION;
        boost::spirit::qi::rule<Iterator, void(verica::Module*), boost::spirit::qi::locals<std::vector<const verica::Pin*>, std::vector<boost::variant<const verica::Pin*, const verica::Wire*, std::string>>, std::vector<boost::variant<std::vector<int>, boost::tuple<std::string, boost::optional<boost::variant<int, std::pair<int, int>>>>>>>, Skipper> PORT_ASSIGNMENT;
        boost::spirit::qi::rule<Iterator, boost::variant<std::vector<int>, boost::tuple<std::string, boost::optional<boost::variant<int, std::pair<int, int>>>>>(), Skipper> ASSIGNMENT;
        boost::spirit::qi::rule<Iterator, std::vector<boost::variant<std::vector<int>, boost::tuple<std::string, boost::optional<boost::variant<int, std::pair<int, int>>>>>>(), Skipper> ASSIGNMENT_LIST;

        /* RULE DECLARATION: MODULES */
        boost::spirit::qi::rule<Iterator, verica::Module*(), Skipper> MODULE_DECLARATION;
        boost::spirit::qi::rule<Iterator, void(verica::Module*), boost::spirit::qi::locals<verica::Module*>, Skipper> MODULE_INSTANTIATION;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> MODULE_IDENTIFIER;

        /* RULE DECLARATION: ATTRIBUTES */
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> ATTRIBUTE_IDENTIFIER;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> ATTRIBUTE_SPECIFICATION;
        boost::spirit::qi::rule<Iterator, std::pair<std::string, std::string>(), Skipper> ATTRIBUTE;
        boost::spirit::qi::rule<Iterator, std::vector<boost::tuple<boost::variant<boost::tuple<int, int>, int>, int>>(), Skipper> SILVER_ATTRIBUTE_SHARE;                 
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> SILVER_ATTRIBUTE_TYPE;
        boost::spirit::qi::rule<Iterator, silver_attribute(), Skipper> SILVER_ATTRIBUTE;
        boost::spirit::qi::rule<Iterator, piid_attribute(), Skipper> PIID_ATTRIBUTE_RED;  
        boost::spirit::qi::rule<Iterator, piid_attribute(), Skipper> PIID_ATTRIBUTE;
        boost::spirit::qi::rule<Iterator, std::vector<boost::variant<silver_attribute, piid_attribute, std::pair<std::string, std::string>>>(), Skipper> ATTRIBUTE_LIST;

        /* RULE DECLARATION: START SYMBOL */
        boost::spirit::qi::rule<Iterator, Skipper> START;

        /* Databases */
        boost::spirit::qi::symbols<char, CellTemplate> GATE_TYPES;
        boost::spirit::qi::symbols<char, verica::Module*> MODULE_TYPES;
};

#endif // __VERICA_PARSER_VERILOG_GRAMMAR_VERILOG_HPP_