/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Jan Richter-Brockmann (jan.richter-brockmann@rub.de)
 *           Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: ---
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2020, Jan Richter-Brockmann, Pascal Sasdrich
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

#ifndef __VERIFY_FAULT_FAULT_HPP_
#define __VERIFY_FAULT_FAULT_HPP_

#include <map>
#include <chrono>
#include <vector>

#include "util.hpp"

namespace verica
{
    class fault
    {
        public: 
            enum Fault {
                AND,    // B0
                NAND,   // B1
                OR,     // B2
                NOR,    // B3
                XOR,    // B4
                XNOR,   // B5
                RESET,  // B6
                SET,    // B7
                A,      // B8
                B,      // B9
                NOTA,   // B10
                NOTB,   // B11
                SUB,    // B12
                NSUB,   // B13
                CONV,   // B14
                NCONV,  // B15
            };

            static Fault string2fault(std::string fault){
                if      (fault ==   "and") return AND;
                else if (fault ==  "nand") return NAND;
                else if (fault ==    "or") return OR;
                else if (fault ==   "nor") return NOR;
                else if (fault ==   "xor") return XOR;
                else if (fault ==  "xnor") return XNOR;
                else if (fault == "reset") return RESET;
                else if (fault ==   "set") return SET;
                else if (fault ==     "a") return A;
                else if (fault ==     "b") return B;
                else if (fault ==  "nota") return NOTA;
                else if (fault ==  "notb") return NOTB;
                else if (fault ==   "sub") return SUB;
                else if (fault ==  "nsub") return NSUB;
                else if (fault ==  "conv") return CONV;
                else if (fault == "nconv") return NCONV;
                else throw std::logic_error("Unsupported gate type detected.");
            };

            static std::string fault2string(Fault fault){
                if      (fault ==   AND) return "and";
                else if (fault ==  NAND) return "nand";
                else if (fault ==    OR) return "or";
                else if (fault ==   NOR) return "nor";
                else if (fault ==   XOR) return "xor";
                else if (fault ==  XNOR) return "xnor";
                else if (fault == RESET) return "reset";
                else if (fault ==   SET) return "set";
                else if (fault ==     A) return "a";
                else if (fault ==     B) return "b";
                else if (fault ==  NOTA) return "nota";
                else if (fault ==  NOTB) return "notb";
                else if (fault ==   SUB) return "sub";
                else if (fault ==  NSUB) return "nsub";
                else if (fault ==  CONV) return "conv";
                else if (fault == NCONV) return "nconv";
                else throw std::logic_error("Unsupported gate type detected.");
            };
    };
}



#endif // __VERIFY_FAULT_FAULT_HPP_
