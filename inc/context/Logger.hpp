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

#ifndef __VERICA_CONTEXT_LOGGER_HPP_
#define __VERICA_CONTEXT_LOGGER_HPP_

#include <string>
#include <chrono>
#include <iomanip>
#include <fstream>
#include <iostream>

typedef std::chrono::time_point<std::chrono::high_resolution_clock> timepoint;

class Logger
{
    public:

        /* Constructor */
        Logger(int console_width);

        /* Destructor */
        ~Logger();

        /* Print copyright details */
        void copyright() const;

        /* Print log header */
        void header() const;
        void header(std::string info) const;

        /* Print log footer */
        void footer() const;
        void footer(std::string info) const;
        void footer(std::string service, std::string info) const;
        void footer(std::string service, std::string configuration, std::string info) const;

        /* Print log information */
        void log(std::string service, std::string info) const;
        void log(std::string service, std::string config, std::string info) const;

        /* Print progress */
        void progress(unsigned int counter, unsigned int max) const;

        /* Static utility functions */
        static std::string reporting_number(int num, std::string singular, std::string plural) {
            if(num == 1) 
                return "1 " + singular;
            else
                return std::to_string(num) + " " + plural;
        };

    private:

        /* Define console width (header printing only) */
        int m_console_width;

        /* Track elapsed time of programm execution */
        timepoint m_start;

        /* Create line (string) */
        std::string line() const;
};

#endif // __VERICA_CONTEXT_LOGGER_HPP_
