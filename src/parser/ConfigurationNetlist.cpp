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

#include "parser/Parser.hpp"
#include "parser/ConfigurationNetlist.hpp"

#include "netlist/CellTemplate.hpp"
#include "netlist/Netlist.hpp"
#include "netlist/Module.hpp"
#include "netlist/Pin.hpp"

#include <string>
#include <vector>

void
ConfigurationNetlist::initialize(const Settings *settings, State *state){

}  

void
ConfigurationNetlist::execute(const Settings *settings, State *state)
{    
    /* Variable declarations */
    std::vector<std::string> tokens, annotations;
    std::string line, token;
    std::vector<verica::Wire*> wires;

    int counter = 0;

    /* Create netlist container */
    state->m_netlist_model = new verica::Netlist(settings->getDesignFilePath());

    /* Create top-level module */
    verica::Module *top = state->m_netlist_model->add_module("topmodule");
    state->m_netlist_model->set_topmodule(top);
    state->m_netlist_model->set_module_under_test(top);

    /* Open circuit description text file. */
    std::ifstream description(settings->getDesignFilePath());

    /* Parse description line by line */
    while(std::getline(description, line))
    {
        /* Split line in tokens */
        tokens = Parser::split(line, ' ');

        /* Add new pin/gate to circuit netlist */
        if (tokens[0] == "in") {

            /* Create new input pin - set gate identifier to 10 (marks input gates) */
            verica::Pin *p = state->m_netlist_model->add_pin("in (line" + std::to_string(counter) + ")", top, true, 10);
            
            /* Add new wire to circuit netlist */
            std::string name = "in (line" + std::to_string(counter) + ")";
            auto comment = std::find(tokens.begin(), tokens.end(), "#");
            if (comment != tokens.end()) name = *(comment + 1);
            verica::Wire *w = state->m_netlist_model->add_wire(name, top, std::stoi(tokens[1]));
            wires.push_back(w);

            /* Process annotations for pin */
            if (tokens.size() > 2 && tokens[2] != "none" && tokens[2].find("#") != 0) {
                if (tokens[2].find("_") != std::string::npos) {
                    annotations = Parser::split(tokens[2], '_');
                } else if (tokens[2].find(":") != std::string::npos) {
                    annotations = Parser::split(tokens[2], ':');
                } else {
                    throw std::logic_error("[PARSER] Unsupported annotations detected: line #" + std::to_string(counter));
                }
                state->m_netlist_model->set_pin_share_index(p->uid(), std::stoi(annotations[0]));
                state->m_netlist_model->set_pin_share_domain(p->uid(), std::stoi(annotations[1]));
            }

            /* Set pin as wire source */
            state->m_netlist_model->set_wire_source(w->uid(), p->uid());

        } else if (tokens[0] == "ref") {
            /* Create new input pin  - set gate identifier to 10 (marks input gates) */
            verica::Pin *p = state->m_netlist_model->add_pin("ref (line" + std::to_string(counter) + ")", top, true, 10);

            /* Assign pin type: refresh */
            state->m_netlist_model->set_pin_type(p, verica::Refresh);

            /* Add new wire to circuit netlist */
            std::string name = "in (line" + std::to_string(counter) + ")";
            auto comment = std::find(tokens.begin(), tokens.end(), "#");
            if (comment != tokens.end()) name = *(comment + 1);
            verica::Wire *w = state->m_netlist_model->add_wire(name, top, std::stoi(tokens[1]));
            wires.push_back(w);
            
            /* Set pin as wire source */
            state->m_netlist_model->set_wire_source(w->uid(), p->uid());
        } else if (tokens[0] == "out") {
            if (std::stoi(tokens[1]) >= counter) {
                throw std::logic_error("[PARSER] Output gate references undefined pin: " + tokens[1] + " in line " + std::to_string(counter));
            }

            /* Create new output pin */
            verica::Pin *p = state->m_netlist_model->add_pin("out (line" + std::to_string(counter) + ")", top, false);

            /* Process annotations for pin */
            if (tokens.size() > 2 && tokens[2] != "none" && tokens[2].find("#") != 0) {
                if (tokens[2].find("_") != std::string::npos) {
                    annotations = Parser::split(tokens[2], '_');
                } else if (tokens[2].find(":") != std::string::npos) {
                    annotations = Parser::split(tokens[2], ':');
                } else {
                    throw std::logic_error("[PARSER] Unsupported annotations detected: line #" + std::to_string(counter));
                }
                state->m_netlist_model->set_pin_share_index(p->uid(), std::stoi(annotations[0]));
                state->m_netlist_model->set_pin_share_domain(p->uid(), std::stoi(annotations[1]));

                /* Count number of output shares*/
                state->m_num_output_shares = (state->m_num_output_shares < (unsigned int)(std::stoi(annotations[1])+1)) ? (unsigned int)(std::stoi(annotations[1])+1) : state->m_num_output_shares; 
            }

            /* Set pin as wire target */
            state->m_netlist_model->set_wire_target(wires[std::stoi(tokens[1])]->uid(), p->uid());

            /* Rename source wire */
            std::string name = wires[std::stoi(tokens[1])]->name();
            auto comment = std::find(tokens.begin(), tokens.end(), "#");
            if (comment != tokens.end()) name = *(comment + 1);
            state->m_netlist_model->rename_wire(wires[std::stoi(tokens[1])]->uid(), name);
        } else {
            /* Find corresponding cell construction template */
            CellTemplate *type;
            try {
                // type = this->m_gate_types.at(tokens[0]);
                type = state->m_cell_library->gate_types().at(tokens[0]);
            } catch (const std::out_of_range& e) {
                throw std::logic_error("[PARSER] Invalid gate type detected: " + tokens[0]);
            }

            /* Find gate name */
            std::string name = tokens[0] + " (line" + std::to_string(counter) + ")";
            auto comment = std::find(tokens.begin(), tokens.end(), "#");
            if (comment != tokens.end()) name = *(comment + 1);

            /* Add new gate to netlist model */
            verica::Module *gate = state->m_netlist_model->add_module(name, top, *type);
            /* Add new wire to circuit netlist */
            verica::Wire *w = state->m_netlist_model->add_wire(name, top);
            wires.push_back(w);

            /* Connect wire(s) in netlist model */
            int pin_num = 1;
            for (auto p : gate->input_pins()) {
                if (std::stoi(tokens[pin_num]) >= counter) {
                    throw std::logic_error("[PARSER] Gate references undefined pin: " + tokens[pin_num] + " in line " + std::to_string(counter));
                }
                state->m_netlist_model->set_wire_target(wires[std::stoi(tokens[pin_num++])]->uid(), p->uid());
            }

            for (auto p : gate->output_pins()) {
                    state->m_netlist_model->set_wire_source(w->uid(), p->uid());
            }
        }

        /* Increment line counter */
        counter++;
    }

    /* Close circuit description text file. */
    description.close();

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
}

void
ConfigurationNetlist::finalize(const Settings *settings, State *state) {
}

void
ConfigurationNetlist::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
{
    /* Print logger header */
    logger->header("DESIGN UNDER TEST");

    /* Report parsing results */
    logger->log(service, this->m_name, "source: " + settings->getDesignFilePath());
    if (settings->getVerbose() >= VINFO) {
        logger->log(service, this->m_name, ITEM + "module(s) : " + std::to_string(state->m_netlist_model->num_modules()));
        logger->log(service, this->m_name, ITEM + "gate(s)   : " + std::to_string(state->m_netlist_model->num_gates()));
        logger->log(service, this->m_name, ITEM + " - comb.  : " + std::to_string(state->m_netlist_model->num_combinational_gates()));
        logger->log(service, this->m_name, ITEM + " - seq.   : " + std::to_string(state->m_netlist_model->num_sequential_gates()));
        logger->log(service, this->m_name, ITEM + "wire(s)   : " + std::to_string(state->m_netlist_model->num_wires()));
        logger->log(service, this->m_name, ITEM + "pin(s)    : " + std::to_string(state->m_netlist_model->num_pins()));
    }

    /* Print logger header */
    logger->footer(service, this->m_name, SUCCESS);
}