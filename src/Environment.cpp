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
#include <string>
#include <vector>
#include <iostream>

#include <boost/algorithm/string/predicate.hpp>

#include "Environment.hpp"

#include "parser/ConfigurationFirrtl.hpp"
#include "parser/ConfigurationLibrary.hpp"
#include "parser/ConfigurationNetlist.hpp"
#include "parser/ConfigurationVerilog.hpp"

#include "preprocessor/ConfigurationFiltering.hpp"
#include "preprocessor/ConfigurationMultithreading.hpp"
#include "preprocessor/ConfigurationAnnotation.hpp"
#include "preprocessor/ConfigurationModelPostprocessing.hpp"
#include "preprocessor/ConfigurationElaborate.hpp"
#include "preprocessor/ConfigurationFIA.hpp"
#include "preprocessor/ConfigurationSCA.hpp"

#include "analyzer/ConfigurationProbing.hpp"
#include "analyzer/ConfigurationUniformity.hpp"
#include "analyzer/ConfigurationComposability.hpp"
#include "analyzer/ConfigurationFaultDetection.hpp"
#include "analyzer/ConfigurationFaultSFA.hpp"
#include "analyzer/ConfigurationFaultSIFA.hpp"
#include "analyzer/ConfigurationFaultCorrection.hpp"

#include "visualization/ConfigurationGraphvizDot.hpp"

#include "composer/NetlistComposer.hpp"
/* 
 * =========================================================================================
 * Constructor(s)
 * =========================================================================================
 */

Environment::Environment(int argc, char * argv[])
{
    /* Registering new logger */
    this->m_logger = new Logger(100);

    /* Registering new evaluation settings */
    this->m_settings = new Settings(argc, argv);

    /* Registering new evaluation context */
    this->m_state = new State();

    /* Initialize execution environment */
    this->initialize();

    /* Execute evaluation */
    this->execute();
}

/* 
 * =========================================================================================
 * Destructor
 * =========================================================================================
 */

Environment::~Environment()
{
    delete this->m_state;
    delete this->m_settings;
    delete this->m_parser;
    delete this->m_preprocessor;
    delete this->m_injector;
    delete this->m_analyzer;
}

/* 
 * =========================================================================================
 * Member functions
 * =========================================================================================
 */

void
Environment::initialize()
{
    /* Registering new parser instance */
    this->m_parser = new Parser("PARSER", this->m_logger, this->m_settings, this->m_state);
    
    /* Registering new preprocessor instance */
    this->m_preprocessor = new Preprocessor("PREPROCESSOR", this->m_logger, this->m_settings, this->m_state);

    /* Registering new injector instance */
    this->m_injector = new Injector("INJECTOR", this->m_logger, this->m_settings, this->m_state);
        
    /* Registering new analyzer instance */
    this->m_analyzer = new Analyzer("ANALYZER", this->m_logger, this->m_settings, this->m_state);

    /* Registering new visualization instance */
    this->m_visualizer = new Visualizer("VISUALIZER", this->m_logger, this->m_settings, this->m_state);
}

void
Environment::execute()
{

    /* Design cell library parser configuration & execution */
    this->m_parser->configure(new ConfigurationLibrary("CELLLIB"));
    this->m_parser->execute();
    this->m_parser->report();

    /* Design parser configuration & execution */
    if (boost::algorithm::ends_with(this->m_settings->getDesignFilePath(), ".fir"))
        this->m_parser->configure(new ConfigurationFirrtl("FIRRTL"));
    else if (boost::algorithm::ends_with(this->m_settings->getDesignFilePath(), ".v"))
        this->m_parser->configure(new ConfigurationVerilog("VERILOG"));
    else if (boost::algorithm::ends_with(this->m_settings->getDesignFilePath(), ".nl"))
        this->m_parser->configure(new ConfigurationNetlist("NETLIST"));
    this->m_parser->execute();
    
    this->m_parser->report();
    NetlistComposer* nc = new NetlistComposer("COMPOSER");
    nc->execute(this->m_settings, this->m_state);

    /* Preprocessor configuration & execution */
    this->m_preprocessor->configure(new ConfigurationAnnotation("ANNOTATION"));
    this->m_preprocessor->execute();
    this->m_preprocessor->report();

    this->m_preprocessor->configure(new ConfigurationFiltering("FILTERING"));
    this->m_preprocessor->execute();
    this->m_preprocessor->report();

    this->m_preprocessor->configure(new ConfigurationMultithreading("MULTI-THREADING"));
    this->m_preprocessor->execute();
    this->m_preprocessor->report();

    this->m_preprocessor->configure(new ConfigurationModelPostprocessing("MODEL POSTPROCESSING"));
    this->m_preprocessor->execute();
    this->m_preprocessor->report();

    this->m_preprocessor->configure(new ConfigurationElaborate("ELABORATE"));
    this->m_preprocessor->execute();
    this->m_preprocessor->report();

    this->m_preprocessor->configure(new ConfigurationFIA("FIA"));
    this->m_preprocessor->execute();
    this->m_preprocessor->report();

    ConfigurationSCA* sca_preprocessor = new ConfigurationSCA("SCA");
    this->m_preprocessor->configure(sca_preprocessor);
    this->m_preprocessor->execute();
    this->m_preprocessor->report();



    /* 
     * =====================================================================================
     * [UNIFORMITY] Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */
    if (this->m_settings->getSideChannelAnalysisUniformity())
    {   
        /* Create new uniformity verification strategy */
        ConfigurationUniformity *uniformity = new ConfigurationUniformity("UNIFORMITY");

        /* Initialize uniformity strategy */
        uniformity->initialize(this->m_state);

        /* Perform uniformity analysis */
        this->m_analyzer->configure(uniformity);
        this->m_analyzer->execute();

        /* Finalize uniformity strategy */
        uniformity->finalize();

        /* Report uniformity results */
        this->m_analyzer->report();
    }

    /* 
     * =====================================================================================
     * [PROBING] Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */
    if (this->m_settings->getSideChannelAnalysisProbing())
    {       
        /* Create new probing verification strategy */
        ConfigurationProbing* probing = new ConfigurationProbing("PROBING");
        std::vector<ConfigurationProbing*> probing_threads(this->m_settings->getCores());

        /* Initialize probing strategy */
        probing->initialize(this->m_settings, this->m_state);

        /* Initialize multi-threading strategies */        
        for (int core = 0; core < this->m_settings->getCores(); core++)
        {
            probing_threads[core] = new ConfigurationProbing("PROBING-CORE" + std::to_string(core));
            probing_threads[core]->initialize(this->m_settings, this->m_state);
        }

        /* Early-abort variable */
        bool cancel = false;

        /* Perform multi-threading analysis */
        #pragma omp parallel num_threads(this->m_settings->getCores()) shared(m_analyzer, m_state, cancel)
        #pragma omp for schedule(dynamic)
        for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[0].size(); idx++)
        {
            #pragma omp cancellation point for

            /* Thread number */
            int thread_num = omp_get_thread_num();

            /* Set current probe combination */
            probing_threads[thread_num]->current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

            /* Analyze */
            probing_threads[thread_num]->execute(m_settings, m_state);

            /* Early abort */
            if (!probing_threads[thread_num]->independent() && !cancel && this->m_settings->getSideChannelInterrupt())
            {
                #pragma omp critical
                {
                    cancel = true;
                }
                #pragma omp cancel for
            }
        }
        
        /* Merge multi-threading results */
        for (int core = 0; core < this->m_settings->getCores(); core++){
            probing->insert(probing_threads[core]);
        }

        /* Finalize probing strategy */
        probing->finalize(this->m_settings, this->m_state);

        /* Report probing results */
        this->m_analyzer->configure(probing);
        this->m_analyzer->report();
    }

    /* 
     * =====================================================================================
     * [NON-INTERFERENCE] Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */
    if (this->m_settings->getSideChannelAnalysisNI())
    {
        /* Create new composability verification strategy */
        ConfigurationComposability *composability_ni = new ConfigurationComposability("PNI", NI);
        std::vector<ConfigurationComposability*> ni_threads(this->m_settings->getCores());

        /* Initialize NI strategy */
        composability_ni->initialize(this->m_settings, this->m_state);
     
        /* Initialize multi-threading strategies */        
        for (int core = 0; core < this->m_settings->getCores(); core++)
        {
            ni_threads[core] = new ConfigurationComposability("PNI-CORE" + std::to_string(core), NI);
            ni_threads[core]->initialize(this->m_settings, this->m_state);
        }

        /* Early-abort variable */
        bool cancel = false;

        #pragma omp parallel num_threads(this->m_settings->getCores()) shared(m_analyzer, m_state, cancel)
        #pragma omp for schedule(dynamic)
        for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[0].size(); idx++)
        {
            #pragma omp cancellation point for

            /* Thread number */
            int thread_num = omp_get_thread_num();

            /* Set current probe combination */
            ni_threads[thread_num]->current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

            /* Analyze */
            ni_threads[thread_num]->execute(m_settings, m_state);

            /* Early abort */
            if (!ni_threads[thread_num]->independent() && !cancel && this->m_settings->getSideChannelInterrupt())
            {
                #pragma omp critical
                {
                    cancel = true;
                }
                #pragma omp cancel for
            }
        }

        /* Merge multi-threading results */
        for (int core = 0; core < this->m_settings->getCores(); core++)
            composability_ni->insert(ni_threads[core]);
            
        /* Finalize NI strategy */
        composability_ni->finalize(this->m_settings, this->m_state);

        /* Report composability results */
        this->m_analyzer->configure(composability_ni);
        this->m_analyzer->report();
    }

    /* 
     * =====================================================================================
     * [STRONG NON-INTERFERENCE] Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */
    if (this->m_settings->getSideChannelAnalysisSNI())
    {
        /* Create new composability verification strategy */
        ConfigurationComposability *composability_sni = new ConfigurationComposability("PSNI", SNI);
        std::vector<ConfigurationComposability*> sni_threads(this->m_settings->getCores());

        /* Initialize SNI strategy */
        composability_sni->initialize(this->m_settings, this->m_state);
     
        /* Initialize multi-threading strategies */        
        for (int core = 0; core < this->m_settings->getCores(); core++)
        {
            sni_threads[core] = new ConfigurationComposability("PSNI-CORE" + std::to_string(core), SNI);
            sni_threads[core]->initialize(this->m_settings, this->m_state);
        }

        /* Early-abort variable */
        bool cancel = false;

        #pragma omp parallel num_threads(this->m_settings->getCores()) shared(m_analyzer, m_state, cancel)
        #pragma omp for schedule(dynamic)
        for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[0].size(); idx++)
        {
            #pragma omp cancellation point for

            /* Thread number */
            int thread_num = omp_get_thread_num();

            /* Set current probe combination */
            sni_threads[thread_num]->current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

            /* Analyze */
            sni_threads[thread_num]->execute(m_settings, m_state);

            /* Early abort */
            if (!sni_threads[thread_num]->independent() && !cancel && this->m_settings->getSideChannelInterrupt())
            {
                #pragma omp critical
                {
                    cancel = true;
                }
                #pragma omp cancel for
            }
        }

        /* Merge multi-threading results */
        for (int core = 0; core < this->m_settings->getCores(); core++)
            composability_sni->insert(sni_threads[core]);
            
        /* Finalize NI strategy */
        composability_sni->finalize(this->m_settings, this->m_state);

        /* Report composability results */
        this->m_analyzer->configure(composability_sni);
        this->m_analyzer->report();
    }


    /* 
     * =====================================================================================
     * [PROBE-ISOLATING NON-INTERFERENCE] Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */
    if (this->m_settings->getSideChannelAnalysisPINI())
    {
        /* Create new composability verification strategy */
        ConfigurationComposability *composability_pini = new ConfigurationComposability("PINI", PINI);
        std::vector<ConfigurationComposability*> pini_threads(this->m_settings->getCores());

        /* Initialize PINI strategy */
        composability_pini->initialize(this->m_settings, this->m_state);
     
        /* Initialize multi-threading strategies */        
        for (int core = 0; core < this->m_settings->getCores(); core++)
        {
            pini_threads[core] = new ConfigurationComposability("PINI-CORE" + std::to_string(core), PINI);
            pini_threads[core]->initialize(this->m_settings, this->m_state);
        }

        /* Early-abort variable */
        bool cancel = false;

        #pragma omp parallel num_threads(this->m_settings->getCores()) shared(m_analyzer, m_state, cancel)
        #pragma omp for schedule(dynamic)
        for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[0].size(); idx++)
        {
            #pragma omp cancellation point for

            /* Thread number */
            int thread_num = omp_get_thread_num();

            /* Set current probe combination */
            pini_threads[thread_num]->current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

            /* Analyze */
            pini_threads[thread_num]->execute(m_settings, m_state);

            /* Early abort */
            if (!pini_threads[thread_num]->independent() && !cancel && this->m_settings->getSideChannelInterrupt())
            {
                #pragma omp critical
                {
                    cancel = true;
                }
                #pragma omp cancel for
            }
        }

        /* Merge multi-threading results */
        for (int core = 0; core < this->m_settings->getCores(); core++)
            composability_pini->insert(pini_threads[core]);
            
        /* Finalize NI strategy */
        composability_pini->finalize(this->m_settings, this->m_state);

        /* Report composability results */
        this->m_analyzer->configure(composability_pini);
        this->m_analyzer->report();
    }


    /* 
     * =====================================================================================
     * [Combined Non-Interference] 
     * =====================================================================================
     */
    if (this->m_settings->getCombinedCNI())
    {
        /* Create new composability verification strategy */
        ConfigurationComposability *composability_cni = new ConfigurationComposability("CNI", CNI);
        std::vector<ConfigurationComposability*> cni_threads(this->m_settings->getCores());

        /* Initialize PINI strategy */
        composability_cni->initialize(this->m_settings, this->m_state);
     
        /* Initialize multi-threading strategies */        
        for (int core = 0; core < this->m_settings->getCores(); core++)
        {
            cni_threads[core] = new ConfigurationComposability("CNI-CORE" + std::to_string(core), CNI);
            cni_threads[core]->initialize(this->m_settings, this->m_state);
        }

        /* Early-abort variable */
        bool cancel = false;

        #pragma omp parallel num_threads(this->m_settings->getCores()) shared(m_analyzer, m_state, cancel)
        #pragma omp for schedule(dynamic)
        for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[0].size(); idx++)
        {
            #pragma omp cancellation point for

            /* Thread number */
            int thread_num = omp_get_thread_num();

            /* Set current probe combination */
            cni_threads[thread_num]->current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

            /* Analyze */
            cni_threads[thread_num]->execute(m_settings, m_state);

            /* Early abort */
            if (!cni_threads[thread_num]->independent() && !cancel && this->m_settings->getSideChannelInterrupt())
            {
                #pragma omp critical
                {
                    cancel = true;
                }
                #pragma omp cancel for
            }
        }

        /* Merge multi-threading results */
        for (int core = 0; core < this->m_settings->getCores(); core++)
            composability_cni->insert(cni_threads[core]);
            
        /* Finalize NI strategy */
        composability_cni->finalize(this->m_settings, this->m_state);

        /* Report composability results */
        this->m_analyzer->configure(composability_cni);
        this->m_analyzer->report();
    }



    /* 
     * =====================================================================================
     * [Combined Strong Non-Interference] 
     * =====================================================================================
     */
    if (this->m_settings->getCombinedCSNI())
    {
        /* Create new composability verification strategy */
        ConfigurationComposability *composability_csni = new ConfigurationComposability("CSNI", CSNI);
        std::vector<ConfigurationComposability*> csni_threads(this->m_settings->getCores());

        /* Initialize PINI strategy */
        composability_csni->initialize(this->m_settings, this->m_state);
     
        /* Initialize multi-threading strategies */        
        for (int core = 0; core < this->m_settings->getCores(); core++)
        {
            csni_threads[core] = new ConfigurationComposability("CSNI-CORE" + std::to_string(core), CSNI);
            csni_threads[core]->initialize(this->m_settings, this->m_state);
        }

        /* Early-abort variable */
        bool cancel = false;

        #pragma omp parallel num_threads(this->m_settings->getCores()) shared(m_analyzer, m_state, cancel)
        #pragma omp for schedule(dynamic)
        for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[0].size(); idx++)
        {
            #pragma omp cancellation point for

            /* Thread number */
            int thread_num = omp_get_thread_num();

            /* Set current probe combination */
            csni_threads[thread_num]->current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

            /* Analyze */
            csni_threads[thread_num]->execute(m_settings, m_state);

            /* Early abort */
            if (!csni_threads[thread_num]->independent() && !cancel && this->m_settings->getSideChannelInterrupt())
            {
                #pragma omp critical
                {
                    cancel = true;
                }
                #pragma omp cancel for
            }
        }

        /* Merge multi-threading results */
        for (int core = 0; core < this->m_settings->getCores(); core++)
            composability_csni->insert(csni_threads[core]);
            
        /* Finalize NI strategy */
        composability_csni->finalize(this->m_settings, this->m_state);

        /* Report composability results */
        this->m_analyzer->configure(composability_csni);
        this->m_analyzer->report();
    }

    /* 
     * =====================================================================================
     * [Independent Combined Strong Non-Interference] 
     * =====================================================================================
     */
    if (this->m_settings->getCombinedICSNI())
    {
        /* Create new composability verification strategy */
        ConfigurationComposability *composability_icsni = new ConfigurationComposability("ICSNI", ICSNI);
        std::vector<ConfigurationComposability*> icsni_threads(this->m_settings->getCores());

        /* Initialize PINI strategy */
        composability_icsni->initialize(this->m_settings, this->m_state);
     
        /* Initialize multi-threading strategies */        
        for (int core = 0; core < this->m_settings->getCores(); core++)
        {
            icsni_threads[core] = new ConfigurationComposability("ICSNI-CORE" + std::to_string(core), ICSNI);
            icsni_threads[core]->initialize(this->m_settings, this->m_state);
        }

        /* Early-abort variable */
        bool cancel = false;

        #pragma omp parallel num_threads(this->m_settings->getCores()) shared(m_analyzer, m_state, cancel)
        #pragma omp for schedule(dynamic)
        for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[0].size(); idx++)
        {
            #pragma omp cancellation point for

            /* Thread number */
            int thread_num = omp_get_thread_num();

            /* Set current probe combination */
            icsni_threads[thread_num]->current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

            /* Analyze */
            icsni_threads[thread_num]->execute(m_settings, m_state);

            /* Early abort */
            if (!icsni_threads[thread_num]->independent() && !cancel && this->m_settings->getSideChannelInterrupt())
            {
                #pragma omp critical
                {
                    cancel = true;
                }
                #pragma omp cancel for
            }
        }

        /* Merge multi-threading results */
        for (int core = 0; core < this->m_settings->getCores(); core++)
            composability_icsni->insert(icsni_threads[core]);
            
        /* Finalize NI strategy */
        composability_icsni->finalize(this->m_settings, this->m_state);

        /* Report composability results */
        this->m_analyzer->configure(composability_icsni);
        this->m_analyzer->report();
    }

    /* 
     * =====================================================================================
     * [COMBINED] Fault Injection VERification (FIVER) & Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */    
    if(this->m_settings->getFaultInjection() || this->m_settings->getCombined())
    {
        /* Create new fault verification strategy */ 
        Configuration *fault_strategy = nullptr;
        if (this->m_settings->getFaultAnalysisStrategy() == "detection")
        {
            fault_strategy = new ConfigurationFaultDetection("FAULT-DETECTION"); 
        } 
        else if (this->m_settings->getFaultAnalysisStrategy() == "correction")
        {
            fault_strategy = new ConfigurationFaultCorrection("FAULT-CORRECTION"); 
        }      
        else if (this->m_settings->getFaultAnalysisStrategy() == "sfa")
        {
            fault_strategy = new ConfigurationFaultSFA("FAULT-SFA"); 
        }   
        else if (this->m_settings->getFaultAnalysisStrategy() == "sifa")
        {
            fault_strategy = new ConfigurationFaultSIFA("FAULT-SIFA"); 
        }  

        /* New probing strategy */
        ConfigurationProbing* probing = new ConfigurationProbing("FIA+PROBING");
        std::vector<ConfigurationProbing*> probing_threads(this->m_settings->getCores());
        
        /* New NI strategy */
        ConfigurationComposability* composability_ni = new ConfigurationComposability("FIA+PNI", NI);
        std::vector<ConfigurationComposability*> ni_threads(this->m_settings->getCores());

        /* New SNI strategy */
        ConfigurationComposability* composability_sni = new ConfigurationComposability("FIA+PSNI", SNI);
        std::vector<ConfigurationComposability*> sni_threads(this->m_settings->getCores());

        /* New PINI strategy */
        ConfigurationComposability* composability_pini = new ConfigurationComposability("FIA+PINI", PINI);
        std::vector<ConfigurationComposability*> pini_threads(this->m_settings->getCores());

        /* New CNI strategy */
        ConfigurationComposability* composability_cni = new ConfigurationComposability("CNI", CNI);
        std::vector<ConfigurationComposability*> cni_threads(this->m_settings->getCores());

        /* New CSNI strategy */
        ConfigurationComposability* composability_csni = new ConfigurationComposability("CSNI", CSNI);
        std::vector<ConfigurationComposability*> csni_threads(this->m_settings->getCores());
        
        /* New ICSNI strategy */
        ConfigurationComposability* composability_icsni = new ConfigurationComposability("ICSNI", ICSNI);
        std::vector<ConfigurationComposability*> icsni_threads(this->m_settings->getCores());

        /* New multi-threading strategies */  
        for (int core = 0; core < this->m_settings->getCores(); core++)
        {
            probing_threads[core] = new ConfigurationProbing("FIA+PROBING-CORE" + std::to_string(core));
            ni_threads[core] = new ConfigurationComposability("FIA+NI-CORE" + std::to_string(core), NI);
            sni_threads[core] = new ConfigurationComposability("FIA+SNI-CORE" + std::to_string(core), SNI);
            pini_threads[core] = new ConfigurationComposability("FIA+PINI-CORE" + std::to_string(core), PINI);

            cni_threads[core] = new ConfigurationComposability("CNI-CORE" + std::to_string(core), CNI);
            csni_threads[core] = new ConfigurationComposability("CSNI-CORE" + std::to_string(core), CSNI);
            icsni_threads[core] = new ConfigurationComposability("ICSNI-CORE" + std::to_string(core), ICSNI);
        }       

        /* Perform analysis */
        for(int n = 1; n <= this->m_settings->getNumberOfFaults(); ++n){
            this->m_state->m_current_number_of_injected_faults = n;

            /* Reset strategies */
            probing->initialize(this->m_settings, this->m_state);
            composability_ni->initialize(this->m_settings, this->m_state);
            composability_sni->initialize(this->m_settings, this->m_state);
            composability_pini->initialize(this->m_settings, this->m_state);

            composability_cni->initialize(this->m_settings, this->m_state);
            composability_csni->initialize(this->m_settings, this->m_state);
            composability_icsni->initialize(this->m_settings, this->m_state);

            /* Reset multi-threading strategies */  
            for (int core = 0; core < this->m_settings->getCores(); core++)
            {
                probing_threads[core]->initialize(this->m_settings, this->m_state);
                ni_threads[core]->initialize(this->m_settings, this->m_state);
                sni_threads[core]->initialize(this->m_settings, this->m_state);
                pini_threads[core]->initialize(this->m_settings, this->m_state);

                cni_threads[core]->initialize(this->m_settings, this->m_state);
                csni_threads[core]->initialize(this->m_settings, this->m_state);
                icsni_threads[core]->initialize(this->m_settings, this->m_state);
            }        

            /* Early-abort variable */
            bool cancel_fia = false;

            /* Coordinate the number of faults that are injected simultaneous */ 
            this->m_logger->header("EVALUATION (n="+ std::to_string(n) + ")");

            do {
                // get permuted fault locations
                this->m_injector->get_next_fault_locations(n);
                if(this->m_settings->getVerbose() > 0) 
                    this->m_logger->log(this->m_injector->name(), "Got a new batch of permuted fault locations with " + std::to_string(m_injector->permuted_fault_locations().size()) + " entries. I am going to analyze it...");
                /* Simulation progress counter */
                unsigned int simulation_counter = 0;

                // Fault injection 
                #pragma omp parallel num_threads(this->m_settings->getCores()) shared(cancel_fia)
                #pragma omp for schedule(dynamic)
                for (auto location : this->m_injector->permuted_fault_locations()) 
                {                    
                    #pragma omp cancellation point for

                    // get thread number
                    int thread_num = omp_get_thread_num();

                    
                    std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> target_fault_collection;
                    target_fault_collection = this->m_injector->prepeare_fault_mappings_for_injection(location);
                    for(unsigned int idx_fault_pair=0; idx_fault_pair<target_fault_collection.size(); ++idx_fault_pair){

                        // Inject faults
                        this->m_injector->inject(target_fault_collection[idx_fault_pair].first, target_fault_collection[idx_fault_pair].second, thread_num);

                        // Analyze faults
                        this->m_analyzer->configure(fault_strategy);
                        this->m_analyzer->execute();

                        // Update probe combinations
                        if(m_settings->getSideChannelAnalysisProbing() || m_settings->getSideChannelAnalysisNI() || m_settings->getSideChannelAnalysisSNI() || m_settings->getSideChannelAnalysisPINI() || m_settings->getCombinedICSNI()){
                            if(idx_fault_pair == 0){
                                std::vector<const verica::Wire*> modified;
                                for (auto w : location) 
                                {
                                    modified.push_back(w);
                                    for (auto p : w->propagation_path())
                                    {
                                        modified.push_back(p);
                                    }
                                }

                                sca_preprocessor->update(this->m_state, this->m_settings, modified, 0, thread_num);
                            }
                        }

                        // Analyze probing security
                        if (this->m_settings->getSideChannelAnalysisProbing()) 
                        {
                            /* Early-abort variable */
                            bool cancel_sca = false;

                            /**! @todo use preprocessor to generate reduce set of probe combinations (only including faulted locations)  **/
                            for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[thread_num].size() && !cancel_sca; idx++)
                            {                       
                                /* Set current probe combination */
                                probing_threads[thread_num]->current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

                                /* Assign probing strategy for current thread */
                                probing_threads[thread_num]->execute(this->m_settings, this->m_state);

                                /* Early abort */
                                cancel_sca = (!probing_threads[thread_num]->independent() && this->m_settings->getSideChannelInterrupt());
                            }
                        }
                        
                        // Analyze NI security
                        if (this->m_settings->getSideChannelAnalysisNI()) 
                        {
                            /* Early-abort variable */
                            bool cancel_sca = false;

                            /**! @todo use preprocessor to generate reduce set of probe combinations (only including faulted locations)  **/
                            for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[thread_num].size() && !cancel_sca; idx++)
                            {                       
                                /* Set current probe combination */
                                ni_threads[thread_num]->current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

                                /* Assign NI strategy for current thread */
                                ni_threads[thread_num]->execute(this->m_settings, this->m_state);

                                /* Early abort */
                                cancel_sca = (!ni_threads[thread_num]->independent() && this->m_settings->getSideChannelInterrupt());
                            }
                        }
                        
                        // Analyze SNI security
                        if (this->m_settings->getSideChannelAnalysisSNI()) 
                        {
                            /* Early-abort variable */
                            bool cancel_sca = false;

                            /**! @todo use preprocessor to generate reduce set of probe combinations (only including faulted locations)  **/
                            for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[thread_num].size() && !cancel_sca; idx++)
                            {                       
                                /* Set current probe combination */
                                sni_threads[thread_num]->current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

                                /* Assign SNI strategy for current thread */
                                sni_threads[thread_num]->execute(this->m_settings, this->m_state);

                                /* Early abort */
                                cancel_sca = (!sni_threads[thread_num]->independent() && this->m_settings->getSideChannelInterrupt());
                            }
                        }

                        // Analyze PINI security
                        if (this->m_settings->getSideChannelAnalysisPINI()) 
                        {
                            /* Early-abort variable */
                            bool cancel_sca = false;

                            /**! @todo use preprocessor to generate reduce set of probe combinations (only including faulted locations)  **/
                            for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[thread_num].size() && !cancel_sca; idx++)
                            {                       
                                /* Set current probe combination */
                                pini_threads[thread_num]->current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

                                /* Assign PINI strategy for current thread */
                                pini_threads[thread_num]->execute(this->m_settings, this->m_state);

                                /* Early abort */
                                cancel_sca = (!pini_threads[thread_num]->independent() && this->m_settings->getSideChannelInterrupt()); 
                            }
                        }

                        if(this->m_settings->getCombinedCNI() || this->m_settings->getCombinedCSNI()){
                            std::vector<const verica::Pin*> input_pins = m_state->m_netlist_model->module_under_test()->input_pins();
                            for(auto w : target_fault_collection[idx_fault_pair].first) {
                                if(std::find(input_pins.begin(), input_pins.end(), w->source_pin()) != input_pins.end() && w->source_pin()->port_type() != verica::Refresh) m_state->m_current_number_of_input_faults[thread_num]++;
                            }
                        }

                        //std::cout << "INput faults: " << m_state->m_current_number_of_input_faults[thread_num] << std::endl;

                        // Update probe combinations
                        if(m_settings->getCombinedCNI() || m_settings->getCombinedCSNI()){
                            if(idx_fault_pair == 0){
                                std::vector<const verica::Wire*> modified;
                                for (auto w : location) 
                                {
                                    modified.push_back(w);
                                    for (auto p : w->propagation_path())
                                    {
                                        modified.push_back(p);
                                    }
                                }

                                sca_preprocessor->update(this->m_state, this->m_settings, modified, m_state->m_current_number_of_injected_faults, thread_num);
                            }
                        }

                        // Analyze CNI security
                        if (this->m_settings->getCombinedCNI()) 
                        {
                            /* Early-abort variable */
                            bool cancel_sca = false;

                            for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[thread_num].size() && !cancel_sca; idx++)
                            {                       
                                /* Set current probe combination */
                                cni_threads[thread_num]->current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

                                /* Assign PINI strategy for current thread */
                                cni_threads[thread_num]->execute(this->m_settings, this->m_state);

                                /* Early abort */
                                cancel_sca = (!cni_threads[thread_num]->independent() && this->m_settings->getSideChannelInterrupt());
                            }
                        }

                        // Analyze CSNI security
                        if (this->m_settings->getCombinedCSNI()) 
                        {
                            /* Early-abort variable */
                            bool cancel_sca = false;

                            for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[thread_num].size() && !cancel_sca; idx++)
                            {                       
                                /* Set current probe combination */
                                csni_threads[thread_num]->current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

                                /* Assign PINI strategy for current thread */
                                csni_threads[thread_num]->execute(this->m_settings, this->m_state);

                                /* Early abort */
                                cancel_sca = (!csni_threads[thread_num]->independent() && this->m_settings->getSideChannelInterrupt());
                            }
                        }

                        // Analyze ICSNI security
                        if (this->m_settings->getCombinedICSNI()) 
                        {
                            /* Early-abort variable */
                            bool cancel_sca = false;

                            for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[thread_num].size() && !cancel_sca; idx++)
                            {                       
                                /* Set current probe combination */
                                icsni_threads[thread_num]->current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

                                /* Assign PINI strategy for current thread */
                                icsni_threads[thread_num]->execute(this->m_settings, this->m_state);

                                /* Early abort */
                                cancel_sca = (!icsni_threads[thread_num]->independent() && this->m_settings->getSideChannelInterrupt());
                            }
                        }

                        if(this->m_settings->getCombinedCNI() || this->m_settings->getCombinedCSNI()){
                            /* Reset input fault counter */
                            m_state->m_current_number_of_input_faults[thread_num] = 0;
                        }
                                                    

                        // Interrupt computation if effective fault was detected
                        if(this->m_settings->getFaultInterrupt()) this->m_injector->interrupt_fault_injection(target_fault_collection, thread_num, cancel_fia);

                        if (this->m_settings->getFaultInterrupt() && cancel_fia) {
                            #pragma omp critical 
                            {
                                cancel_fia = true;
                            }
                            #pragma omp cancel for
                        }
                    }

                    // Restore BDDs
                    this->m_injector->restore_faulty_models(location, thread_num);

                    // Progress
                    #pragma omp atomic
                    simulation_counter++; 
                    this->m_logger->progress(simulation_counter, this->m_injector->permuted_fault_locations().size());
                }

                std::cout << std::endl;
                
            } while(!cancel_fia && !this->m_injector->permutation_done());


            /* Report fault verification results */
            if (this->m_settings->getFaultInjection()){
                this->m_analyzer->configure(fault_strategy);
                this->m_analyzer->report();
            }
            
            /* Report probing results */
            if (this->m_settings->getSideChannelAnalysisProbing()) {
                for (int core = 0; core < this->m_settings->getCores(); core++){
                    probing->insert(probing_threads[core]);
                }
                probing->finalize(this->m_settings, this->m_state);
                this->m_analyzer->configure(probing);
                this->m_analyzer->report();
            }
                
            /* Report NI results */
            if (this->m_settings->getSideChannelAnalysisNI()) {
                for (int core = 0; core < this->m_settings->getCores(); core++)
                    composability_ni->insert(ni_threads[core]);
                composability_ni->finalize(this->m_settings, this->m_state);
                this->m_analyzer->configure(composability_ni);
                this->m_analyzer->report();
            }

            /* Report SNI results */
            if (this->m_settings->getSideChannelAnalysisSNI()) {
                for (int core = 0; core < this->m_settings->getCores(); core++)
                    composability_sni->insert(sni_threads[core]);
                composability_sni->finalize(this->m_settings, this->m_state);
                this->m_analyzer->configure(composability_sni);
                this->m_analyzer->report();
            }

            /* Report PINI results */
            if (this->m_settings->getSideChannelAnalysisPINI()) {
                for (int core = 0; core < this->m_settings->getCores(); core++)
                    composability_pini->insert(pini_threads[core]);
                composability_pini->finalize(this->m_settings, this->m_state);
                this->m_analyzer->configure(composability_pini);
                this->m_analyzer->report();
            }

            /* Report CNI results */
            if (this->m_settings->getCombinedCNI()) {
                for (int core = 0; core < this->m_settings->getCores(); core++)
                    composability_cni->insert(cni_threads[core]);
                composability_cni->finalize(this->m_settings, this->m_state);
                this->m_analyzer->configure(composability_cni);
                this->m_analyzer->report();
            }

            /* Report CSNI results */
            if (this->m_settings->getCombinedCSNI()) {
                for (int core = 0; core < this->m_settings->getCores(); core++)
                    composability_csni->insert(csni_threads[core]);
                composability_csni->finalize(this->m_settings, this->m_state);
                this->m_analyzer->configure(composability_csni);
                this->m_analyzer->report();
            }

            /* Report CSNI results */
            if (this->m_settings->getCombinedICSNI()) {
                for (int core = 0; core < this->m_settings->getCores(); core++){
                    composability_icsni->insert(icsni_threads[core]);
                    // composability_icsni
                }
                composability_icsni->finalize(this->m_settings, this->m_state);
                this->m_analyzer->configure(composability_icsni);
                this->m_analyzer->report();
            }

            /* Report details for combined analysis */
            if((this->m_settings->getFaultInjection() || this->m_settings->getCombined()) && this->m_settings->getVerbose() > 2){
                if (this->m_settings->getSideChannelAnalysisProbing()) {
                    std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> combined_leaking_fault_injections;
                    std::vector<std::vector<const verica::Wire*>> failing_probes;
                    for (int core = 0; core < this->m_settings->getCores(); core++){
                        combined_leaking_fault_injections.insert(combined_leaking_fault_injections.end(), probing_threads[core]->combined_leaking_faults().begin(), probing_threads[core]->combined_leaking_faults().end());
                        failing_probes.insert(failing_probes.end(), probing_threads[core]->combined_failing_probes().begin(), probing_threads[core]->combined_failing_probes().end());
                    }

                    this->m_logger->header("COMBINED-ANALYZER (FAULT+PROBING)");
                    // for(auto leaking_fault : combined_leaking_fault_injections){
                    for(unsigned int idx=0; idx<combined_leaking_fault_injections.size(); ++idx){
                        /* report faulted nodes */
                        this->m_logger->log("ANALYZER", "COMBINED+PROB", "Faulted node(s): " + this->m_state->m_netlist_model->wire_vector_to_json_string(combined_leaking_fault_injections[idx].first));
                        
                        /* report fault mapping */ 
                        this->m_logger->log("ANALYZER", "COMBINED+PROB", "Fault mapping: " + this->m_state->m_netlist_model->fault_state_to_json_string(combined_leaking_fault_injections[idx], this->m_state->m_cell_library)); 

                        /* report failing probes */
                        this->m_logger->log("ANALYZER", "COMBINED+PROB", "Failing probe(s): " + this->m_state->m_netlist_model->wire_vector_to_json_string(failing_probes[idx]));
                        this->m_logger->log("ANALYZER", "COMBINED+PROB", "");
                    }
                    this->m_logger->footer();
                }

                if (this->m_settings->getSideChannelAnalysisNI()) {
                    std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> combined_leaking_fault_injections;
                    std::vector<std::vector<const verica::Wire*>> failing_probes;
                    for (int core = 0; core < this->m_settings->getCores(); core++){
                        combined_leaking_fault_injections.insert(combined_leaking_fault_injections.end(), ni_threads[core]->combined_leaking_faults().begin(), ni_threads[core]->combined_leaking_faults().end());
                        failing_probes.insert(failing_probes.end(), ni_threads[core]->combined_failing_probes().begin(), ni_threads[core]->combined_failing_probes().end());
                    }

                    this->m_logger->header("COMBINED-ANALYZER (FAULT+NI)");
                    // for(auto leaking_fault : combined_leaking_fault_injections){
                    for(unsigned int idx=0; idx<combined_leaking_fault_injections.size(); ++idx){
                        /* report faulted nodes */
                        this->m_logger->log("ANALYZER", "COMBINED+NI", "Faulted node(s): " + this->m_state->m_netlist_model->wire_vector_to_json_string(combined_leaking_fault_injections[idx].first));
                        
                        /* report fault mapping */ 
                        this->m_logger->log("ANALYZER", "COMBINED+NI", "Fault mapping: " + this->m_state->m_netlist_model->fault_state_to_json_string(combined_leaking_fault_injections[idx], this->m_state->m_cell_library)); 

                        /* report failing probes */
                        this->m_logger->log("ANALYZER", "COMBINED+NI", "Failing probe(s): " + this->m_state->m_netlist_model->wire_vector_to_json_string(failing_probes[idx]));
                        this->m_logger->log("ANALYZER", "COMBINED+NI", "");
                    }
                    this->m_logger->footer();
                }

                if (this->m_settings->getSideChannelAnalysisSNI()) {
                    std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> combined_leaking_fault_injections;
                    std::vector<std::vector<const verica::Wire*>> failing_probes;
                    for (int core = 0; core < this->m_settings->getCores(); core++){
                        combined_leaking_fault_injections.insert(combined_leaking_fault_injections.end(), sni_threads[core]->combined_leaking_faults().begin(), sni_threads[core]->combined_leaking_faults().end());
                        failing_probes.insert(failing_probes.end(), sni_threads[core]->combined_failing_probes().begin(), sni_threads[core]->combined_failing_probes().end());
                    }

                    this->m_logger->header("COMBINED-ANALYZER (FAULT+SNI)");
                    // for(auto leaking_fault : combined_leaking_fault_injections){
                    for(unsigned int idx=0; idx<combined_leaking_fault_injections.size(); ++idx){
                        /* report faulted nodes */
                        this->m_logger->log("ANALYZER", "COMBINED+SNI", "Faulted node(s): " + this->m_state->m_netlist_model->wire_vector_to_json_string(combined_leaking_fault_injections[idx].first));
                        
                        /* report fault mapping */ 
                        this->m_logger->log("ANALYZER", "COMBINED+SNI", "Fault mapping: " + this->m_state->m_netlist_model->fault_state_to_json_string(combined_leaking_fault_injections[idx], this->m_state->m_cell_library)); 

                        /* report failing probes */
                        this->m_logger->log("ANALYZER", "COMBINED+SNI", "Failing probe(s): " + this->m_state->m_netlist_model->wire_vector_to_json_string(failing_probes[idx]));
                        this->m_logger->log("ANALYZER", "COMBINED+SNI", "");
                    }
                    this->m_logger->footer();
                }

                if (this->m_settings->getSideChannelAnalysisPINI()) {
                    std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> combined_leaking_fault_injections;
                    std::vector<std::vector<const verica::Wire*>> failing_probes;
                    for (int core = 0; core < this->m_settings->getCores(); core++){
                        combined_leaking_fault_injections.insert(combined_leaking_fault_injections.end(), pini_threads[core]->combined_leaking_faults().begin(), pini_threads[core]->combined_leaking_faults().end());
                        failing_probes.insert(failing_probes.end(), pini_threads[core]->combined_failing_probes().begin(), pini_threads[core]->combined_failing_probes().end());
                    }

                    this->m_logger->header("COMBINED-ANALYZER (FAULT+PINI)");
                    // for(auto leaking_fault : combined_leaking_fault_injections){
                    for(unsigned int idx=0; idx<combined_leaking_fault_injections.size(); ++idx){
                        /* report faulted nodes */
                        this->m_logger->log("ANALYZER", "COMBINED+PINI", "Faulted node(s): " + this->m_state->m_netlist_model->wire_vector_to_json_string(combined_leaking_fault_injections[idx].first));
                        
                        /* report fault mapping */ 
                        this->m_logger->log("ANALYZER", "COMBINED+PINI", "Fault mapping: " + this->m_state->m_netlist_model->fault_state_to_json_string(combined_leaking_fault_injections[idx], this->m_state->m_cell_library)); 

                        /* report failing probes */
                        this->m_logger->log("ANALYZER", "COMBINED+PINI", "Failing probe(s): " + this->m_state->m_netlist_model->wire_vector_to_json_string(failing_probes[idx]));
                        this->m_logger->log("ANALYZER", "COMBINED+PINI", "");
                    }
                    this->m_logger->footer();
                }                
            }

            if(cancel_fia) goto exit;
        }
    }

exit:

    // Output dot graph
    if(this->m_settings->getVisualization()){
        ConfigurationGraphvizDot *visualizer = new ConfigurationGraphvizDot("GRAPHVIZ (DOT)");
        this->m_visualizer->configure(visualizer);

        this->m_visualizer->execute();
        this->m_visualizer->report(); 
    }

    // Finalize
    this->m_logger->header();
    if (this->m_settings->getFaultInjection() && this->m_settings->getSideChannel())
        this->m_logger->log("VERICA", "FIA & SCA", "DONE!");
    else if (this->m_settings->getFaultInjection())
        this->m_logger->log("VERICA", "FIA", "DONE!");
    else if (this->m_settings->getSideChannel())
        this->m_logger->log("VERICA", "SCA", "DONE!");
    else if (this->m_settings->getCombined())
        this->m_logger->log("VERICA", "COMBINED", "DONE!");        
    else
        this->m_logger->log("VERICA", "DONE!");
}
