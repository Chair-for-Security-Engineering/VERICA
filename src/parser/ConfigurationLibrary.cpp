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

#include "parser/Parser.hpp"
#include "parser/ConfigurationLibrary.hpp"

#include "netlist/CellTemplate.hpp"

#include <boost/algorithm/string/predicate.hpp>

#include <algorithm>
#include <vector>
#include <map>

void
ConfigurationLibrary::execute(const Settings *settings, State *state)
{  
    /* Variable declarations */
    std::vector<int> identifier;
    bool sequential = false;
    std::vector<std::string> variants, in_pins, out_pins, out_expr;
    std::string line, cellName;
    std::map<std::string, CellTemplate*> gate_types;
    std::map<std::string, CellTemplate*>::iterator gt_it; //FIXME: not used!
    CellTemplate temp_ct;
    // Dummy values
    temp_ct.m_identifier = {0};
    temp_ct.m_sequential = false;
    // Gadget-ID map
    std::map<std::string, std::vector<int>> gadgetID =
    {
        {"buf",  {11}},
        {"not",  {1}},
        {"reg",  {0, 12}},
        {"regn", {12}},
        {"and",  {2}},
        {"nand", {3}},
        {"or",   {4}},
        {"nor",  {5}},
        {"xor",  {6}},
        {"xnor", {7}}
    };

    int lineCounter = 0;

    unsigned int numVariant = (gadgetID.rbegin())->second[0];
    unsigned int numInput = 0;
    unsigned int numOutput = 0;
    unsigned int numBooleanExpr = 0;

    bool readLibraryName = false;
    bool activateParser = false;

    /* Open library text file. */
    std::ifstream library(settings->getLibraryFilePath());

    /* Parse description line by line */
    while(std::getline(library, line))
    {
        /* Remove line endings */
        line.erase(std::remove(line.begin(), line.end(), '\r'), line.end());
        line.erase(std::remove(line.begin(), line.end(), '\n'), line.end());

        /* Check whether the declaration matches the desired library */
        if (line == "Library") {
            lineCounter = 0;
            readLibraryName = true;
            continue;
        }

        if (readLibraryName) {
            if (line == settings->getLibraryName()) {
                activateParser = true;
            }
            else {
                activateParser = false;
            }
            readLibraryName = false;
            continue;
        }

        /* Parse the library */
        if (activateParser) {
            if (line == "Gate" || line == "Reg") {  // Read new Gate/Reg definition
                if (line == "Gate") { sequential = false; }
                else { sequential = true; }

                lineCounter = 9;
            }
            else {
                switch(lineCounter) {
                    case 9:                         // Get number of variants
                        numVariant = std::stoi(line);

                        lineCounter--; 
                        break;
                    case 8:                         // Get variant names
                        variants = Parser::split(line, ' ');

                        if (variants.size() != numVariant) {
                            throw std::logic_error("[ERROR] Parser: Given number of variants does not match actual amount!");
                        }

                        lineCounter--; 
                        break;
                    case 7:                         // Get name of cell in BBD program
                        cellName = line;

                        if (gate_types.count(cellName) > 0) {
                            throw std::logic_error("[ERROR] Parser: Multiple definitions of gate type with identifier '" + cellName + "'!");
                        }

                        lineCounter--; 
                        break;
                    case 6:                         // Get number of inputs
                        numInput = std::stoi(line);

                        lineCounter--; 
                        break;
                    case 5:                         // Get input names
                        in_pins = Parser::split(line, ' ');

                        if (in_pins.size() != numInput) {
                            throw std::logic_error("[ERROR] Parser: Given number of input pins does not match actual amount!");
                        }

                        lineCounter--; 
                        break;
                    case 4:                         // Get number of outputs
                        numOutput = std::stoi(line);

                        lineCounter--; 
                        break;
                    case 3:                         // Get output names
                        out_pins = Parser::split(line, ' ');

                        if (out_pins.size() != numOutput) {
                            throw std::logic_error("[ERROR] Parser: Given number of output pins does not match actual amount!");
                        }

                        lineCounter--; 
                        break;
                    case 2:                         // Get number of boolean expressions
                        numBooleanExpr = std::stoi(line);

                        lineCounter--; 
                        break;
                    case 1:                         // Get boolean expression and create new gate type
                        out_expr = Parser::split(line, ',');

                        if (out_expr.size() != numBooleanExpr) {
                            throw std::logic_error("[ERROR] Parser: Given number of boolean expressions does not match actual amount!");
                        }

                        // Check whether the gadget is supported and obtain its ID
                        if (gadgetID.count(cellName) > 0) {
                            identifier = gadgetID[cellName];
                        }
                        else {
                            throw std::logic_error("[ERROR] Parser: Detected unsupported gadget '" + cellName + "'!");
                        }

                        // Insert Cell Template to the map of parsed gate types.
                        for (auto variant : variants)
                            gate_types.insert(std::pair<std::string, CellTemplate*>(variant, new CellTemplate(identifier, cellName, in_pins, out_pins, out_expr, sequential)));

                        lineCounter--; 
                        break;
                    default:                        // Skip line...
                        break;
                }
            }
        }
    }

    library.close();

    if (gate_types.size() == 0) { // Handle case that no gate types could be parsed.
        throw std::runtime_error("[ERROR] Parser: No gate types could be parsed!");
    }

    // Always insert an input gate to the CellLibrary.
    gate_types.insert(std::pair<std::string, CellTemplate*>("in", new CellTemplate({10}, "in", {"A"}, {"Z"}, {"A"}, false)));

    // Insert standard FIRRTL gates to the CellLibrary, when parsing FIRRTL files.
    if (boost::algorithm::ends_with(settings->getDesignFilePath(), ".fir"))
        gate_types.insert(std::pair<std::string, CellTemplate*>("mux", new CellTemplate({11}, "mux", {"A1", "A2", "A3"}, {"Z"}, {"((!A1 & A2) | (A1 & A3))"}, false))); // 1-Bit multiplexer                          // SInt interpreter

    state->m_cell_library->gate_types(gate_types);
}

void
ConfigurationLibrary::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
{  
    /* Print logger header */
    logger->header("CELL LIBRARY");

    /* Print information for cell library. */
    logger->log(service, this->m_name, "source: " + settings->getLibraryFilePath());
    std::string message = "Parsed cell library with " + std::to_string(state->m_cell_library->gate_types().size()) + " gate type(s). ";
    if (settings->getVerbose() > 0) logger->log("PARSER", "CELLLIB", message);

    /* Print logger header */
    logger->footer(service, this->m_name, SUCCESS);

}
