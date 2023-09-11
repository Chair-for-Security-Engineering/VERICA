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
#include "preprocessor/ConfigurationFiltering.hpp"

void
ConfigurationFiltering::initialize(const Settings *settings, State *state){

}  

void
ConfigurationFiltering::execute(const Settings *settings, State *state){
    /* Apply filtering for SCA */
    if (settings->getSideChannelFilteringType() == "white") {
        this->apply_filter(settings, state, false, false);
    } else if (settings->getSideChannelFilteringType() == "black") {
        this->apply_filter(settings, state, true, false);
    } else if (settings->getSideChannelFilteringType() != "none") {
        throw std::logic_error("Unrecognized filtering strategy (supported strategies: none/whitelist/blacklist)!");
    } else {
        clear_filter(state);
    }

    /* Apply filtering for FIA */
    if (settings->getFaultFilteringType() == "white") {
        this->apply_filter(settings, state, false, true);
    } else if (settings->getFaultFilteringType() == "black") {
        this->apply_filter(settings, state, true, true);
    } else if (settings->getFaultFilteringType() != "none") {
        throw std::logic_error("Unrecognized filtering strategy (supported strategies: none/whitelist/blacklist)!");
    } 
}

void
ConfigurationFiltering::finalize(const Settings *settings, State *state) {
}

void
ConfigurationFiltering::report(std::string service, const Logger *logger, const Settings *settings, State *state) const {    

    /* Print header */
    logger->header("FILTERING");

    /* SCA Filtering */
    if (settings->getSideChannelFilteringType() != "none") {
        logger->log(service, this->m_name, "Filtering for side-channel verification:");

        /* Print results */
        if (settings->getSideChannelFilteringType() == "white") {
            logger->log(service, this->m_name, ITEM + "source: " + settings->getSideChannelWhiteList());
        } else {
            logger->log(service, this->m_name, ITEM + "source: " + settings->getSideChannelBlackList());
        }

        if (settings->getVerbose() >= VINFO) {
            int count;

            logger->log(service, this->m_name, "ignoring: ");

            count = 0;
            logger->log(service, this->m_name, ITEM + "module(s) : " + std::to_string(std::count_if(state->m_netlist_model->modules().begin(), state->m_netlist_model->modules().end(), [count](const std::pair<const int, std::unique_ptr<verica::Module>> &m){ return m.second->sca_ignore() & !m.second->gate();})));
            
            count = 0;
            logger->log(service, this->m_name, ITEM + "gate(s)   : " + std::to_string(std::count_if(state->m_netlist_model->modules().begin(), state->m_netlist_model->modules().end(), [count](const std::pair<const int, std::unique_ptr<verica::Module>> &m){ return m.second->sca_ignore() && m.second->gate();})));

            count = 0;
            logger->log(service, this->m_name, ITEM + "wire(s)   : " + std::to_string(std::count_if(state->m_netlist_model->wires().begin(), state->m_netlist_model->wires().end(), [count](const std::pair<const int, std::unique_ptr<verica::Wire>> &w){ return w.second->sca_ignore();})));
        }
    } else {
        logger->log(service, this->m_name, "Filtering for side-channel verification is disabled!");
    }

    /* FIA Filtering */
    if (settings->getFaultFilteringType() != "none") {
        logger->log(service, this->m_name, "Filtering for fault-injection verification:");

        /* Print results */
        if (settings->getFaultFilteringType() == "white") {
            logger->log(service, this->m_name, ITEM + "source: " + settings->getFaultWhiteList());
        } else {
            logger->log(service, this->m_name, ITEM + "source: " + settings->getFaultBlackList());
        }

        if (settings->getVerbose() >= VINFO) {
            int count;

            logger->log(service, this->m_name, "ignoring: ");

            count = 0;
            logger->log(service, this->m_name, ITEM + "module(s) : " + std::to_string(std::count_if(state->m_netlist_model->modules().begin(), state->m_netlist_model->modules().end(), [count](const std::pair<const int, std::unique_ptr<verica::Module>> &m){ return m.second->fia_ignore() & !m.second->gate();})));
            
            count = 0;
            logger->log(service, this->m_name, ITEM + "gate(s)   : " + std::to_string(std::count_if(state->m_netlist_model->modules().begin(), state->m_netlist_model->modules().end(), [count](const std::pair<const int, std::unique_ptr<verica::Module>> &m){ return m.second->fia_ignore() && m.second->gate();})));

            count = 0;
            logger->log(service, this->m_name, ITEM + "wire(s)   : " + std::to_string(std::count_if(state->m_netlist_model->wires().begin(), state->m_netlist_model->wires().end(), [count](const std::pair<const int, std::unique_ptr<verica::Wire>> &w){ return w.second->fia_ignore();})));
        }
    } else {
        logger->log(service, this->m_name, "Filtering for fault-injection verification is disabled!");
    }

    /* Print footer */
    logger->footer(service, this->m_name, SUCCESS);
}

void 
ConfigurationFiltering::clear_filter(State *state) {
    /* Clear filtered gates */
    state->m_netlist_model->ignore_sca_module(state->m_netlist_model->topmodule()->uid(), false);
    state->m_netlist_model->ignore_fia_module(state->m_netlist_model->topmodule()->uid(), false);
}

void 
ConfigurationFiltering::apply_filter(const Settings *settings, State *state, const bool blacklist_filter, const bool strategy){   
    std::string line, list_path;
    std::vector<std::string> tokens, filter;

    /* Determine list path */
    if (blacklist_filter){
        if(strategy)
            list_path = settings->getFaultBlackList();
        else
            list_path = settings->getSideChannelBlackList();
    } else{
        if(strategy)
            list_path = settings->getFaultWhiteList();
        else
            list_path = settings->getSideChannelWhiteList();
    }

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
    if(strategy)
        state->m_netlist_model->ignore_fia_module(state->m_netlist_model->topmodule()->uid(), !blacklist_filter);
    else
        state->m_netlist_model->ignore_sca_module(state->m_netlist_model->topmodule()->uid(), !blacklist_filter);

    for (auto& module : state->m_netlist_model->modules()) {
        for (auto name : filter) {
            if(module.second->name().find(name) != std::string::npos) {
                if(strategy)
                    state->m_netlist_model->ignore_fia_module(module.second->uid(), blacklist_filter);
                else
                    state->m_netlist_model->ignore_sca_module(module.second->uid(), blacklist_filter);
            }
        }
    }

    for(auto& p : state->m_netlist_model->module_under_test()->input_pins()){
        for(auto name : filter){
            if(p->fan_out() != nullptr){
                if(p->fan_out()->name().find(name) != std::string::npos){
                    if(strategy)
                        state->m_netlist_model->ignore_fia_wire(p->fan_out()->uid(), blacklist_filter);
                    else
                        state->m_netlist_model->ignore_sca_wire(p->fan_out()->uid(), blacklist_filter);
                }
            }
        }
    }
}