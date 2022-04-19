/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Jan Richter-Brockmann (jan.richter-brockmann@rub.de)
 *           Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: ---
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2021, Jan Richter-Brockmann and Pascal Sasdrich
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

#ifndef __VERICA_CONTEXT_CELL_LIBRARY_HPP_
#define __VERICA_CONTEXT_CELL_LIBRARY_HPP_

#include "../netlist/CellTemplate.hpp"

#include <string>
#include <map>

class CellLibrary
{
    public:
    
        /* Constructurs */
        CellLibrary();

        const std::map<std::string, CellTemplate*>& gate_types() const { return m_gate_types; };
        void gate_types(const std::map<std::string, CellTemplate*> gt) { m_gate_types = gt; };

    private:

        // Currently hard-coded - should be parsed from a Library file
        // identifier (0-7) are hard-coded as well and cannot be interchanged 
        // since it is linked with elaborate()
        
        // std::map<std::string, CellTemplate*> m_gate_types =
        // { 
        //     {"buf",  new CellTemplate(0, {"A"}, {"Z"},  { "A"}, false)},
        //     {"not",  new CellTemplate(1, {"A"}, {"ZN"}, {"!A"}, false)},
        //     {"reg",  new CellTemplate(0, {"A"}, {"Z"},  { "A"}, true)},
        //     {"regn", new CellTemplate(1, {"A"}, {"ZN"}, {"!A"}, true)},
        //     {"and",  new CellTemplate(2, {"A1", "A2"}, {"Z"},  { "(A1 & A2)"}, false)},
        //     {"nand", new CellTemplate(3, {"A1", "A2"}, {"ZN"}, {"!(A1 & A2)"}, false)},
        //     {"or",   new CellTemplate(4, {"A1", "A2"}, {"Z"},  { "(A1 | A2)"}, false)},
        //     {"nor",  new CellTemplate(5, {"A1", "A2"}, {"ZN"}, {"!(A1 | A2)"}, false)},
        //     {"xor",  new CellTemplate(6, {"A1", "A2"}, {"Z"},  { "(A1 ^ A2)"}, false)},
        //     {"xnor", new CellTemplate(7, {"A1", "A2"}, {"ZN"}, {"!(A1 ^ A2)"}, false)}
        // };
        
       std::map<std::string, CellTemplate*> m_gate_types;
            
};

#endif // __VERICA_CONTEXT_CELL_LIBRARY_HPP_
