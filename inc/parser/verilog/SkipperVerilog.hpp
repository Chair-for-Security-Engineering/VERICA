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

#ifndef __VERICA_PARSER_VERILOG_SKIPPER_VERILOG_HPP_
#define __VERICA_PARSER_VERILOG_SKIPPER_VERILOG_HPP_

#include "boost/spirit/include/qi.hpp"

template<typename Iterator>
class SkipperVerilog : public boost::spirit::qi::grammar<Iterator>
{
    public:
        SkipperVerilog() : SkipperVerilog::base_type(SKIPPER) 
        {
            /* RULE DEFINITIONS: SKIPPER */
            SINGLE_LINE_COMMENT = "//" >> *(boost::spirit::qi::char_ - boost::spirit::qi::eol) >> (boost::spirit::qi::eol) ;
            MULTI_LINE_COMMENT  = "/*" >> *(MULTI_LINE_COMMENT | boost::spirit::qi::char_ - "*/") > "*/";
            SKIPPER = boost::spirit::qi::ascii::space | SINGLE_LINE_COMMENT | MULTI_LINE_COMMENT;
        }

    private:
        /* RULE DECLARATIONS: SKIPPER */
        boost::spirit::qi::rule<Iterator> SKIPPER, SINGLE_LINE_COMMENT, MULTI_LINE_COMMENT;
};

#endif // __VERICA_PARSER_VERILOG_SKIPPER_VERILOG_HPP_