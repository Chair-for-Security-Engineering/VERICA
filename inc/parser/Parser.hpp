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

#ifndef __VERICA_PARSER_HPP_
#define __VERICA_PARSER_HPP_

#include "Service.hpp"

class Parser : public Service
{
    public:

        /* Constructor */
        Parser(std::string name, Logger *logger, Settings *settings, State *state);

        /* Destructor */
        ~Parser();

        /* Static utility functions */
        /**
         * @brief Split a string into tokens based on delimiter character.
         * @param line String to be split.
         * @param delimiter Delimiter character used to split string.
         */
        static std::vector<std::string> split(const std::string line, char delimiter) 
        {
            // Variable declarations
            std::vector<std::string> tokens;
            std::string token;

            // Turn string into stream
            std::stringstream stream(line);

            // Extract tokens from line
            while(getline(stream, token, delimiter)) {
                tokens.push_back(token);
            }

            return tokens;
        }
};

#endif // __VERICA_PARSER_HPP_