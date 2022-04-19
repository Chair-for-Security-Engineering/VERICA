/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2020/634.pdf
 *           https://eprint.iacr.org/2021/936.pdf
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

#include "Service.hpp"

/* 
 * =========================================================================================
 * Constructor(s)
 * =========================================================================================
 */

Service::Service(std::string name, Logger *logger, Settings *settings, State *state) : m_name(name)
{
    /* Register context with service */
    if (!this->m_logger) delete this->m_logger;
    if (!this->m_settings) delete this->m_settings;
    if (!this->m_state) delete this->m_state;

    this->m_logger = logger;
    this->m_settings = settings;
    this->m_state = state;
}


/* 
 * =========================================================================================
 * Destructor
 * =========================================================================================
 */

Service::~Service()
{

}

/* 
 * =========================================================================================
 * Member functions
 * =========================================================================================
 */
void
Service::configure(Configuration *config)
{
    /* Register configuration with service */
    if (!this->m_config) delete this->m_config;
    this->m_config = config;
}

void
Service::execute()
{
    /* Execute configuration */
    this->m_config->execute(this->m_settings, this->m_state);
}

void
Service::report()
{
    /* Report execution results */
    this->m_config->report(this->m_name, this->m_logger, this->m_settings, this->m_state);
}