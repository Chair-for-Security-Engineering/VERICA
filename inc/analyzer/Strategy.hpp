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

#ifndef __VERICA_ANALYZER_STRATEGY_HPP_
#define __VERICA_ANALYZER_STRATEGY_HPP_

#include "context/Logger.hpp"
#include "context/State.hpp"
#include "context/Settings.hpp"

#include <string>

class Strategy
{
    public:
        Strategy(std::string name) : m_name(name) { }
        virtual ~Strategy() { }
        
        /** 
          * Each strategy is associated with a name, provided during construction.
          *
          * @brief Accessor function for strategy name.
          *
          * @returns The name of the strategy.
          */
        const std::string name() const { return this->m_name; }
        
        /** 
          * Each strategy is has to implement a (custom) initialize function in order to set up the analysis.
          *
          * @brief Custom initialize function for the given strategy.
          *
          * @param settings Pointer to the shared settings object storing user configuration details.
          * @param state Pointer to the shared state object storing intermediate results and shared values.
          */
        virtual void initialize(const Settings *settings, State *state) = 0;

        /** 
          * Each strategy is has to implement a (custom) analyze function.
          *
          * @brief Custom analysis function for the given strategy.
          *
          * @param logger Pointer to the shared logger object used to log information.
          * @param settings Pointer to the shared settings object storing user configuration details.
          * @param state Pointer to the shared state object storing intermediate results and shared values.
          */
        virtual void analyze(const Settings *settings, State *state) = 0;

        /** 
          * Each strategy is has to implement a (custom) finalize function in order to conclude the analysis.
          *
          * @brief Custom finalize function for the given strategy.
          *
          * @param settings Pointer to the shared settings object storing user configuration details.
          * @param state Pointer to the shared state object storing intermediate results and shared values.
          */
        virtual void finalize(const Settings *settings, State *state) = 0;
        
        /** 
          * Each strategy is has to implement a (custom) report function.
          *
          * @brief Report function for the given strategy.
          *
          * @param logger Pointer to the shared logger object used to log information.
          * @param settings Pointer to the shared settings object storing user configuration details.
          * @param state Pointer to the shared state object storing intermediate results and shared values.
          */
        virtual void report(const Logger *logger, const Settings *settings, State *state) const = 0;

    protected:
        std::string m_name;
};

#endif // __VERICA_ANALYZER_STRATEGY_HPP_