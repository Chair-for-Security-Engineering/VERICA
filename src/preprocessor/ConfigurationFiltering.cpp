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
#include "preprocessor/ConfigurationFiltering.hpp"

void
ConfigurationFiltering::execute(const Settings *settings, State *state)
{
    if (settings->getFilteringType() == "white") {
        this->apply_filter(settings, state, false);
    } else if (settings->getFilteringType() == "black") {
        this->apply_filter(settings, state, true);
    } else if (settings->getFilteringType() != "none") {
        throw std::logic_error("Unrecognized filtering strategy (supported strategies: none/whitelist/blacklist)!");
    } else {
        clear_filter(state);
    }
}

void
ConfigurationFiltering::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
{    

    if (settings->getFilteringType() != "none") {

        /* Print header */
        if (settings->getFilteringType() == "white") {
            logger->header("WHITELIST");
        } else {
            logger->header("BLACKLIST");
        }

        /* Print results */
        if (settings->getFilteringType() == "white") {
            logger->log(service, this->m_name, "source: " + settings->getWhiteList());
        } else {
            logger->log(service, this->m_name, "source: " + settings->getBlackList());
        }

        if (settings->getVerbose() >= VINFO) {
            int count;

            logger->log(service, this->m_name, "ignoring: ");

            count = 0;
            logger->log(service, this->m_name, ITEM + "module(s) : " + std::to_string(std::count_if(state->m_netlist_model->modules().begin(), state->m_netlist_model->modules().end(), [count](std::pair<int, verica::Module*> m){ return m.second->ignore() & !m.second->gate();})));
            
            count = 0;
            logger->log(service, this->m_name, ITEM + "gate(s)   : " + std::to_string(std::count_if(state->m_netlist_model->modules().begin(), state->m_netlist_model->modules().end(), [count](std::pair<int, verica::Module*> m){ return m.second->ignore() && m.second->gate();})));

            count = 0;
            logger->log(service, this->m_name, ITEM + "wire(s)   : " + std::to_string(std::count_if(state->m_netlist_model->wires().begin(), state->m_netlist_model->wires().end(), [count](std::pair<int, verica::Wire*> w){ return w.second->ignore();})));
        }

        /* Print footer */
        logger->footer(service, this->m_name, SUCCESS);
    }    
}

void 
ConfigurationFiltering::clear_filter(State *state)
{
    /* Clear filtered gates */
    state->m_netlist_model->ignore_module(state->m_netlist_model->topmodule()->uid(), false);
}

void 
ConfigurationFiltering::apply_filter(const Settings *settings, State *state, const bool blacklist_filter)
{   
    std::string line, list_path;
    std::vector<std::string> tokens, filter;

    /* Determine list path */
    if (blacklist_filter)
        list_path = settings->getBlackList();
    else
        list_path = settings->getWhiteList();

    /* Open blacklist/whitelist filter */
    std::ifstream filterStream(list_path);

    /* Loop over all lines and all names per line */
    while (std::getline(filterStream, line))
    {
        /* Split line into space-separated tokens */
        tokens = Parser::split(line, ' ');

        /* Create blacklist-filter for gates based on gate names */
        if (tokens[0].at(0) != '#')
        {
            filter.insert(filter.end(), tokens.begin(), tokens.end());
        }
    }

    /* Remove line endings from blacklist-filter */
    for (unsigned int idx = 0; idx < filter.size(); ++idx) {
        filter[idx].erase(std::remove(filter[idx].begin(), filter[idx].end(), '\n'), filter[idx].end());
        filter[idx].erase(std::remove(filter[idx].begin(), filter[idx].end(), '\r'), filter[idx].end());
    }
    
    /* Remove empty strings from filter */
    filter.erase(std::remove_if(filter.begin(), filter.end(), [](std::string str){return str.empty();}), filter.end());

    /* Filter gates based on blacklist-filter */
    state->m_netlist_model->ignore_module(state->m_netlist_model->topmodule()->uid(), !blacklist_filter);

    for (auto module : state->m_netlist_model->modules()) {
        for (auto name : filter) {
            if(module.second->name().find(name) != std::string::npos) state->m_netlist_model->ignore_module(module.second->uid(), blacklist_filter);
        }
    }
}