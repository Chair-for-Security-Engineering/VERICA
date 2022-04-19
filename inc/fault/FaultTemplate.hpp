/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Jan Richter-Brockmann (jan.richter-brockmann@rub.de)
 *           Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: 
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
 * Please see LICENSE and README for license and further instructions.
 */

#ifndef __VERICA_FAULT_HPP__
#define __VERICA_FAULT_HPP__

#include <string>
#include <vector>

typedef struct FaultTemplate {
    int m_identifier;
    std::vector<std::string> m_in_pins;
    std::vector<std::string> m_out_pins;
    std::vector<std::vector<std::string>> m_out_expr;

    FaultTemplate() { }

    FaultTemplate(int identifier, std::vector<std::string> in_pins, std::vector<std::string> out_pins, std::vector<std::vector<std::string>> out_expr) 
        : m_identifier(identifier), m_in_pins(in_pins), m_out_pins(out_pins), m_out_expr(out_expr) { }

} FaultTemplate;

#endif // __VERICA_FAULT_HPP__
