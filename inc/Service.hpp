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

#ifndef __VERICA_SERVICE_HPP_
#define __VERICA_SERVICE_HPP_

#include <string>

#include "Configuration.hpp"

#include "context/Logger.hpp"
#include "context/Settings.hpp"
#include "context/State.hpp"

/**
 * Service class, creating configurable service objects to operate on the state 
 * according to the user settings and loaded configuration.
 */
class Service
{
    public:

        /*
         * ###########################################################################
         * # CONSTRUCTOR(S) / DESTRUCTOR(S)                                          #
         * ###########################################################################
         */

        /* Constructor(s) */
        Service(std::string name, Logger *logger, Settings *settings, State *state);

        /* Destructor */
        ~Service();

        /*
         * ###########################################################################
         * # MEMBER FUNCTIONS                                                        #
         * ###########################################################################
         */

        /* Replace configuration during runtime */
        void configure(Configuration *config);
        
        /* Execute configuration during runtime */
        void execute();
        
        /* Report results after configuration execution */
        void report();

        /*
         * ###########################################################################
         * # ACCESSOR FUNCTIONS                                                      #
         * ###########################################################################
         */

        /** 
         * Each service is associated with a (non-unique) name, provided during construction.
         *
         * @brief Accessor function for service name.
         *
         * @returns The name of the service.
         */
        const std::string& name() const { return this->m_name; };

    protected:

        /* Service name */
        std::string m_name;

        /* Service configuration */
        Configuration *m_config;

        /* Current logger */
        Logger *m_logger;

        /* Current user settings */
        Settings *m_settings;

        /* Current state */
        State *m_state;    
};

#endif // __VERICA_SERVICE_HPP_
