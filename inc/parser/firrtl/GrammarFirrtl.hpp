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

#ifndef __VERICA_PARSER_FIRRTL_GRAMMAR_FIRRTL_HPP_
#define __VERICA_PARSER_FIRRTL_GRAMMAR_FIRRTL_HPP_

#include "boost/spirit/include/qi.hpp"
#include "boost/spirit/include/phoenix.hpp"

#include <boost/fusion/adapted.hpp>

#include "context/State.hpp"

#include "netlist/factory/NetlistFactoryFirrtl.hpp"

typedef boost::tuple<boost::optional<int>, boost::optional<int>> INTEGER_TYPE;
typedef boost::tuple<boost::optional<int>, boost::optional<int>, boost::optional<int>> FIXED_TYPE;
typedef boost::tuple<boost::optional<int>> CLOCK_TYPE;

typedef boost::variant<std::vector<int>, std::string, verica::Module*> EXP_TYPE;

template<typename Iterator, typename Skipper>
class GrammarFirrtl : public boost::spirit::qi::grammar<Iterator, Skipper> {
    public:
        GrammarFirrtl(State* state) : GrammarFirrtl::base_type(START), m_netlist_factory(state)
        {
            /* PARSER DIRECTIVES */
            using boost::spirit::qi::as_string;
            using boost::spirit::qi::lexeme;
            using boost::spirit::qi::no_skip;
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

            /* AUXILIARY PARSERS */
            using boost::spirit::qi::eol;

            /* PLACEHOLDERS */
            using namespace boost::spirit::qi::labels;

            /* DEBUGGER */
            using boost::spirit::qi::debug;

            /* RULE DEFINITIONS: IDENTIFIERS */
            IDENTIFIER                  %= (as_string[(alpha | char_("_\\")) >> *(alnum | char_("_$."))]);
            RELAXED_IDENTIFIER          %= (as_string[+(alnum | char_("_$."))]);

            /* RULE DEFINITIONS: CIRCUIT */
            CIRCUIT_IDENTIFIER          %= IDENTIFIER;
            CIRCUIT_IDENTIFIER.name("circuit-identifier");
            CIRCUIT_DECLARATION 	     = lit("circuit") >> CIRCUIT_IDENTIFIER[boost::phoenix::bind(&NetlistFactoryFirrtl::set_circuit, &m_netlist_factory, boost::spirit::_1)] >> lit(":")
                                         >> -INFO >> lit("(")
                                         >> *(MODULE_DECLARATION) // | EXTMODULE_DECLARATION)
                                         >> lit(")");
            CIRCUIT_DECLARATION.name("circuit");

            /* RULE DEFINITIONS: MODULES */
            MODULE_IDENTIFIER           %= IDENTIFIER;
            MODULE_IDENTIFIER.name("module-identifier");
            MODULE_DECLARATION           = lit("module") >> MODULE_IDENTIFIER[_val = boost::phoenix::bind(&NetlistFactoryFirrtl::add_module, &m_netlist_factory, boost::spirit::_1)] >> lit(":")
                                         >> -INFO >> lit("(")
                                         >> *(PORT_DECLARATION(_val))
                                         >> *(STMT_DECLARATION(_val))
                                         >> lit(")");
            MODULE_DECLARATION.name("module");

            /* RULE DEFINITIONS: EXTMODULES */
            /*
            DEFNAME                 %= ("defname =" >> string);
            PARAMETER               %= ("parameter" >> string >> "=" >> (string | int_));
            EXTMODULE_DECLARATION    = lit("extmodule") >> MODULE_IDENTIFIER >> lit(":")
                                    >> -INFO >> lit("(")
                                    >> *(PORT_DECLARATION)
                                    >> (DEFNAME)
                                    >> *(PARAMETER);
            */

            /* RULE DEFINITIONS: PORTS */
            PORT_IDENTIFIER             %= IDENTIFIER;
            PORT_IDENTIFIER.name("port-identifier");
            PORT_DECLARATION             = ((string("input") | string("output"))[_a = boost::spirit::_1] // Port direction
                                         >> PORT_IDENTIFIER[_b = boost::spirit::_1] >> lit(":")
                                         >> TYPE[_c = boost::spirit::_1])[boost::phoenix::bind(&NetlistFactoryFirrtl::add_ports, &m_netlist_factory, _r1, _a, _b, _c)]
                                         >> -INFO;
            PORT_DECLARATION.name("port");

            /* RULE DEFINITIONS: TYPES */
            TYPE                        %= (UINT | SINT | FIXED | CLOCK);
            UINT                        %= ("UInt" >> -("<" >> int_ >> ">") >> -("[" >> int_ >> "]"));
            SINT                        %= ("SInt" >> -("<" >> int_ >> ">") >> -("[" >> int_ >> "]"));
            FIXED                       %= ("Fixed" >> -("<" >> int_ >> ">") >> -("<<" >> int_ >> ">>") >> -("[" >> int_ >> "]"));
            CLOCK                       %= ("Clock" >> -("[" >> int_ >> "]"));

            /* RULE DEFINITIONS: STATEMENTS */
            STMT_DECLARATION            %= (WIRE(_r1) | REG(_r1) | INST(_r1) | NODE(_r1) | CONNECT(_r1));
            STMT_DECLARATION.name("statement");
            WIRE                         = (lit("wire") >> IDENTIFIER[_a = boost::spirit::_1] >> lit(":") >> TYPE[_b = boost::spirit::_1] >> -INFO)[boost::phoenix::bind(&NetlistFactoryFirrtl::add_wires, &m_netlist_factory, _r1, _a, _b)];
            REG                          = (lit("reg") >> IDENTIFIER[_a = boost::spirit::_1] >> lit(":") >> TYPE[_b = boost::spirit::_1] >> lit(",") >> EXP(_r1) >> -(lit("with :") >> -lit("(") >> lit("reset => (") >> EXP(_r1) >> lit(",") >> EXP(_r1) >> lit(")")) >> -INFO >> -lit(")"))[boost::phoenix::bind(&NetlistFactoryFirrtl::add_register, &m_netlist_factory, _r1, _a, _b)];
            INST                         = (lexeme[lit("inst ") >> (as_string[(alpha | char_("_\\")) >> *(alnum | char_("_$."))])[_a = boost::spirit::_1] >> lit(" of ") >> (as_string[(alpha | char_("_\\")) >> *(alnum | char_("_$."))])[_b = boost::spirit::_1]] >> -INFO)[boost::phoenix::bind(&NetlistFactoryFirrtl::add_instance, &m_netlist_factory, _r1, _a, _b)];
            NODE                         = (lit("node") >> IDENTIFIER[_a = boost::spirit::_1] >> lit("=") >> EXP(_r1)[_b = boost::spirit::_1] >> -INFO)[boost::phoenix::bind(&NetlistFactoryFirrtl::add_node, &m_netlist_factory, _r1, _a, _b)];
            CONNECT                      = (EXP(_r1)[_a = boost::spirit::_1] >> lit("<=") >> EXP(_r1)[_b = boost::spirit::_1] >> -INFO)[boost::phoenix::bind(&NetlistFactoryFirrtl::add_connection, &m_netlist_factory, _r1, _a, _b)];

            /* RULE DEFINITIONS: FILE INFORMATIONS */
            INFO                         = ("@[" >> +(~char_("\\\n\t]") | ('\\' >> char_("\\\n\t]"))) >> "]");   // Not actively used.
            INFO.name("file-information");

            /* RULE DEFINITIONS: EXPRESSIONS */
            EXP                         %= (LIT_UINT | LIT_UINT_FROM_BITS | LIT_SINT | LIT_SINT_FROM_BITS | MULTIPLEXER(_r1) | CONDITIONAL_VALID(_r1) | PRIMITIVE_OPERATION(_r1) | SUB_INDEX(_r1) | REFERENCE(_r1));
            LIT_UINT                     = ("UInt" >> -("<" >> int_ >> ">")[_a = boost::spirit::_1] >> ("(" >> int_ >> ")")[_b = boost::spirit::_1])[_val = boost::phoenix::bind(&NetlistFactoryFirrtl::read_int, &m_netlist_factory, _a, _b, false)];
            LIT_UINT_FROM_BITS           = ("UInt" >> -("<" >> int_ >> ">")[_a = boost::spirit::_1] >> ("(\"" >> (as_string[+(alnum)])[_b = boost::spirit::_1] >> "\")"))[_val = boost::phoenix::bind(&NetlistFactoryFirrtl::read_int_from_bits, &m_netlist_factory, _a, _b, false)];
            LIT_SINT                     = ("SInt" >> -("<" >> int_ >> ">")[_a = boost::spirit::_1] >> ("(" >> int_ >> ")")[_b = boost::spirit::_1])[_val = boost::phoenix::bind(&NetlistFactoryFirrtl::read_int, &m_netlist_factory, _a, _b, true)];
            LIT_SINT_FROM_BITS           = ("SInt" >> -("<" >> int_ >> ">")[_a = boost::spirit::_1] >> ("(\"" >> (as_string[+(alnum)])[_b = boost::spirit::_1] >> "\")"))[_val = boost::phoenix::bind(&NetlistFactoryFirrtl::read_int_from_bits, &m_netlist_factory, _a, _b, true)];
            REFERENCE                    = (IDENTIFIER[_a = boost::spirit::_1])[_val = boost::phoenix::bind(&NetlistFactoryFirrtl::check_reference, &m_netlist_factory, _r1, _a)];
            SUB_INDEX                    = (IDENTIFIER[_a = boost::spirit::_1] >> ("[" >> int_ >> "]")[_b = boost::spirit::_1])[_val = boost::phoenix::bind(&NetlistFactoryFirrtl::check_sub_index, &m_netlist_factory, _r1, _a, _b)];
            MULTIPLEXER                  = ("mux(" >> EXP(_r1)[_a = boost::spirit::_1] >> "," >> EXP(_r1)[_b = boost::spirit::_1] >> "," >> EXP(_r1)[_c = boost::spirit::_1] >> ")")[_val = boost::phoenix::bind(&NetlistFactoryFirrtl::add_multiplexer, &m_netlist_factory, _r1, _a, _b, _c)];
            CONDITIONAL_VALID            = ("validif(" >> EXP(_r1)[_a = boost::spirit::_1] >> "," >> EXP(_r1)[_b = boost::spirit::_1] >> ")")[_val = boost::phoenix::bind(&NetlistFactoryFirrtl::add_cond_valid, &m_netlist_factory, _r1, _a, _b)];
            PRIMITIVE_OPERATION_LOGIC    = (PRIMOP_LOGIC[_a = boost::spirit::_1] >> lit("(") >> (*(EXP(_r1) >> -lit(",")))[_b = boost::spirit::_1] >> lit(")"))[_val = boost::phoenix::bind(&NetlistFactoryFirrtl::add_primop_logic_gate, &m_netlist_factory, _r1, _a, _b)];
            PRIMITIVE_OPERATION_INTERPRET= (PRIMOP_INTERPRET >> lit("(") >> EXP(_r1)[_a = boost::spirit::_1] >> lit(")"))[_val = boost::phoenix::bind(&NetlistFactoryFirrtl::primop_interpret, &m_netlist_factory, _a)];
            PRIMITIVE_OPERATION_BITS     = (PRIMOP_BITOPS[_a = boost::spirit::_1] >> lit("(") >> EXP(_r1)[_b = boost::spirit::_1] >> lit(",") >> ((int_ | EXP(_r1))[_c = boost::spirit::_1]) >> -(lit(",") >> (int_)[_d = boost::spirit::_1]) >> lit(")"))[_val = boost::phoenix::bind(&NetlistFactoryFirrtl::primop_bit_operation, &m_netlist_factory, _r1, _a, _b, _c, _d)];
            PRIMITIVE_OPERATION          = (PRIMITIVE_OPERATION_LOGIC(_r1) | PRIMITIVE_OPERATION_INTERPRET(_r1) | PRIMITIVE_OPERATION_BITS(_r1));
            
            /* RULE DEFINITION: PRIMOPS */
    	    PRIMOP_LOGIC            %= (NEG | NOT | AND | OR | XOR | ANDR | ORR | XORR);
            NEG                     %= string("neg");
            NOT                     %= string("not");
            AND                     %= string("and");
            OR                      %= string("or");
            XOR                     %= string("xor");
            ANDR                    %= string("andr");
            ORR                     %= string("orr");
            XORR                    %= string("xorr");

            PRIMOP_ARITHMETIC       %= (ADD | SUB | MUL | DIV | MOD | CVT);
            ADD                     %= string("add");
            SUB                     %= string("sub");
            MUL                     %= string("mul");
            DIV                     %= string("div");
            MOD                     %= string("mod");
            CVT                     %= string("cvt");
            
            PRIMOP_COMPARE          %= (LT | LEQ | GT | GEQ | EQ | NEQ);
            LT                      %= string("lt");
            LEQ                     %= string("leq");
            GT                      %= string("gt");
            GEQ                     %= string("geq");
            EQ                      %= string("eq");
            NEQ                     %= string("neq");

            PRIMOP_INTERPRET        %= (AS_UINT | AS_SINT | AS_CLOCK);
            AS_UINT                 %= string("asUInt");
            AS_SINT                 %= string("asSInt");
            AS_CLOCK                %= string("asClock");

            PRIMOP_SHIFT            %= (SHL | SHR | DSHL | DSHR);
            SHL                     %= string("shl");
            SHR                     %= string("shr");
            DSHL                    %= string("dshl");
            DSHR                    %= string("dshr");

            PRIMOP_BITOPS           %= (CAT | BITS | HEAD | TAIL | PAD);
            CAT                     %= string("cat");
            BITS                    %= string("bits");
            HEAD                    %= string("head");
            TAIL                    %= string("tail");
            PAD                     %= string("pad");

            /* RULE DEFINITION: START SYMBOL (ENTRY POINT) */
            START = CIRCUIT_DECLARATION;
            START.name("entry-point");

            /* DEBUG CALLS */
            /*
            debug(START);
            debug(INFO);
            debug(CIRCUIT_DECLARATION);
            debug(CIRCUIT_IDENTIFIER);
            debug(MODULE_DECLARATION);
            debug(MODULE_IDENTIFIER);
            debug(PORT_IDENTIFIER);
            */
        }

    private:

        /* Netlist factory */
        NetlistFactoryFirrtl m_netlist_factory;

        /* RULE DECLARATION: IDENTIFIERS */
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> IDENTIFIER;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> RELAXED_IDENTIFIER;

        /* RULE DECLARATION: CIRCUIT */
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> CIRCUIT_IDENTIFIER;
        boost::spirit::qi::rule<Iterator, void(), Skipper> CIRCUIT_DECLARATION;  // The circuit declares the topmodule of the netlist. Therefore, it is handled as a Module.

        /* RULE DECLARATION: MODULES */
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> MODULE_IDENTIFIER;
        boost::spirit::qi::rule<Iterator, verica::Module*(), Skipper> MODULE_DECLARATION;

        /* RULE DECLARATION: EXTMODULES */
        /*
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> DEFNAME;
        boost::spirit::qi::rule<Iterator, std::pair<std::string, boost::variant<std::string, int>>(), Skipper> PARAMETER;
        boost::spirit::qi::rule<Iterator, verica::Module*(), Skipper> EXTMODULE_DECLARATION;
        */

        /* RULE DECLARATION: PORTS */
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> PORT_IDENTIFIER;
        boost::spirit::qi::rule<Iterator, void(verica::Module*), boost::spirit::qi::locals<std::string, std::string, boost::variant<INTEGER_TYPE, FIXED_TYPE, CLOCK_TYPE>>, Skipper> PORT_DECLARATION;

        /* RULE DECLARATION: TYPES */
        boost::spirit::qi::rule<Iterator, boost::variant<INTEGER_TYPE, FIXED_TYPE, CLOCK_TYPE>(), Skipper> TYPE;
        boost::spirit::qi::rule<Iterator, INTEGER_TYPE(), Skipper> UINT;
        boost::spirit::qi::rule<Iterator, INTEGER_TYPE(), Skipper> SINT;
        boost::spirit::qi::rule<Iterator, FIXED_TYPE(), Skipper> FIXED;
        boost::spirit::qi::rule<Iterator, CLOCK_TYPE(), Skipper> CLOCK;

        /* RULE DECLARATION: STATEMENTS */
        boost::spirit::qi::rule<Iterator, void(verica::Module*), Skipper> STMT_DECLARATION;
        boost::spirit::qi::rule<Iterator, void(verica::Module*), boost::spirit::qi::locals<std::string, boost::variant<INTEGER_TYPE, FIXED_TYPE, CLOCK_TYPE>>, Skipper> WIRE;
        boost::spirit::qi::rule<Iterator, void(verica::Module*), boost::spirit::qi::locals<std::string, boost::variant<INTEGER_TYPE, FIXED_TYPE, CLOCK_TYPE>>, Skipper> REG;
        boost::spirit::qi::rule<Iterator, void(verica::Module*), boost::spirit::qi::locals<std::string, std::string>, Skipper> INST;
        boost::spirit::qi::rule<Iterator, void(verica::Module*), boost::spirit::qi::locals<std::string, EXP_TYPE>, Skipper> NODE;
        boost::spirit::qi::rule<Iterator, void(verica::Module*), boost::spirit::qi::locals<EXP_TYPE, EXP_TYPE>, Skipper> CONNECT;

        /* RULE DECLARATION: FILE INFORMATIONS */
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> INFO;    // Not actively used.

        /* RULE DECLARATION: EXPRESSIONS */
        boost::spirit::qi::rule<Iterator, EXP_TYPE(verica::Module*), Skipper> EXP;
        boost::spirit::qi::rule<Iterator, std::vector<int>(), boost::spirit::qi::locals<boost::optional<int>, int>, Skipper> LIT_UINT;
        boost::spirit::qi::rule<Iterator, std::vector<int>(), boost::spirit::qi::locals<boost::optional<int>, std::string>, Skipper> LIT_UINT_FROM_BITS;
        boost::spirit::qi::rule<Iterator, std::vector<int>(), boost::spirit::qi::locals<boost::optional<int>, int>, Skipper> LIT_SINT;
        boost::spirit::qi::rule<Iterator, std::vector<int>(), boost::spirit::qi::locals<boost::optional<int>, std::string>, Skipper> LIT_SINT_FROM_BITS;
        boost::spirit::qi::rule<Iterator, std::string(verica::Module*), boost::spirit::qi::locals<std::string>, Skipper> REFERENCE;
        boost::spirit::qi::rule<Iterator, std::string(verica::Module*), boost::spirit::qi::locals<std::string, int>, Skipper> SUB_INDEX;
        boost::spirit::qi::rule<Iterator, verica::Module*(verica::Module*), boost::spirit::qi::locals<EXP_TYPE, EXP_TYPE, EXP_TYPE>, Skipper> MULTIPLEXER;
        boost::spirit::qi::rule<Iterator, verica::Module*(verica::Module*), boost::spirit::qi::locals<EXP_TYPE, EXP_TYPE>, Skipper> CONDITIONAL_VALID;
        boost::spirit::qi::rule<Iterator, verica::Module*(verica::Module*), boost::spirit::qi::locals<std::string, std::vector<EXP_TYPE>>, Skipper> PRIMITIVE_OPERATION_LOGIC;
        boost::spirit::qi::rule<Iterator, EXP_TYPE(verica::Module*), boost::spirit::qi::locals<EXP_TYPE>, Skipper> PRIMITIVE_OPERATION_INTERPRET;
        boost::spirit::qi::rule<Iterator, std::string(verica::Module*), boost::spirit::qi::locals<std::string, EXP_TYPE, boost::variant<EXP_TYPE, int>, boost::optional<int>>, Skipper> PRIMITIVE_OPERATION_BITS;
        boost::spirit::qi::rule<Iterator, EXP_TYPE(verica::Module*), Skipper> PRIMITIVE_OPERATION;

        /* RULE DECLARATION: PRIMOPS */
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> PRIMOP_LOGIC;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> NEG;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> NOT;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> AND;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> OR;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> XOR;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> ANDR;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> ORR;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> XORR;

        boost::spirit::qi::rule<Iterator, std::string(), Skipper> PRIMOP_INTERPRET;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> AS_UINT;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> AS_SINT;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> AS_CLOCK;

        boost::spirit::qi::rule<Iterator, std::string(), Skipper> PRIMOP_ARITHMETIC;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> ADD;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> SUB;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> MUL;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> DIV;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> MOD;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> CVT;

        boost::spirit::qi::rule<Iterator, std::string(), Skipper> PRIMOP_COMPARE;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> LT;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> LEQ;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> GT;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> GEQ;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> EQ;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> NEQ;
        
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> PRIMOP_SHIFT;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> SHL;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> SHR;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> DSHL;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> DSHR;

        boost::spirit::qi::rule<Iterator, std::string(), Skipper> PRIMOP_BITOPS;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> CAT;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> BITS;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> HEAD;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> TAIL;
        boost::spirit::qi::rule<Iterator, std::string(), Skipper> PAD;

        /* RULE DECLARATION: START SYMBOL */
        boost::spirit::qi::rule<Iterator, Skipper> START;
};

#endif // __VERICA_PARSER_FIRRTL_GRAMMAR_FIRRTL_HPP_