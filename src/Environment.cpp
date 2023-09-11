/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Jan Richter-Brockmann (jan.richter-brockmann@rub.de) 
 *           Pascal Sasdrich (pascal.sasdrich@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2022/484
 *           https://eprint.iacr.org/2022/1131
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2022, Jan Richter-Brockmann and Pascal Sasdrich
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
#include <memory>

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

Environment::Environment(int argc, char * argv[]) :
    m_logger{new Logger(100)},
    m_state{new State()},
    m_settings{new Settings(argc, argv)}
{
    /* Initialize execution environment */
    this->initialize();

    /* Execute evaluation */
    //this->execute();  // This line causes errors in the specific Tests using TestEnvironment.
                        // Since it is executed in Ctor it executes all steps and writes all computation to our State.
                        // Therefore, everything is already set and the Execution of TestEnvironment with execute,
                        // faces a not empty structure.
                        // But the algorithms are designed for emmpty structurs --> failling!
                        // move in main();
}

/*
 * =========================================================================================
 * Destructor
 * =========================================================================================
 */

Environment::~Environment()
{
    delete this->m_visualizer;
    delete this->m_analyzer;
    delete this->m_injector;
    delete this->m_preprocessor;
    delete this->m_parser;
    delete this->m_settings;
    delete this->m_state;
    delete this->m_logger;
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
    ConfigurationLibrary configLibrary{"CELLLIB"};
    this->m_parser->configure(&configLibrary);                                          
    this->m_parser->execute();
    this->m_parser->report();

    /* Design parser configuration & execution */
    if (boost::algorithm::ends_with(this->m_settings->getDesignFilePath(), ".fir")){
        ConfigurationFirrtl configFirrtl{"FIRRTL"};
        this->m_parser->configure(&configFirrtl);    
        this->m_parser->execute();
        this->m_parser->report(); 
    }               
    else if (boost::algorithm::ends_with(this->m_settings->getDesignFilePath(), ".v")){
        ConfigurationVerilog configVerilog{"VERILOG"}; 
        this->m_parser->configure(&configVerilog);
        this->m_parser->execute();
        this->m_parser->report();                                     
    }
    else if (boost::algorithm::ends_with(this->m_settings->getDesignFilePath(), ".nl")){
        ConfigurationNetlist configNetlist{"NETLIST"};
        this->m_parser->configure(&configNetlist);
        this->m_parser->execute();
        this->m_parser->report(); 
    }

    NetlistComposer nc{"COMPOSER"};
    nc.execute(this->m_settings, this->m_state);

    /* Preprocessor configuration & execution */
    ConfigurationAnnotation configAnnotation{"ANNOTATION"};
    this->m_preprocessor->configure(&configAnnotation);     
    this->m_preprocessor->execute();
    this->m_preprocessor->report();

    ConfigurationFiltering configFiltering{"FILTERING"};
    this->m_preprocessor->configure(&configFiltering);
    this->m_preprocessor->execute();
    this->m_preprocessor->report();

    ConfigurationMultithreading configMultithreading{"MULTI-THREADING"};
    this->m_preprocessor->configure(&configMultithreading);
    this->m_preprocessor->execute();
    this->m_preprocessor->report();

    ConfigurationModelPostprocessing configModelPostprocessing{"MODEL POSTPROCESSING"};
    this->m_preprocessor->configure(&configModelPostprocessing);
    this->m_preprocessor->execute();
    this->m_preprocessor->report();

    ConfigurationElaborate configElaborate{"ELABORATE"};
    this->m_preprocessor->configure(&configElaborate);
    this->m_preprocessor->execute();
    this->m_preprocessor->report();

    ConfigurationFIA configFIA{"FIA"};
    this->m_preprocessor->configure(&configFIA);
    this->m_preprocessor->execute();
    this->m_preprocessor->report();

    ConfigurationSCA sca_preprocessor{"SCA"};
    this->m_preprocessor->configure(&sca_preprocessor);
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
        ConfigurationUniformity uniformity{"UNIFORMITY"};

        /* Initialize uniformity strategy */
        uniformity.initialize(this->m_settings, this->m_state);

        /* Perform uniformity analysis */
        this->m_analyzer->configure(&uniformity);
        this->m_analyzer->execute();

        /* Report uniformity results */
        this->m_analyzer->report();
    }


    /*
     * =====================================================================================
     * [PROBING] Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */
    if (this->m_settings->getSideChannelAnalysisProbing()){
        /* Create new probing verification strategy */
        ConfigurationProbing probing{"PROBING", Composability::NONE};
        analyze_sca(probing, "PROBING");
    }


    /*
     * =====================================================================================
     * [NON-INTERFERENCE] Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */
    if (this->m_settings->getSideChannelAnalysisNI()){
        /* Create new composability verification strategy */
        ConfigurationComposability composability_ni{"PNI", Composability::NI};
        analyze_sca(composability_ni, "PNI", Composability::NI);
    }


    /*
     * =====================================================================================
     * [STRONG NON-INTERFERENCE] Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */
    if (this->m_settings->getSideChannelAnalysisSNI()){
        /* Create new composability verification strategy */
        ConfigurationComposability composability_sni{"PSNI", Composability::SNI};
        analyze_sca(composability_sni, "PSNI", Composability::SNI);
    }


    /*
     * =====================================================================================
     * [PROBE-ISOLATING NON-INTERFERENCE] Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */
    if (this->m_settings->getSideChannelAnalysisPINI()){
        /* Create new composability verification strategy */
        ConfigurationComposability composability_pini{"PINI", Composability::PINI};
        analyze_sca(composability_pini, "PINI", Composability::PINI);
    }


    /*
     * =====================================================================================
     * [Combined Non-Interference]
     * =====================================================================================
     */
    if (this->m_settings->getCombinedCNI()){
        /* Create new composability verification strategy */
        ConfigurationComposability composability_cni{"CNI", Composability::CNI};
        analyze_sca(composability_cni, "CNI", Composability::CNI);
    }


    /*
     * =====================================================================================
     * [Combined Strong Non-Interference]
     * =====================================================================================
     */
    if (this->m_settings->getCombinedCSNI()){
        /* Create new composability verification strategy */
        ConfigurationComposability composability_csni{"CSNI", Composability::CSNI};
        analyze_sca(composability_csni, "CSNI", Composability::CSNI);
    }


    /*
     * =====================================================================================
     * [Independent Combined Strong Non-Interference]
     * =====================================================================================
     */
    if (this->m_settings->getCombinedICSNI()){
        /* Create new composability verification strategy */
        ConfigurationComposability composability_icsni{"ICSNI", Composability::ICSNI};
        analyze_sca(composability_icsni, "ICSNI", Composability::ICSNI);
    }



    /* 
     * =====================================================================================
     * [COMBINED-ISOLATING NON-INTERFERENCE] 
     * =====================================================================================
     */
    if (this->m_settings->getCombinedCINI()){
        /* Create new composability verification strategy */
        ConfigurationComposability composability_cini{"CINI", Composability::CINI};
        analyze_sca(composability_cini, "CINI", Composability::CINI);
    }


    /* 
     * =====================================================================================
     * [INDEPENDENT COMBINED-ISOLATING NON-INTERFERENCE] 
     * =====================================================================================
     */
    if (this->m_settings->getCombinedICINI()){
        /* Create new composability verification strategy */
        ConfigurationComposability composability_icini{"ICINI", Composability::ICINI};
        analyze_sca(composability_icini, "ICINI", Composability::ICINI);
    }


    /* 
     * =====================================================================================
     * [COMBINED] Fault Injection VERification (FIVER) & Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */    
    if(this->m_settings->getFaultInjection() || this->m_settings->getCombined()){
        /* Create new fault verification strategy */
        std::unique_ptr<Configuration> fault_strategy;

        if (this->m_settings->getFaultAnalysisStrategy() == "detection"){   
            fault_strategy = std::make_unique<ConfigurationFaultDetection>("FAULT-DETECTION");
            fault_strategy->initialize(m_settings, m_state);
        }
        else if (this->m_settings->getFaultAnalysisStrategy() == "correction"){
            fault_strategy = std::make_unique<ConfigurationFaultCorrection>("FAULT-CORRECTION");
            fault_strategy->initialize(m_settings, m_state);
        }
        else if (this->m_settings->getFaultAnalysisStrategy() == "sfa"){
            fault_strategy = std::make_unique<ConfigurationFaultSFA>("FAULT-SFA");
        }
        else if (this->m_settings->getFaultAnalysisStrategy() == "sifa"){
            fault_strategy = std::make_unique<ConfigurationFaultSIFA>("FAULT-SIFA");
        }

        /* New probing strategy */
        ConfigurationProbing probing{"FIA+PROBING", Composability::NONE};
        std::vector<ConfigurationProbing> probing_threads{};

        /* New NI strategy */
        ConfigurationComposability composability_ni{"FIA+PNI", Composability::NI};
        std::vector<ConfigurationComposability> ni_threads{};

        /* New SNI strategy */
        ConfigurationComposability composability_sni{"FIA+PSNI", Composability::SNI};
        std::vector<ConfigurationComposability> sni_threads{};

        /* New PINI strategy */
        ConfigurationComposability composability_pini{"FIA+PINI", Composability::PINI};
        std::vector<ConfigurationComposability> pini_threads{};

        /* New CNI strategy */
        ConfigurationComposability composability_cni{"CNI", Composability::CNI};
        std::vector<ConfigurationComposability> cni_threads{};

        /* New CSNI strategy */
        ConfigurationComposability composability_csni{"CSNI", Composability::CSNI};
        std::vector<ConfigurationComposability> csni_threads{};

        /* New ICSNI strategy */
        ConfigurationComposability composability_icsni{"ICSNI", Composability::ICSNI};
        std::vector<ConfigurationComposability> icsni_threads{};

        /* New CINI strategy */
        ConfigurationComposability composability_cini{"CINI", Composability::CINI};
        std::vector<ConfigurationComposability> cini_threads{};

        /* New ICINI strategy */
        ConfigurationComposability composability_icini{"ICINI", Composability::ICINI};
        std::vector<ConfigurationComposability> icini_threads{};

        /* New multi-threading strategies */  
        for (int core = 0; core < this->m_settings->getCores(); core++){
            ConfigurationProbing configProbing{"FIA+PROBING-CORE" + std::to_string(core), Composability::NONE};
            probing_threads.push_back(configProbing);

            ConfigurationComposability configComposabilityNI{"FIA+NI-CORE" + std::to_string(core), Composability::NI};
            ni_threads.push_back(configComposabilityNI);

            ConfigurationComposability configComposabilitySNI{"FIA+SNI-CORE" + std::to_string(core), Composability::SNI};
            sni_threads.push_back(configComposabilitySNI);

            ConfigurationComposability configComposabilityPINI{"FIA+PINI-CORE" + std::to_string(core), Composability::PINI};
            pini_threads.push_back(configComposabilityPINI);


            ConfigurationComposability configComposabilityCNI{"CNI-CORE" + std::to_string(core), Composability::CNI};
            cni_threads.push_back(configComposabilityCNI);

            ConfigurationComposability configComposabilitySCNI{"CSNI-CORE" + std::to_string(core), Composability::CSNI}; 
            csni_threads.push_back(configComposabilitySCNI);

            ConfigurationComposability configComposabilityISCNI{"ICSNI-CORE" + std::to_string(core), Composability::ICSNI};
            icsni_threads.push_back(configComposabilityISCNI);


            ConfigurationComposability configComposabilityCINI{"CINI-CORE" + std::to_string(core), Composability::CINI};
            cini_threads.push_back(configComposabilityCINI);

            ConfigurationComposability configComposabilityICINI{"ICINI-CORE" + std::to_string(core), Composability::ICINI}; 
            icini_threads.push_back(configComposabilityICINI);
        }       

        /* Perform analysis */
        for(int n = 1; n <= this->m_settings->getNumberOfFaults(); ++n){
            this->m_state->m_current_number_of_injected_faults = n;

            /* Reset strategies */
            probing.initialize(this->m_settings, this->m_state);
            composability_ni.initialize(this->m_settings, this->m_state);
            composability_sni.initialize(this->m_settings, this->m_state);
            composability_pini.initialize(this->m_settings, this->m_state);

            composability_cni.initialize(this->m_settings, this->m_state);
            composability_csni.initialize(this->m_settings, this->m_state);
            composability_icsni.initialize(this->m_settings, this->m_state);

            composability_cini.initialize(this->m_settings, this->m_state);
            composability_icini.initialize(this->m_settings, this->m_state);

            /* Reset multi-threading strategies */  
            for (int core = 0; core < this->m_settings->getCores(); core++) {
                probing_threads[core].initialize(this->m_settings, this->m_state);
                ni_threads[core].initialize(this->m_settings, this->m_state);
                sni_threads[core].initialize(this->m_settings, this->m_state);
                pini_threads[core].initialize(this->m_settings, this->m_state);

                cni_threads[core].initialize(this->m_settings, this->m_state);
                csni_threads[core].initialize(this->m_settings, this->m_state);
                icsni_threads[core].initialize(this->m_settings, this->m_state);

                cini_threads[core].initialize(this->m_settings, this->m_state);
                icini_threads[core].initialize(this->m_settings, this->m_state);
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
                        this->m_analyzer->configure(fault_strategy.get());
                        this->m_analyzer->execute();

                        std::vector<const verica::Wire*> modified;
                        if(idx_fault_pair == 0){
                            for (auto w : location) {
                                modified.push_back(w);
                                for (auto p : w->propagation_path()) {
                                    modified.push_back(p);
                                }
                            }
                        }

                        // Update probe combinations
                        if(m_settings->getSideChannelAnalysisProbing() || m_settings->getSideChannelAnalysisNI() || m_settings->getSideChannelAnalysisSNI() || m_settings->getCombinedICSNI()){
                            sca_preprocessor.update(this->m_state, this->m_settings, modified, 0, false, thread_num);
                        }

                        // Analyze probing security
                        if (this->m_settings->getSideChannelAnalysisProbing() && this->m_settings->getFaultInjection()){
                            analyze_combined(probing_threads[thread_num], thread_num);
                        }

                        // Analyze NI security
                        if (this->m_settings->getSideChannelAnalysisNI() && this->m_settings->getFaultInjection()){
                            analyze_combined(ni_threads[thread_num], thread_num);
                        }

                        // Analyze SNI security
                        if (this->m_settings->getSideChannelAnalysisSNI() && this->m_settings->getFaultInjection()){
                            analyze_combined(sni_threads[thread_num], thread_num);
                        }

                        // Analyze ICSNI security
                        if (this->m_settings->getCombinedICSNI()){
                            analyze_combined(icsni_threads[thread_num], thread_num);
                        }

                        // Update probe combinations
                        if(m_settings->getSideChannelAnalysisPINI() || m_settings->getCombinedICINI()){
                            sca_preprocessor.update(this->m_state, this->m_settings, modified, 0, true, thread_num);
                        }

                        // Analyze PINI security
                        if (this->m_settings->getSideChannelAnalysisPINI() && this->m_settings->getFaultInjection()){
                            analyze_combined(pini_threads[thread_num], thread_num);
                        }

                        // Analyze ICINI security
                        if (this->m_settings->getCombinedICINI()) {
                            analyze_combined(icini_threads[thread_num], thread_num);
                        }


                        // Update number of input faults
                        if(this->m_settings->getCombinedCNI() || this->m_settings->getCombinedCSNI() || this->m_settings->getCombinedCINI()){
                            std::vector<const verica::Pin*> input_pins = m_state->m_netlist_model->module_under_test()->input_pins();
                            for(auto w : target_fault_collection[idx_fault_pair].first) {
                                if(std::find(input_pins.begin(), input_pins.end(), w->source_pin()) != input_pins.end() && w->source_pin()->port_type() != verica::Refresh) m_state->m_current_number_of_input_faults[thread_num]++;
                            }
                        }

                        // Update probe combinations
                        if(this->m_settings->getCombinedCNI() || this->m_settings->getCombinedCSNI()){
                            sca_preprocessor.update(this->m_state, this->m_settings, modified, m_state->m_current_number_of_injected_faults, false, thread_num);
                        }


                        // Analyze CNI security
                        if (this->m_settings->getCombinedCNI()){
                            analyze_combined(cni_threads[thread_num], thread_num);
                        }

                        // Analyze CSNI security
                        if (this->m_settings->getCombinedCSNI()){
                            analyze_combined(csni_threads[thread_num], thread_num);
                        }


                        // Update probe combinations
                        if(this->m_settings->getCombinedCINI()){
                            sca_preprocessor.update(this->m_state, this->m_settings, modified, m_state->m_current_number_of_injected_faults, true, thread_num);
                        }

                        // Analyze CINI security
                        if (this->m_settings->getCombinedCINI()) {
                            analyze_combined(cini_threads[thread_num], thread_num);
                        }

                        if(this->m_settings->getCombinedCNI() || this->m_settings->getCombinedCSNI() || this->m_settings->getCombinedCINI()){
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

            } while(!cancel_fia && !this->m_injector->permutation_done());

            /* Footer for injector */
            if(this->m_settings->getVerbose() > 0)
                this->m_logger->footer(this->m_injector->name(), "", ""); 


            /* Report fault verification results */
            if (this->m_settings->getFaultInjection()){
                this->m_analyzer->configure(fault_strategy.get());
                this->m_analyzer->report();
            }

            /* Report probing results */
            if (this->m_settings->getSideChannelAnalysisProbing()) {
                report_combined(probing, probing_threads);
            }

            /* Report NI results */
            if (this->m_settings->getSideChannelAnalysisNI()) {
                report_combined(composability_ni, ni_threads);
            }

            /* Report SNI results */
            if (this->m_settings->getSideChannelAnalysisSNI()) {
                report_combined(composability_sni, sni_threads);
            }

            /* Report PINI results */
            if (this->m_settings->getSideChannelAnalysisPINI()) {
                report_combined(composability_pini, pini_threads);
            }

            /* Report CNI results */
            if (this->m_settings->getCombinedCNI()) {
                report_combined(composability_cni, cni_threads);
            }

            /* Report CSNI results */
            if (this->m_settings->getCombinedCSNI()) {
                report_combined(composability_csni, csni_threads);
            }

            /* Report CSNI results */
            if (this->m_settings->getCombinedICSNI()) {
                report_combined(composability_icsni, icsni_threads);
            }

            /* Report CINI results */
            if (this->m_settings->getCombinedCINI()) {
                report_combined(composability_cini, cini_threads);
            }

            /* Report ICINI results */
            if (this->m_settings->getCombinedICINI()) {
                report_combined(composability_icini, icini_threads);
            }

            /* Report details for combined analysis */
            if(this->m_settings->getFaultInjection() && this->m_settings->getVerbose() > 2){
                if (this->m_settings->getSideChannelAnalysisProbing()) {
                    report_independent_combined(probing_threads, "PROB");
                }

                if (this->m_settings->getSideChannelAnalysisNI()) {
                    report_independent_combined(ni_threads, "NI");
                }

                if (this->m_settings->getSideChannelAnalysisSNI()) {
                    report_independent_combined(sni_threads, "SNI");
                }

                if (this->m_settings->getSideChannelAnalysisPINI()) {
                    report_independent_combined(pini_threads, "PINI");
                }
            }

            if(cancel_fia) goto exit;
        }

        // Finalize injector
        fault_strategy->finalize(m_settings, m_state);
    }

exit:

    // Output dot graph
    if(this->m_settings->getVisualization()){
        ConfigurationGraphvizDot visualizer{"GRAPHVIZ (DOT)"};
        this->m_visualizer->configure(&visualizer);

        // Visualize SCA
        if(this->m_settings->getSideChannelAnalysisProbing()){
            if(this->m_state->m_leaking_probes_sca.size() > 0) this->m_state->m_visualization_probes = this->m_state->m_leaking_probes_sca[0];
            visualizer.set_strategy_name("sca");
            this->m_visualizer->execute();
            this->m_visualizer->report();
            this->m_state->m_visualization_probes.clear();
        }

        // Visualize PNI
        if(this->m_settings->getSideChannelAnalysisNI()){
            if(this->m_state->m_leaking_probes_pni.size() > 0) this->m_state->m_visualization_probes = this->m_state->m_leaking_probes_pni[0];
            visualizer.set_strategy_name("pni");
            this->m_visualizer->execute();
            this->m_visualizer->report();
            this->m_state->m_visualization_probes.clear();
        }

        // Visualize PSNI
        if(this->m_settings->getSideChannelAnalysisSNI()){
            if(this->m_state->m_leaking_probes_psni.size() > 0) this->m_state->m_visualization_probes = this->m_state->m_leaking_probes_psni[0];
            visualizer.set_strategy_name("psni");
            this->m_visualizer->execute();
            this->m_visualizer->report();
            this->m_state->m_visualization_probes.clear();
        }

        // Visualize PINI
        if(this->m_settings->getSideChannelAnalysisPINI()){
            if(this->m_state->m_leaking_probes_pini.size() > 0) this->m_state->m_visualization_probes = this->m_state->m_leaking_probes_pini[0];
            visualizer.set_strategy_name("pini");
            this->m_visualizer->execute();
            this->m_visualizer->report();
            this->m_state->m_visualization_probes.clear();
        }

        // Visualize FIA
        if(this->m_settings->getFaultInjection()){
            if(this->m_state->m_effective_faults_fia.size() > 0) this->m_state->m_visualization_faults = this->m_state->m_effective_faults_fia[0];
            visualizer.set_strategy_name("fia");
            this->m_visualizer->execute();
            this->m_visualizer->report();
            this->m_state->m_visualization_faults.clear();
        }

        // Visualize FNI
        if(this->m_settings->getFaultFNI()){
            if(this->m_state->m_effective_faults_fni.size() > 0) this->m_state->m_visualization_faults = this->m_state->m_effective_faults_fni[0];
            visualizer.set_strategy_name("fni");
            this->m_visualizer->execute();
            this->m_visualizer->report();
            this->m_state->m_visualization_faults.clear();
        }

        // Visualize FSNI
        if(this->m_settings->getFaultFSNI()){
            if(this->m_state->m_effective_faults_fsni.size() > 0) this->m_state->m_visualization_faults = this->m_state->m_effective_faults_fsni[0];
            visualizer.set_strategy_name("fsni");
            this->m_visualizer->execute();
            this->m_visualizer->report();
            this->m_state->m_visualization_faults.clear();
        }

        // Visualize FINI
        if(this->m_settings->getFaultFINI()){
            if(this->m_state->m_effective_faults_fini.size() > 0) this->m_state->m_visualization_faults = this->m_state->m_effective_faults_fini[0];
            visualizer.set_strategy_name("fini");
            this->m_visualizer->execute();
            this->m_visualizer->report();
            this->m_state->m_visualization_faults.clear();
        }

        // Visualize Probing + FIA
        if(this->m_settings->getSideChannelAnalysisProbing() && this->m_settings->getFaultInjection()){
            if(this->m_state->m_leaking_combinations_sca_fia.size() > 0) {
                this->m_state->m_visualization_probes = this->m_state->m_leaking_combinations_sca_fia[0].first;
                this->m_state->m_visualization_faults = this->m_state->m_leaking_combinations_sca_fia[0].second;
            }
            visualizer.set_strategy_name("sca_fia");
            this->m_visualizer->execute();
            this->m_visualizer->report();
            this->m_state->m_visualization_probes.clear();
            this->m_state->m_visualization_faults.clear();
        }

        // Visualize CNI
        if(this->m_settings->getCombinedCNI()){
            if(this->m_state->m_effective_faults_cni.size() > 0){
                this->m_state->m_visualization_faults = this->m_state->m_effective_faults_cni[0];
            } else if(this->m_state->m_leaking_combinations_cni.size() > 0) {
                this->m_state->m_visualization_probes = this->m_state->m_leaking_combinations_cni[0].first;
                this->m_state->m_visualization_faults = this->m_state->m_leaking_combinations_cni[0].second;
            }
            visualizer.set_strategy_name("cni");
            this->m_visualizer->execute();
            this->m_visualizer->report();
            this->m_state->m_visualization_probes.clear();
            this->m_state->m_visualization_faults.clear();
        }

        // Visualize CSNI
        if(this->m_settings->getCombinedCSNI()){
            if(this->m_state->m_effective_faults_csni.size() > 0){
                this->m_state->m_visualization_faults = this->m_state->m_effective_faults_csni[0];
            } else if(this->m_state->m_leaking_combinations_csni.size() > 0) {
                this->m_state->m_visualization_probes = this->m_state->m_leaking_combinations_csni[0].first;
                this->m_state->m_visualization_faults = this->m_state->m_leaking_combinations_csni[0].second;
            }
            visualizer.set_strategy_name("csni");
            this->m_visualizer->execute();
            this->m_visualizer->report();
            this->m_state->m_visualization_probes.clear();
            this->m_state->m_visualization_faults.clear();
        }

        // Visualize ICSNI
        if(this->m_settings->getCombinedICSNI()){
            if(this->m_state->m_effective_faults_icsni.size() > 0){
                this->m_state->m_visualization_faults = this->m_state->m_effective_faults_icsni[0];
            } else if(this->m_state->m_leaking_combinations_icsni.size() > 0) {
                this->m_state->m_visualization_probes = this->m_state->m_leaking_combinations_icsni[0].first;
                this->m_state->m_visualization_faults = this->m_state->m_leaking_combinations_icsni[0].second;
            }
            visualizer.set_strategy_name("icsni");
            this->m_visualizer->execute();
            this->m_visualizer->report();
            this->m_state->m_visualization_probes.clear();
            this->m_state->m_visualization_faults.clear();
        }

        // Visualize CINI
        if(this->m_settings->getCombinedCINI()){
            if(this->m_state->m_effective_faults_cini.size() > 0){
                this->m_state->m_visualization_faults = this->m_state->m_effective_faults_cini[0];
            } else if(this->m_state->m_leaking_combinations_cini.size() > 0) {
                this->m_state->m_visualization_probes = this->m_state->m_leaking_combinations_cini[0].first;
                this->m_state->m_visualization_faults = this->m_state->m_leaking_combinations_cini[0].second;
            }
            visualizer.set_strategy_name("cini");
            this->m_visualizer->execute();
            this->m_visualizer->report();
            this->m_state->m_visualization_probes.clear();
            this->m_state->m_visualization_faults.clear();
        }

        // Visualize ICINI
        if(this->m_settings->getCombinedICINI()){
            if(this->m_state->m_effective_faults_icini.size() > 0){
                this->m_state->m_visualization_faults = this->m_state->m_effective_faults_icini[0];
            } else if(this->m_state->m_leaking_combinations_icini.size() > 0) {
                this->m_state->m_visualization_probes = this->m_state->m_leaking_combinations_icini[0].first;
                this->m_state->m_visualization_faults = this->m_state->m_leaking_combinations_icini[0].second;
            }
            visualizer.set_strategy_name("icini");
            this->m_visualizer->execute();
            this->m_visualizer->report();
            this->m_state->m_visualization_probes.clear();
            this->m_state->m_visualization_faults.clear();
        }
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




template<typename T> void 
Environment::analyze_sca(T &strategy, std::string name, const Composability type){
    std::vector<T> strategies{};
    
    /* Initialize probing strategy */
    strategy.initialize(this->m_settings, this->m_state);

    /* Initialize multi-threading strategies */
    for (int core = 0; core < this->m_settings->getCores(); core++){
        T new_strategy{name + "-CORE" + std::to_string(core), type};
        strategies.push_back(new_strategy);
        strategies[core].initialize(this->m_settings, this->m_state);
    }

    /* Early-abort variable */
    bool cancel = false;

    /* Perform multi-threading analysis */
    int simulation_counter = 0;
    #pragma omp parallel num_threads(this->m_settings->getCores()) shared(m_analyzer, m_state, cancel)
    #pragma omp for schedule(dynamic)
    for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[0].size(); idx++){
        #pragma omp cancellation point for

        /* Thread number */
        int thread_num = omp_get_thread_num();

        /* Set current probe combination */
        strategies[thread_num].current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

        /* Analyze */
        strategies[thread_num].execute(m_settings, m_state);

        /* Early abort */
        if (!strategies[thread_num].independent() && !cancel && this->m_settings->getSideChannelInterrupt()){
            #pragma omp critical
            {
                cancel = true;
            }
            #pragma omp cancel for
        }

        /* Progress */
        #pragma omp atomic
        simulation_counter++;
        this->m_logger->progress(simulation_counter, this->m_state->m_probe_combinations[0].size());
    }

    /* Merge multi-threading results */
    for (int core = 0; core < this->m_settings->getCores(); core++){
        strategy.insert(&(strategies[core]));
    }

    /* Finalize probing strategy */
    strategy.finalize(this->m_settings, this->m_state);

    /* Report probing results */
    this->m_analyzer->configure(&strategy);
    this->m_analyzer->report();
}

template<typename T> void 
Environment::analyze_combined(T &strategy, int thread_num){
    /* Early-abort variable */
    bool cancel= false;

    /* Performing SCA analysis */
    for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[thread_num].size() && !cancel; idx++){
        /* Set current probe combination */
        strategy.current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

        /* Assign probing strategy for current thread */
        strategy.execute(this->m_settings, this->m_state);

        /* Early abort */
        cancel = (!strategy.independent() && this->m_settings->getSideChannelInterrupt());
    }
}

template<typename T> void 
Environment::report_combined(T &strategy, std::vector<T> strategies){
    for (int core = 0; core < this->m_settings->getCores(); core++){
        strategy.insert(&(strategies[core]));
    }
    strategy.finalize(this->m_settings, this->m_state);
    this->m_analyzer->configure(&strategy);
    this->m_analyzer->report();
}


template<typename T> void 
Environment::report_independent_combined(std::vector<T> strategies, std::string name){
    std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> combined_leaking_fault_injections;
    std::vector<std::vector<const verica::Wire*>> failing_probes;
    // for (int core = 0; core < this->m_settings->getCores(); core++){
    //     combined_leaking_fault_injections.insert(combined_leaking_fault_injections.end(), strategies[core].combined_leaking_faults().begin(), strategies[core].combined_leaking_faults().end());
    //     failing_probes.insert(failing_probes.end(), strategies[core].combined_failing_probes().begin(), strategies[core].combined_failing_probes().end());
    // }

    // this->m_logger->header("COMBINED-ANALYZER (FAULT+PROBING)");
    // // for(auto leaking_fault : combined_leaking_fault_injections){
    // for(unsigned int idx=0; idx<combined_leaking_fault_injections.size(); ++idx){
    //     /* report faulted nodes */
    //     this->m_logger->log("ANALYZER", "FIA+" + name, "Faulted node(s): " + this->m_state->m_netlist_model->wire_vector_to_json_string(combined_leaking_fault_injections[idx].first));
        
    //     /* report fault mapping */ 
    //     // this->m_logger->log("ANALYZER", "FIA+" + name, "Fault mapping: " + this->m_state->m_netlist_model->fault_state_to_json_string(combined_leaking_fault_injections[idx], this->m_state->m_cell_library)); 

    //     /* report failing probes */
    //     this->m_logger->log("ANALYZER", "FIA+" + name, "Failing probe(s): " + this->m_state->m_netlist_model->wire_vector_to_json_string(failing_probes[idx]));
    //     this->m_logger->log("ANALYZER", "FIA+" + name, "");
    // }
    // this->m_logger->footer();

    this->m_logger->header("COMBINED-ANALYZER (FAULT+PROBING)");
    this->m_logger->log("ANALYZER", "FIA+" + name, "Currently not supported!");
    this->m_logger->footer();
}