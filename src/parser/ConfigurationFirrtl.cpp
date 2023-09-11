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

#include "parser/ConfigurationFirrtl.hpp"

#include "parser/firrtl/SkipperFirrtl.hpp"
#include "parser/firrtl/GrammarFirrtl.hpp"

void
ConfigurationFirrtl::initialize(const Settings *settings, State *state){

}

void
ConfigurationFirrtl::execute(const Settings *settings, State *state)
{   
    /* Create netlist container */
    state->m_netlist_model = new verica::Netlist(settings->getDesignFilePath());

    /* Preprocessing: Prepare FIRRTL file for parsing */
    std::istringstream design = preprocess(settings);
    design.unsetf(std::ios::skipws);

    /* Create file stream iterators */
    boost::spirit::istream_iterator iter(design), end;

    /* Define custom skipper for comments and whitespaces */
    SkipperFirrtl<boost::spirit::istream_iterator> skipper;

    /* Define FIRRTL netlist grammar */
    GrammarFirrtl<boost::spirit::istream_iterator, SkipperFirrtl<boost::spirit::istream_iterator>>* grammar = new GrammarFirrtl<boost::spirit::istream_iterator, SkipperFirrtl<boost::spirit::istream_iterator>>(state);

    /* Parse FIRRTL netlist into netlist model */
    if (!boost::spirit::qi::phrase_parse(iter, end, *grammar, skipper))
    {
        throw std::logic_error("Parsing Failure!");
    }

    if (iter != end) throw std::logic_error("Unparsed content.");

    /* Postprocessing: Remove module templates */
    postprocess(state);

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
ConfigurationFirrtl::finalize(const Settings *settings, State *state) {
}

void
ConfigurationFirrtl::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
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

std::istringstream
ConfigurationFirrtl::preprocess(const Settings *settings)
{
    // Open FIRRTL netlist file
    std::ifstream design(settings->getDesignFilePath(), std::ios_base::in);
    if (!design)
    {
        throw std::logic_error("Opening file failed.");
    };

    // Get intend level for every line
    std::vector<int> intendLevels;
    std::string line;
    while(std::getline(design, line))
    {
        if (!line.size()) {
            intendLevels.push_back(-1);
            continue;
        }

        int intendLevel = 0;
        for (unsigned int c = 0; c < line.size(); c++) {
            if (std::isspace(line[c])) intendLevel++;
            else {
                if (line[c] == ';') intendLevels.push_back(-1);
                else intendLevels.push_back(intendLevel);
                break;
            }
        }
    }

    intendLevels.push_back(0);

    design.clear();
    design.seekg(0, std::ios::beg);

    // Set blocks corresponding to the intend level
    std::vector<int> blockBeginnings;
    std::vector<int> blockEnds;
    for (unsigned int i = 0; i < intendLevels.size() - 1; i++) {
        int blockBegin = -1;
        int blockEnd = -1;
        if ((intendLevels[i] < intendLevels[i + 1]) && (intendLevels[i] != -1)) {
            blockBegin = i;
            for (unsigned int j = i + 1; j < intendLevels.size() - 1; j++) {
                if (intendLevels[i] == intendLevels[j]) {
                    blockEnd = j - 1;
                    break;
                }
            }
            blockBeginnings.push_back(blockBegin);
            blockEnds.push_back(blockEnd);
        }
    }

    // Write lines with brackets to new design file
    std::stringstream newDesign;
    int linenumber = 0;

    while(std::getline(design, line))
    {
        newDesign << line;

        if (std::find(blockBeginnings.begin(), blockBeginnings.end(), linenumber) != blockBeginnings.end()) newDesign << "(";
        if (std::find(blockEnds.begin(), blockEnds.end(), linenumber) != blockEnds.end()) newDesign << ")";
        
        newDesign << std::endl;

        linenumber++;
    }

    int unclosedBlocks = count(blockEnds.begin(), blockEnds.end(), -1);
    for (int i = 0; i < unclosedBlocks; i++) {
        newDesign << ")";
    }

    design.close();

    std::istringstream preprocessedDesign(newDesign.str());
    return preprocessedDesign;
}

void
ConfigurationFirrtl::postprocess(State *state) {
    // Remove all modules which are no instances (except the topmodule) and therefore have no parent module.
    std::vector<verica::Module*> modules_to_remove;
    auto iter = state->m_netlist_model->modules().begin();
    while(iter != state->m_netlist_model->modules().end()) {
        if (iter->second->parent() == nullptr && iter->second.get() != state->m_netlist_model->topmodule()) {
            modules_to_remove.push_back(iter->second.get());
        }
        iter++;
    }
    for (auto module : modules_to_remove) state->m_netlist_model->remove_module(module->uid());
}