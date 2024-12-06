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

#include "context/Logger.hpp"

#include <vector>
#include <sstream>
#include <iterator>

#include "util.hpp"

/* 
 * =========================================================================================
 * Constructor(s)
 * =========================================================================================
 */

Logger::Logger(int console_width) : m_console_width(console_width)
{
    /* Start time tracking */
    this->m_start = std::chrono::high_resolution_clock::now();
    
    /* Print copyright details */
    #ifndef UNITTEST
    copyright();
    #endif
}

/* 
 * =========================================================================================
 * Destructor
 * =========================================================================================
 */

Logger::~Logger()
{
}

/* 
 * =========================================================================================
 * Member functions
 * =========================================================================================
 */
void
Logger::copyright() const
{
    /* Open log file */
    std::ofstream log_file("log/verica.log", std::ios_base::out);

    /* Message */
    std::string message;

    /* VERICA copyright information */
    std::vector<std::string> infos = {
        "VERICA+ -- VERIFICATION OF COMBINED RANDOM FAULT AND RANDOM PROBING SECURITY",
        "",
        "Ruhr-Universität Bochum, Chair for Security Engineering",
        "Jan Richter-Brockmann (jan.richter-brockmann@rub.de),",
        "Pascal Sasdrich (pascal.sasdrich@rub.de)",
        "",
        "Copyright (c) 2024,",
        "Jan Richter-Brockmann,",
        "Pascal Sasdrich",
        "",
        "All rights reserved."
    };

    /* Top line */
    message += this->line();

    /* Centered copyright information */
    for (auto info : infos) 
    {        
        if (info != "") 
        {
            for (unsigned int idx = 0; idx < (this->m_console_width - info.length() + 1)/2; idx++) message += " "; 
            message += info;
            for (unsigned int idx = 0; idx < (this->m_console_width - info.length() + 0)/2; idx++) message += " ";
        }
        message += "\n";
    }

    /* Bottom line */
    message += this->line() + "\n";

    /* Print message to console */
    std::cout << message;

    /* Print message to log file */
    log_file << message;

    /* Close log file */
    log_file.close();
}

void Logger::header() const
{
    /* Open log file */
    std::ofstream log_file("log/verica.log", std::ios_base::out | std::ios_base::app);

    /* Message */
    std::string message = "\n  TIME [s]    SERVICE          CONFIGURATION         INFO\n";
    message += this->line();

    /* Print message to console */
    std::cout << message;

    /* Print message to log file */
    log_file << message;

    /* Close log file */
    log_file.close();
}

void Logger::header(std::string info) const
{
    /* Open log file */
    std::ofstream log_file("log/verica.log", std::ios_base::out | std::ios_base::app);

    /* Message */
    std::string message = "\n  TIME [s]    SERVICE          CONFIGURATION         INFO: " + info + "\n";
    message += this->line();

    /* Print message to console */
    std::cout << message;

    /* Print message to log file */
    log_file << message;

    /* Close log file */
    log_file.close();
}

void Logger::footer() const
{    
    /* Open log file */
    std::ofstream log_file("log/verica.log", std::ios_base::out | std::ios_base::app);

    /* Message */
    std::string message = this->line();
    
    /* Print message to console */
    std::cout << message;

    /* Print message to log file */
    log_file << message;

    /* Close log file */
    log_file.close();
}

void Logger::footer(std::string info) const
{    
    this->footer();
    this->log("", "", info + "\n");
}

void Logger::footer(std::string service, std::string info) const
{    
    this->footer();
    this->log(service, "", info + "\n");
}

void Logger::footer(std::string service, std::string configuration, std::string info) const
{    
    this->footer();
    this->log(service, configuration, info + "\n");
}

void Logger::log(std::string service, std::string info) const
{
    log(service, "", info);
}

void Logger::log(std::string service, std::string configuration, std::string info) const
{
    /* Open log file */
    std::ofstream log_file("log/verica.log", std::ios_base::out | std::ios_base::app);

    /* Message */
    std::string message;

    /* Get current timepoint */
    timepoint now = std::chrono::high_resolution_clock::now();

    /* Calculate duration */
    std::chrono::duration<double, std::ratio<1>> elapsed = now - this->m_start;

    /* Print log information to console */
    std::ostringstream columns;
    columns << std::setw(10) << std::right << std::fixed << std::setprecision(3) << elapsed.count() << "    ";
    columns << std::setw(15) << std::left << service << "  ";
    columns << std::setw(20) << std::left << configuration << "  ";
    message += columns.str() + info + "\n";
    
    /* Print message to console */
    std::cout << message;

    /* Print message to log file */
    log_file << message;

    /* Close log file */
    log_file.close();
}

void Logger::progress(unsigned int counter, unsigned int max) const 
{
    unsigned int progress_step = std::max(10, int(max/100));

    /* Get current timepoint */
    timepoint now = std::chrono::high_resolution_clock::now();

    /* Calculate duration */
    std::chrono::duration<double, std::ratio<1>> elapsed = now - this->m_start;

    #pragma omp critical
    {
        if(((counter % progress_step) == 0) || counter == max-1){
            int barWidth = 100;
            float progress = float(counter) / float(max-1);

            std::cout << std::setw(10) << std::right << std::fixed << std::setprecision(3) << elapsed.count() << "    ";
            std::cout << "[";
            int barPos = barWidth * progress;
            for (int i = 0; i < barWidth; ++i) {
                if (i < barPos) std::cout << "=";
                else if (i == barPos) std::cout << ">";
                else std::cout << " ";
            }
            std::cout << "] " << int(progress * 100.0) << " %\r";
            std::cout.flush();
            if (int(progress * 100.0) >= 100) std::cout << "\33[2K\033[A \n";
        }
    }
}

std::string
Logger::line() const
{
    std::string s;
    for (int idx = 0; idx < this->m_console_width; idx++) s += "-"; 
    s += "\n";
    return s;
}
