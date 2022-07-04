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

#ifndef __VERICA_CONTEXT_FAULT_LIBRARY_HPP_
#define __VERICA_CONTEXT_FAULT_LIBRARY_HPP_

#include "fault/FaultTemplate.hpp"

#include <string>
#include <map>

class FaultLibrary
{
    public:
    
        /* Constructurs */
        FaultLibrary();

        const std::map<std::string, FaultTemplate*>& fault_types() const { return m_fault_types; }

    private:

        // Test fault types 
        std::map<std::string, FaultTemplate*> m_fault_types =
        { 
            {"buf",  new FaultTemplate(0, {"A"}, {"Z"},  {{"!A", "0", "1"}})},
            {"not",  new FaultTemplate(1, {"A"}, {"ZN"}, {{"A"}})},
            {"reg",  new FaultTemplate(2, {"A"}, {"Z"},  {{"!A"}})},
            {"regn", new FaultTemplate(3, {"A"}, {"ZN"}, {{"A"}})},
            {"and",  new FaultTemplate(4, {"A1", "A2"}, {"Z"},  {{"!(A1 & A2)"}})},
            {"nand", new FaultTemplate(5, {"A1", "A2"}, {"ZN"}, {{"(A1 & A2)"}})},
            {"or",   new FaultTemplate(6, {"A1", "A2"}, {"Z"},  {{"!(A1 | A2)"}})},
            {"nor",  new FaultTemplate(7, {"A1", "A2"}, {"ZN"}, {{"(A1 | A2)"}})},
            {"xor",  new FaultTemplate(8, {"A1", "A2"}, {"Z"},  {{"!(A1 ^ A2)"}})},
            {"xnor", new FaultTemplate(9, {"A1", "A2"}, {"ZN"}, {{"(A1 ^ A2)"}})}
        };

        // // Bit-Flip Model
        // std::map<std::string, FaultTemplate*> m_fault_types =
        // { 
        //     {"buf",  new FaultTemplate(0, {"A"}, {"Z"},  {{"!A"}})},
        //     {"not",  new FaultTemplate(1, {"A"}, {"ZN"}, {{"A"}})},
        //     {"reg",  new FaultTemplate(2, {"A"}, {"Z"},  {{"!A"}})},
        //     {"regn", new FaultTemplate(3, {"A"}, {"ZN"}, {{"A"}})},
        //     {"and",  new FaultTemplate(4, {"A1", "A2"}, {"Z"},  {{"!(A1 & A2)"}})},
        //     {"nand", new FaultTemplate(5, {"A1", "A2"}, {"ZN"}, {{"(A1 & A2)"}})},
        //     {"or",   new FaultTemplate(6, {"A1", "A2"}, {"Z"},  {{"!(A1 | A2)"}})},
        //     {"nor",  new FaultTemplate(7, {"A1", "A2"}, {"ZN"}, {{"(A1 | A2)"}})},
        //     {"xor",  new FaultTemplate(8, {"A1", "A2"}, {"Z"},  {{"!(A1 ^ A2)"}})},
        //     {"xnor", new FaultTemplate(9, {"A1", "A2"}, {"ZN"}, {{"(A1 ^ A2)"}})}
        // };
            
};

#endif // __VERICA_CONTEXT_FAULT_LIBRARY_HPP_
