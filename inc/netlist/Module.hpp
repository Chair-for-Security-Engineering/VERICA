/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: 
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
 * Please see LICENSE and README for license and further instructions.
 */

#ifndef __VERICA_MODULE_HPP__
#define __VERICA_MODULE_HPP__

#include <string>
#include <vector>
#include <map>
#include <unordered_set>

#include "netlist/CellTemplate.hpp"
#include "netlist/Wire.hpp"
#include "netlist/Pin.hpp"

/* Forward declaration */
namespace verica
{
    /* Forward declaration */
    class Netlist;

    /**
     * Module class, modeling a module inside a gate-level netlist.
     */
    class Module
    {
        public:
            /** 
             * Each module is associated with a (unique) identifier, generated by the corresponding netlist object.
             *
             * @brief Accessor function for module UID.
             *
             * @returns The UID of the module.
             */
            const int& uid() const { return m_uid; }

            /** 
             * Each module is associated with a (non-unique) name, provided during construction.
             *
             * @brief Accessor function for module name.
             *
             * @returns The name of the module.
             */
            const std::string name() const {return m_name;};

            /* Accessor function(s) */
            const std::vector<const Wire*>& wires() const { return m_wires; }
            const std::vector<const Module*>& children() const {return m_children; }
            const std::vector<const Pin*>& input_pins() const { return m_input_pins; }
            const std::vector<const Pin*>& output_pins() const { return m_output_pins; }
            /*const*/ Module* parent() const { return m_parent; };
            const CellTemplate& cell_template() const { return m_cell_template; }
            const std::map<int, std::unordered_set<int>>& shares() const {return m_shares;}
            const bool& gate() const { return m_is_gate; }
            const bool& ignore() const { return m_ignore; }
            const bool& is_sequential() const { return m_is_sequential; }
            void sort_wires();
            void remove_pin(int uid);            
            void remove_wire(int uid);    
        private:    
            friend class Netlist;

            /* Constructor(s) */
            Module(std::string name);

            /* Disable copy-constructor / copy-assignment */
            Module(const Module&) = delete;
            Module& operator=(const Module&) = delete;

            /* Unique ID */
            int m_uid;

            /* Module details */
            std::string m_name;

            /* Hierarchy */
            Module* m_parent;
            std::vector<const Module*> m_children;

            /* Container */
            std::vector<const Wire*> m_wires;
            std::vector<const Pin*> m_input_pins;
            std::vector<const Pin*> m_output_pins;
            
            /* Gate information */
            std::vector<std::string> m_out_expression;
            bool m_is_gate = false;
            bool m_ignore = false;
            bool m_is_sequential = false;

            /* Cell template */
            CellTemplate m_cell_template;

            /* Share-Index Map */
            std::map<int, std::unordered_set<int>> m_shares;        
    };
}

#endif // __VERICA_MODULE_HPP__