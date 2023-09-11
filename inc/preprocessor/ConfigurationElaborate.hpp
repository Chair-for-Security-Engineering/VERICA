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

#ifndef __VERICA_PREPROCESSOR_CONFIGURATION_ELABORATE_HPP_
#define __VERICA_PREPROCESSOR_CONFIGURATION_ELABORATE_HPP_

#include "Configuration.hpp"

class ConfigurationElaborate : public Configuration
{
    public:
        ConfigurationElaborate(std::string name) : Configuration(name) { };

        /* Initialize strategy */
        void initialize(const Settings *settings, State *state) override;

        /* Elaborate design for given settings */
        void execute(const Settings *settings, State *state) override;

        /* Finalize analysis for given context & configuration */
        void finalize(const Settings *settings, State *state) override;
        
        /* Report elaborate results */
        void report(std::string service, const Logger *logger, const Settings *settings, State *state) const override;

    private: TESTABLE

        /**
        * @brief Elaborates a circuit model for each gate.
        * @param model Circuit model to be elaborated.
        * @param manager Cudd manager.
        * @param core Thread number.
        * @param masking Indicates the masking type.
        */       
        void elaborate(verica::Netlist* model, Cudd_Manager &manager, int core, int masking);

        /**
        * @brief Evaluates the BDD of wire.
        * @param model Circuit model to be elaborated.
        * @param wire Pointer to the wire.
        * @param manager Corresping Cudd manager.
        * @param core Working thread.
        */  
        void gate_store_functions(verica::Netlist* model, const verica::Wire* wire, Cudd_Manager &manager, int core);

        /**
        * @brief Determines the variables that influence wire.
        * @param model Circuit model to be elaborated.
        * @param wire Pointer to the wire.
        * @param core Working thread.
        */ 
        void gate_store_variables(verica::Netlist* model, const verica::Wire* wire, int core);
        
        /**
        * @brief Determines the registers that influence wire.
        * @param model Circuit model to be elaborated.
        * @param wire Pointer to the wire.
        * @param core Working thread.
        */ 
        void gate_store_registers(verica::Netlist* model, const verica::Wire* wire, int core);

        /**
        * @brief Determines the secrets that influence wire.
        * @param model Circuit model to be elaborated.
        * @param wire Pointer to the wire.
        * @param secrets Mapping of the secrets.
        * @param manager Corresping Cudd manager.
        * @param core Working thread.
        */ 
        void gate_store_secrets(verica::Netlist* model, const verica::Wire* wire, std::map<int, BDD> secrets, Cudd_Manager &manager, int core);

        /**
        * @brief Searches backwards through the model and identifies the previous register stage index of wire.
        * @param model Circuit model to be elaborated.
        * @param wire Pointer to the wire.
        */ 
        int find_input_register_index(const verica::Netlist* model, const verica::Wire* wire);

        /**
        * @brief Searches forwards through the model and identifies the next register stage index of wire.
        * @param model Circuit model to be elaborated.
        * @param wire Pointer to the wire.
        */ 
        int find_output_register_index(const verica::Netlist* model, const verica::Wire* wire);

        /**
        * @brief ToDO
        */ 
        std::map<int, std::vector<BDD>> netlistToMap(verica::Netlist* model, Cudd_Manager &manager);

        /**
        * @brief Performs boolean masking.
        */       
        std::map<int, BDD> booleanMasking(Cudd_Manager &cuddManager, std::map<int, std::vector<BDD>> inputs);

        /**
        * @brief Performs additive masking.
        */       
        std::map<int, BDD>* additiveMasking(Cudd_Manager &cuddManager, std::map<int, std::vector<BDD>> inputs);
};

#endif // __VERICA_PREPROCESSOR_CONFIGURATION_ELABORATE_HPP_