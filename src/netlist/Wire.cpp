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

#include "netlist/Wire.hpp"

#include "util.hpp"

/* 
 * =========================================================================================
 * Constructor(s)
 * =========================================================================================
 */
verica::Wire::Wire(std::string name)
{
    this->m_name        = name;
    this->m_parent      = nullptr;
    this->m_source_pin  = nullptr;
}

/* 
 * =========================================================================================
 * Member function(s)
 * =========================================================================================
 */
const BDD& 
verica::Wire::functions(int thread_num) const
{ 
    if (m_faulty_functions[thread_num].getNode() == nullptr)
        return m_golden_functions[thread_num];
    else if (m_faulty_functions[thread_num] != m_golden_functions[thread_num])
        return m_faulty_functions[thread_num];
    else
        return m_golden_functions[thread_num];
}

void verica::Wire::remove_target_pin(int uid){
    for (unsigned int i = 0; i < this->m_target_pins.size(); i++){
        if (m_target_pins[i]->uid() == uid){
            this->m_target_pins.erase(m_target_pins.begin() + i);
            return;
        }
    }
}
