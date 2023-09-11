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

#include "parser/ConfigurationVerilog.hpp"

#include "parser/verilog/SkipperVerilog.hpp"
#include "parser/verilog/GrammarVerilog.hpp"

void
ConfigurationVerilog::initialize(const Settings *settings, State *state){

}  

void
ConfigurationVerilog::execute(const Settings *settings, State *state)
{
    /* Create empty netlist model */
    state->m_netlist_model = new verica::Netlist(settings->getDesignFilePath());

    /* Open verilog netlist file for parsing */
    std::ifstream file(settings->getDesignFilePath(), std::ios_base::in);
    if (file)
    {
        /* Disable whitespace skipping during parsing */
        file.unsetf(std::ios::skipws);
    }
    else
    {
        throw std::logic_error("Opening file failed.");
    }

    /* Create file stream iterators */
    boost::spirit::istream_iterator iter(file), end;

    /* Define custom skipper for comments and whitespaces */
    SkipperVerilog<boost::spirit::istream_iterator> skipper;

    /* Define verilog netlist grammar */
    GrammarVerilog<boost::spirit::istream_iterator, SkipperVerilog<boost::spirit::istream_iterator>>* grammar = new GrammarVerilog<boost::spirit::istream_iterator, SkipperVerilog<boost::spirit::istream_iterator>>(state);

    /* Parse verilog netlist into netlist model */
    if (!boost::spirit::qi::phrase_parse(iter, end, *grammar, skipper))
    {
        throw std::logic_error("[VERILOG PARSER] Parsing Failure!");
    }

    if (iter != end) throw std::logic_error("[VERILOG PARSER] Unparsed content. Stopped at " + *iter);

    /* Post-processing: Create topological sorting of wires */
    //state->m_netlist_model->info();
    // state->m_netlist_model->sort_wires();

    // Throw an exception, if no module is parsed.
    if (state->m_netlist_model->num_modules() == 0) {
        throw std::logic_error("[PARSER] No module was parsed.");
    }
    // Throw an exception, if no gate is parsed.
    if (state->m_netlist_model->num_gates() == 0) {
        throw std::logic_error("[PARSER] No gate was parsed.");
    }
    // Throw an exception, if no wire is parsed.
    if (state->m_netlist_model->num_wires() == 0) {
        throw std::logic_error("[PARSER] No wire was parsed.");
    }
    // Throw an exception, if no pin is parsed.
    if (state->m_netlist_model->num_pins() == 0) {
        throw std::logic_error("[PARSER] No pin was parsed.");
    }
    
    delete grammar;
    grammar = nullptr;
}   

void
ConfigurationVerilog::finalize(const Settings *settings, State *state) {
}

void
ConfigurationVerilog::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
{
    logger->header("DESIGN UNDER TEST");

    /* Count unconnected wires */
    uint32_t cnt_wires = 0;
    for(auto& w : state->m_netlist_model->wires()){
        if(w.second->source_pin() == nullptr || w.second->target_pins().empty()) {
            cnt_wires++;
        }
    }

    /* Count unconnected pins*/
    uint32_t cnt_pins = 0;
    for(auto& p : state->m_netlist_model->pins()){        
        if(p.second->fan_in() == nullptr && p.second->fan_out() == nullptr) cnt_pins++;
    }

    /* Report parsing results */
    logger->log(service, this->m_name, "source: " + settings->getDesignFilePath());
    if (settings->getVerbose() >= VINFO) {
        logger->log(service, this->m_name, ITEM + "module(s) : " + std::to_string(state->m_netlist_model->num_modules()));
        logger->log(service, this->m_name, ITEM + "gate(s)   : " + std::to_string(state->m_netlist_model->num_gates()));
        logger->log(service, this->m_name, ITEM + " - comb.  : " + std::to_string(state->m_netlist_model->num_combinational_gates()));
        logger->log(service, this->m_name, ITEM + " - seq.   : " + std::to_string(state->m_netlist_model->num_sequential_gates()));
        logger->log(service, this->m_name, ITEM + "wire(s)   : " + std::to_string(state->m_netlist_model->num_wires()));
        logger->log(service, this->m_name, ITEM + "pin(s)    : " + std::to_string(state->m_netlist_model->num_pins()));
        if(cnt_wires != 0)
            logger->log(service,  this->m_name, "WARNING: detected " + Logger::reporting_number(cnt_wires, "unconnected wire", "unconnected wires") + "!");
        if(cnt_pins != 0)
            logger->log(service,  this->m_name, "WARNING: detected " + Logger::reporting_number(cnt_pins, "unconnected pin", "unconnected pins") + "!");
    }

    /* Print logger header */
    logger->footer(service, this->m_name, SUCCESS);
}
