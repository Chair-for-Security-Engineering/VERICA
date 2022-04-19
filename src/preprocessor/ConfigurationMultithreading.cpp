/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2020/634.pdf
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

#include "preprocessor/ConfigurationMultithreading.hpp"

void
ConfigurationMultithreading::execute(const Settings *settings, State *state) {
    int cores = settings->getCores();

    // Set up multithreading
    omp_set_num_threads(cores);

    // Create multiple CUDD managers - one for each thread
    for(int i=0;i<cores;i++){
        state->m_managers.push_back(Cudd_Manager(0,0,1<<8,1<<16,settings->getMemory()*1024*1024*1024ull));

        // Enable auto-dynamic reordering
        if (settings->getReordering()) 
            state->m_managers[i].AutodynEnable(CUDD_REORDER_SIFT);
    }

    state->m_probe_combinations.resize(cores);

    Cache::initCache();
}

void
ConfigurationMultithreading::report(std::string service, const Logger *logger, const Settings *settings, State *state) const
{    
    (void)state; // We do not need a state object in this function. However, it must be given as paramter due to an overwriting.  

    /* Print header */
    logger->header();

    /* Print results */
    if (settings->getVerbose() >= VINFO) {
        logger->log(service, this->m_name, "cores: " + std::to_string(settings->getCores()));
        logger->log(service, this->m_name, "memory: " + std::to_string(settings->getCores() * settings->getMemory()) + " GB");
    }

    /* Print footer */
    logger->footer(service, this->m_name, SUCCESS);
}