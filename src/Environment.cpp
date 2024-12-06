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

#include <stdexcept>
#include <string>
#include <utility>
#include <vector>
#include <iostream>
#include <memory>

#include <boost/algorithm/string/predicate.hpp>

#include "Configuration.hpp"
#include "Environment.hpp"

#include "context/State.hpp"
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
#include "analyzer/ConfigurationRandomProbing.hpp"
#include "analyzer/ConfigurationUniformity.hpp"
#include "analyzer/ConfigurationComposability.hpp"
#include "analyzer/ConfigurationRandomProbingComposability.hpp"
#include "analyzer/ConfigurationFaultDetection.hpp"
#include "analyzer/ConfigurationFaultSFA.hpp"
#include "analyzer/ConfigurationFaultSIFA.hpp"
#include "analyzer/ConfigurationFaultCorrection.hpp"
#include "analyzer/ConfigurationFaultVulnerability.hpp"

#include "visualization/ConfigurationGraphvizDot.hpp"

#include "composer/ConfigurationIronMask.hpp"
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
    delete this->m_composer;
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
    
    /* Registering new composer instance */
    this->m_composer = new Composer("COMPOSER", this->m_logger, this->m_settings, this->m_state);
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

    if(m_settings->getComposer()){
        ConfigurationIronMask ironmask{"IronMask"};
        this->m_composer->configure(&ironmask);
        this->m_composer->execute();
        this->m_composer->report();
    }



    /*
     * =====================================================================================
     * [UNIFORMITY] Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */
    if (this->m_settings->getSideChannel() && this->m_settings->getSideChannelAnalysisUniformity())
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
    if ((this->m_settings->getSideChannel() || this->m_settings->getCombined()) && this->m_settings->getSideChannelAnalysisProbing()){
        /* Create new probing verification strategy */
        ConfigurationProbing probing{"PROBING", Composability::NONE};
        analyze_sca(sca_preprocessor, probing, "PROBING");
    }


    /*
     * =====================================================================================
     * [RANDOM-PROBING]
     * =====================================================================================
     */
    if (this->m_settings->getSideChannel() && this->m_settings->getSideChannelAnalysisRandomProbing()){
        /* Create new probing verification strategy */
        ConfigurationRandomProbing random_probing{"RANDOM-PROBING", Composability::NONE};
        analyze_random_sca(sca_preprocessor, random_probing, "RANDOM-PROBING");
    }


    /*
     * =====================================================================================
     * [NON-INTERFERENCE] Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */
    if (this->m_settings->getSideChannel() && this->m_settings->getSideChannelAnalysisNI()){
        /* Create new composability verification strategy */
        ConfigurationComposability composability_ni{"PNI", Composability::NI};
        analyze_sca(sca_preprocessor, composability_ni, "PNI", Composability::NI);
    }

    /*
     * =====================================================================================
     * [RANDOM-PROBING-COMPOSABILITY]
     * =====================================================================================
     */
    if (this->m_settings->getSideChannel() && this->m_settings->getSideChannelAnalysisRandomProbingComposability()){
        /* Create new composability verification strategy */
        ConfigurationRandomProbingComposability composability_random_probing_ni{"RPCOMP", Composability::RCOMPOSABILITY};
        analyze_random_sca(sca_preprocessor, composability_random_probing_ni, "RPCOMP", Composability::RCOMPOSABILITY);
    }


    /*
     * =====================================================================================
     * [STRONG NON-INTERFERENCE] Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */
    if (this->m_settings->getSideChannel() && this->m_settings->getSideChannelAnalysisSNI()){
        /* Create new composability verification strategy */
        ConfigurationComposability composability_sni{"PSNI", Composability::SNI};
        analyze_sca(sca_preprocessor, composability_sni, "PSNI", Composability::SNI);
    }


    /*
     * =====================================================================================
     * [PROBE-ISOLATING NON-INTERFERENCE] Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */
    if (this->m_settings->getSideChannel() && this->m_settings->getSideChannelAnalysisPINI()){
        /* Create new composability verification strategy */
        ConfigurationComposability composability_pini{"PINI", Composability::PINI};
        analyze_sca(sca_preprocessor, composability_pini, "PINI", Composability::PINI);
    }


    /*
     * =====================================================================================
     * [Combined Non-Interference]
     * =====================================================================================
     */
    if (this->m_settings->getCombined() && this->m_settings->getCombinedCNI()){
        /* Create new composability verification strategy */
        ConfigurationComposability composability_cni{"CNI", Composability::CNI};
        analyze_sca(sca_preprocessor, composability_cni, "CNI", Composability::CNI);
    }


    /*
     * =====================================================================================
     * [Combined Strong Non-Interference]
     * =====================================================================================
     */
    if (this->m_settings->getCombined() && this->m_settings->getCombinedCSNI()){
        /* Create new composability verification strategy */
        ConfigurationComposability composability_csni{"CSNI", Composability::CSNI};
        analyze_sca(sca_preprocessor, composability_csni, "CSNI", Composability::CSNI);
    }


    /*
     * =====================================================================================
     * [Independent Combined Strong Non-Interference]
     * =====================================================================================
     */
    if (this->m_settings->getCombined() && this->m_settings->getCombinedICSNI()){
        /* Create new composability verification strategy */
        ConfigurationComposability composability_icsni{"ICSNI", Composability::ICSNI};
        analyze_sca(sca_preprocessor, composability_icsni, "ICSNI", Composability::ICSNI);
    }



    /*
     * =====================================================================================
     * [COMBINED-ISOLATING NON-INTERFERENCE]
     * =====================================================================================
     */
    if (this->m_settings->getCombined() && this->m_settings->getCombinedCINI()){
        /* Create new composability verification strategy */
        ConfigurationComposability composability_cini{"CINI", Composability::CINI};
        analyze_sca(sca_preprocessor, composability_cini, "CINI", Composability::CINI);
    }


    /*
     * =====================================================================================
     * [INDEPENDENT COMBINED-ISOLATING NON-INTERFERENCE]
     * =====================================================================================
     */
    if (this->m_settings->getCombined() && this->m_settings->getCombinedICINI()){
        /* Create new composability verification strategy */
        ConfigurationComposability composability_icini{"ICINI", Composability::ICINI};
        analyze_sca(sca_preprocessor, composability_icini, "ICINI", Composability::ICINI);
    }


    /*
     * =====================================================================================
     * [FAULT] Fault Injection VERification (FIVER)
     * =====================================================================================
     */
    if(this->m_settings->getFaultInjection()){
        // TODO:  it could be possible to merge blocks of the combined analysis and the standalone
        // faultInjection analysis.
        if(this->m_settings->getFaultAnalysisStrategy() == "detection"){
            Environment::analyze_fia<ConfigurationFaultDetection>("FAULT-DETECTION");
        }
        else if(this->m_settings->getFaultAnalysisStrategy() == "correction"){
            Environment::analyze_fia<ConfigurationFaultCorrection>("FAULT-CORRECTION");
        }
        else if(this->m_settings->getFaultAnalysisStrategy() == "sfa"){
            Environment::analyze_fia<ConfigurationFaultSFA>("FAULT-SFA");
        }
        else if(this->m_settings->getFaultAnalysisStrategy() == "sifa"){
            Environment::analyze_fia<ConfigurationFaultSIFA>("FAULT-SIFA");
        }
        else{
            throw std::runtime_error("FIA is enabled, but no valid strategy is selected!");
        }
    }

    /*
     * =====================================================================================
     * [COMBINED] Fault Injection VERification (FIVER) & Statistical Independence Leakage VERification (SILVER)
     * =====================================================================================
     */
    if(this->m_settings->getCombined()){
        /* Create new fault verification strategy */
        std::unique_ptr<Configuration> fault_strategy;
        generate_choosen_fia_configuration(fault_strategy);

        /* Create new sca verification strategy */
        std::vector<std::unique_ptr<ConfigurationCombinable>> sca_configurations;
        std::vector<std::vector<std::unique_ptr<ConfigurationCombinable>>> sca_configurations_multithreading;
        generate_choosen_sca_configurations(sca_configurations, sca_configurations_multithreading);

        analyze_combined(sca_preprocessor, fault_strategy, sca_configurations, sca_configurations_multithreading);
    }

    visualize();
    finalize();
}

void Environment::visualize(){
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

        // Visualize Random Probing
        if(this->m_settings->getSideChannelAnalysisRandomProbing()){
            visualizer.set_strategy_name("random-probing");
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
}

void Environment::finalize(){
    // Finalize
    this->m_logger->header();
    if (this->m_settings->getFaultInjection() && this->m_settings->getSideChannel()){
        this->m_logger->log("VERICA", "FIA & SCA", "DONE!");
    }
    else if(this->m_settings->getFaultInjection()){
        this->m_logger->log("VERICA", "FIA", "DONE!");
    }
    else if(this->m_settings->getSideChannel()){
        this->m_logger->log("VERICA", "SCA", "DONE!");
    }
    else if(this->m_settings->getCombined()){
        this->m_logger->log("VERICA", "COMBINED", "DONE!");
    }
    else{
        this->m_logger->log("VERICA", "DONE!");
    }
}

template<typename T> void
Environment::analyze_fia(std::string name){
    /* Create new fault verification strategy */
    T fault_strategy{name};
    fault_strategy.initialize(this->m_settings, this->m_state);

    /* New composer strategy */
    ConfigurationIronMask composer_ironmask{"IRON-MASK"};
    std::vector<ConfigurationIronMask> ironmask_threads{};
  
    for (int core = 0; core < this->m_settings->getCores(); core++){        
        ConfigurationIronMask configComposerIronMask{"IRON-MASK-CORE" + std::to_string(core)}; 
        ironmask_threads.push_back(configComposerIronMask);
    } 

    /* Resize container to store combinations for random faulting positions */
    // if(this->m_settings->getFaultRandomFaulting() || this->m_settings->getFaultRandomFaultingComposability())
    this->m_state->m_random_faulting_pos_combination.resize(this->m_settings->getCores()); 


    /* Initialize fault location for random faulting composability */
    this->m_state->m_faultLocations_copy = this->m_state->m_faultLocations;
    if(this->m_settings->getFaultRandomFaultingComposability()) {
        // remove inputs from fault locations (they will be added separately)
        for(std::vector<const verica::Wire*>::iterator it=this->m_state->m_faultLocations.begin(); it!=this->m_state->m_faultLocations.end(); ) {
            // check if input
            if((*it)->source_pin()->parent_module() == this->m_state->m_netlist_model->topmodule() && (*it)->source_pin()->port_type() == verica::None) {
                it = this->m_state->m_faultLocations.erase(it);
            } else { 
                ++it;
            }
        }
    }


    /* Perform analysis */
    bool consider_input_faults_only = true;
    int num_of_faults = (this->m_settings->getFaultRandomFaulting() || this->m_settings->getFaultRandomFaultingComposability()) ? this->m_settings->getFaultRandomFaultingMaxFaults() : this->m_settings->getNumberOfFaults();
    for(int n = 1; n <= num_of_faults; ++n){
        this->m_state->m_current_number_of_injected_faults = n;

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
            m_state->m_thread_to_location.resize(m_settings->getCores());
            std::vector<std::vector<const verica::Wire*>> fault_locations;
            if(consider_input_faults_only && (this->m_settings->getFaultRandomFaulting() || this->m_settings->getFaultRandomFaultingComposability())){
                std::vector<const verica::Wire*> temp;
                fault_locations.push_back(temp);
                consider_input_faults_only = false;
            }
            fault_locations.insert(fault_locations.end(), this->m_injector->permuted_fault_locations().begin(), this->m_injector->permuted_fault_locations().end());

            #pragma omp parallel num_threads(this->m_settings->getCores()) shared(cancel_fia)
            #pragma omp for schedule(dynamic)
            for (int loc_idx=0; loc_idx<fault_locations.size(); loc_idx++) {
                std::vector<const verica::Wire*> location = fault_locations[loc_idx];
                #pragma omp cancellation point for

                // Get thread number
                int thread_num = omp_get_thread_num();
                m_state->m_thread_to_location[thread_num] = loc_idx;

                // Create container for input faults - required for random faulting composability 
                std::vector<std::vector<const verica::Wire*>> input_combinations;
                std::vector<const verica::Wire*> empty_comb;
                input_combinations.push_back(empty_comb);
                if(this->m_settings->getFaultRandomFaultingComposability()){
                    input_combinations.insert(input_combinations.end(), 
                                            m_state->m_random_faulting_composability_input_combinations.begin(), 
                                            m_state->m_random_faulting_composability_input_combinations.end());
                }

                // Loop over all input combinations (will be zero for non-random faulting composability checks)
                // for(auto input_combination : input_combinations){
                for(unsigned int input_comb_idx=0; input_comb_idx<input_combinations.size(); input_comb_idx++){
                    // Add input combination to target fault locations
                    std::vector<const verica::Wire*> adapted_location = location;
                    adapted_location.insert(adapted_location.end(), input_combinations[input_comb_idx].begin(), input_combinations[input_comb_idx].end());
                    this->m_state->m_random_faulting_pos_combination[thread_num] = input_comb_idx;

                    // Compute final fault mappings for current fault location
                    std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> target_fault_collection;
                    target_fault_collection = this->m_injector->prepeare_fault_mappings_for_injection(adapted_location);

                    for(unsigned int idx_fault_pair=0; idx_fault_pair<target_fault_collection.size(); ++idx_fault_pair){

                        // Inject faults
                        this->m_injector->inject(target_fault_collection[idx_fault_pair].first, target_fault_collection[idx_fault_pair].second, thread_num);

                        // Analyze faults
                        this->m_analyzer->configure(&fault_strategy);
                        this->m_analyzer->execute();

                        // Composer
                        if(m_settings->getComposer() && m_settings->getComposerIronMask()){
                            ironmask_threads[thread_num].execute(m_settings, m_state);
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

                    // Restore BDDs of faulted inputs only (internal faults are const in this loop)
                    this->m_injector->restore_faulty_models(input_combinations[input_comb_idx], thread_num);
                }

                // Restore BDDs of internal faults
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
        this->m_analyzer->configure(&fault_strategy);
        fault_strategy.finalize(this->m_settings, this->m_state);
        this->m_analyzer->report();


        /* Report IronMask Export */
        if(this->m_settings->getComposer()){
            for (int core = 0; core < this->m_settings->getCores(); core++){
                composer_ironmask.insert(&(ironmask_threads[core]));
            }
            composer_ironmask.finalize(this->m_settings, this->m_state);
            this->m_analyzer->configure(&composer_ironmask);
            this->m_analyzer->report();
        }


        if(cancel_fia){
            return;
        }
    }


    /* 
     * =====================================================================================
     * [Fault Vulnerability] 
     * =====================================================================================
     */
    if (this->m_settings->getFaultVulnerabilityEnable()){
        /* Create new composability verification strategy */
        std::vector<Injector*> injector;
        for(unsigned core=0; core<m_settings->getCores(); core++) injector.push_back(m_injector);
        ConfigurationFaultVulnerability fault_vulnerability{"Fault Vulnerability", injector, this->m_logger};
        fault_vulnerability.initialize(m_settings, m_state);
        fault_vulnerability.execute(m_settings, m_state);
        fault_vulnerability.report("FIA Vulnerability", m_logger, m_settings, m_state);
    }
}


template<typename T> void
Environment::analyze_sca(ConfigurationSCA &sca_preprocessor, T &strategy, std::string name, const Composability type){
    /* Initialize probing strategy */
    strategy.initialize(this->m_settings, this->m_state);

    /* Initialize multi-threading strategies */
    std::vector<T> strategies{};
    for (int core = 0; core < this->m_settings->getCores(); core++){
        T new_strategy{name + "-CORE" + std::to_string(core), type};
        strategies.push_back(new_strategy);
        strategies[core].initialize(this->m_settings, this->m_state);
    }

    /* Generate probe combinations */
    auto sim = OutputProbes::NONE;
    if(type == Composability::NI || type == Composability::CNI){
        sim = OutputProbes::NI;
    } else if(type == Composability::SNI || type == Composability::CSNI || type == Composability::ICSNI){
        sim = OutputProbes::SNI;
    } else if(type == Composability::PINI || type == Composability::CINI || type == Composability::ICINI){
        sim = OutputProbes::PINI;
    }

    int max_order = (m_settings->getSideChannelOrder() > 0) ? m_settings->getSideChannelOrder() : m_state->m_min_shared_inputs.size() - 1;

    #pragma omp parallel for schedule(dynamic) num_threads(m_settings->getCores()) 
    for (int core = 0; core < m_settings->getCores(); core++){
        sca_preprocessor.update(m_state, m_settings, sca_preprocessor.get_probe_positions(), max_order, sim, core);
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
Environment::analyze_random_sca(ConfigurationSCA &sca_preprocessor, T &strategy, std::string name, const Composability type){
    /* Initialize random probing strategy */
    strategy.initialize(this->m_settings, this->m_state);

    /* Determine total amount of probe positions */
    this->m_state->m_probe_positions = sca_preprocessor.get_probe_positions();

    /* Initialize multi-threading strategies */
    std::vector<T> strategies{};
    for (int core = 0; core < this->m_settings->getCores(); core++){
        T new_strategy{name + "-CORE" + std::to_string(core), type};
        strategies.push_back(new_strategy);
        strategies[core].initialize(this->m_settings, this->m_state);
    }

    /* Generate vector of additional probes that need to be considered for composability checks */
    /* Contains only one empty vector for random probing (without composability checks) */
    std::vector<std::vector<const verica::Wire*>> output_probes;
    std::vector<const verica::Wire*> temp;
    output_probes.push_back(temp);
    if(type == Composability::RCOMPOSABILITY){
        for(auto comb : this->m_state->m_random_probing_composability_output_combinations) output_probes.push_back(comb);
    }

    /* Analyze all probe combinations */
    for(auto probes : output_probes){  
        /* Initialize strategies */
        for(unsigned int core=0; core < this->m_settings->getCores(); core++) strategies[core].initialize(this->m_settings, this->m_state);

        #pragma omp parallel num_threads(this->m_settings->getCores())
        #pragma omp for schedule(dynamic)
        for (unsigned int idx = 0; idx < this->m_state->m_probe_positions.size(); idx++){
            /* Thread number */
            int thread_num = omp_get_thread_num();

            std::vector<const verica::Wire*> wires = this->m_state->m_probe_positions;
            wires.erase(wires.begin(), wires.begin() + idx);

            strategies[thread_num].current_probes(std::make_pair(wires, probes));

            strategies[thread_num].execute(m_settings, m_state);
        }

        /* Reset strategy */
        strategy.initialize(this->m_settings, this->m_state);

        /* Merge multi-threading results */
        for (int core = 0; core < this->m_settings->getCores(); core++){
            strategy.insert(&(strategies[core]));
        }

        /* Finalize probing strategy */
        strategy.finalize(this->m_settings, this->m_state);
    }

    /* Report probing results */
    this->m_analyzer->configure(&strategy);
    this->m_analyzer->report();

    #ifdef export_leaking_probes
        m_state->probe_file->close();
    #endif
}



// TODO: check if template parameter is here possible to avoid the if else branch
void Environment::gen_configuration(
    const Composability comp,
    const std::string &strategy,
    std::vector<std::unique_ptr<ConfigurationCombinable>> &sca_configurations){

    if (comp == Composability::NONE) {
        sca_configurations.emplace_back(std::make_unique<ConfigurationProbing>(strategy, comp));
    } else if(comp == Composability::RANDOMPROBING){
        sca_configurations.emplace_back(std::make_unique<ConfigurationRandomProbing>(strategy, comp));
    } else if(comp == Composability::RCOMPOSABILITY){
        sca_configurations.emplace_back(std::make_unique<ConfigurationRandomProbingComposability>(strategy, comp));
    } else{
        sca_configurations.emplace_back(std::make_unique<ConfigurationComposability>(strategy, comp));
    }

}
void Environment::gen_multithreading_configurations(
    const Composability comp,
    const std::string &strategy,
    std::vector<std::vector<std::unique_ptr<ConfigurationCombinable>>> &sca_configurations_multithreading){

    sca_configurations_multithreading.emplace_back(std::vector<std::unique_ptr<ConfigurationCombinable>>());
    for (int core = 0; core < this->m_settings->getCores(); core++){
        if (comp == Composability::NONE) {
            sca_configurations_multithreading.back().emplace_back(
            std::make_unique<ConfigurationProbing>(strategy + std::to_string(core), comp));
        } else if(comp == Composability::RANDOMPROBING){
            sca_configurations_multithreading.back().emplace_back(
            std::make_unique<ConfigurationRandomProbing>(strategy + std::to_string(core), comp));
        } else if(comp == Composability::RCOMPOSABILITY){
            sca_configurations_multithreading.back().emplace_back(
            std::make_unique<ConfigurationRandomProbingComposability>(strategy + std::to_string(core), comp));
        } else {
            sca_configurations_multithreading.back().emplace_back(
                std::make_unique<ConfigurationComposability>(strategy +"-CORE " + std::to_string(core), comp));
        }
    }
}

void Environment::generate_choosen_fia_configuration(std::unique_ptr<Configuration> &fault_strategy){
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

}

void Environment::generate_choosen_sca_configurations(
    std::vector<std::unique_ptr<ConfigurationCombinable>> &sca_configurations,
    std::vector<std::vector<std::unique_ptr<ConfigurationCombinable>>> &sca_configurations_multithreading){

        const size_t cores = this->m_settings->getCores();
        /* New probing strategy */
        if (this->m_settings->getSideChannelAnalysisProbing()) {
            std::pair<Composability, std::string> strat = std::make_pair(Composability::NONE, "FIA+PROBING");

            gen_configuration(strat.first, strat.second, sca_configurations);
            gen_multithreading_configurations(strat.first, strat.second, sca_configurations_multithreading);

        }

        /* New random probing strategy */
        if (this->m_settings->getSideChannelAnalysisRandomProbing()) {
            std::pair<Composability, std::string> strat = std::make_pair(Composability::RANDOMPROBING, "FIA+RANDOM-PROBING");

            gen_configuration(strat.first, strat.second, sca_configurations);
            gen_multithreading_configurations(strat.first, strat.second, sca_configurations_multithreading);

        }

        /* New random probing strategy */
        if (this->m_settings->getSideChannelAnalysisRandomProbingComposability()) {
            std::pair<Composability, std::string> strat = std::make_pair(Composability::RCOMPOSABILITY, "RCOMP FIA+PROBING");

            gen_configuration(strat.first, strat.second, sca_configurations);
            gen_multithreading_configurations(strat.first, strat.second, sca_configurations_multithreading);

        }

        /* New NI strategy */
        if (this->m_settings->getSideChannelAnalysisNI()) {
            std::pair<Composability, std::string> strat = std::make_pair(Composability::NI, "FIA+NI");

            gen_configuration(strat.first, strat.second, sca_configurations);
            gen_multithreading_configurations(strat.first, strat.second, sca_configurations_multithreading);
        }

        /* New SNI strategy */
        if (this->m_settings->getSideChannelAnalysisSNI()){
            std::pair<Composability, std::string> strat = std::make_pair(Composability::SNI, "FIA+SNI");

            gen_configuration(strat.first, strat.second, sca_configurations);
            gen_multithreading_configurations(strat.first, strat.second, sca_configurations_multithreading);
        }

        /* New PINI strategy */
        if (this->m_settings->getSideChannelAnalysisPINI()){
            std::pair<Composability, std::string> strat = std::make_pair(Composability::PINI, "FIA+PINI");

            gen_configuration(strat.first, strat.second, sca_configurations);
            gen_multithreading_configurations(strat.first, strat.second, sca_configurations_multithreading);
        }

        /* New CNI strategy */
        if (this->m_settings->getCombinedCNI()){
            std::pair<Composability, std::string> strat = std::make_pair(Composability::CNI, "CNI");

            gen_configuration(strat.first, strat.second, sca_configurations);
            gen_multithreading_configurations(strat.first, strat.second, sca_configurations_multithreading);
        }

        /* New CSNI strategy */
        if (this->m_settings->getCombinedCSNI()){
            std::pair<Composability, std::string> strat = std::make_pair(Composability::CSNI, "CSNI");

            gen_configuration(strat.first, strat.second, sca_configurations);
            gen_multithreading_configurations(strat.first, strat.second, sca_configurations_multithreading);
        }

        /* New ICSNI strategy */
        if (this->m_settings->getCombinedICSNI()){
            std::pair<Composability, std::string> strat = std::make_pair(Composability::ICSNI, "ICSNI");

            gen_configuration(strat.first, strat.second, sca_configurations);
            gen_multithreading_configurations(strat.first, strat.second, sca_configurations_multithreading);
        }

        /* New CINI strategy */
        if (this->m_settings->getCombinedCINI()){
            std::pair<Composability, std::string> strat = std::make_pair(Composability::CINI, "CINI");

            gen_configuration(strat.first, strat.second, sca_configurations);
            gen_multithreading_configurations(strat.first, strat.second, sca_configurations_multithreading);
        }

        /* New ICINI strategy */
        if (this->m_settings->getCombinedICINI()){
            std::pair<Composability, std::string> strat = std::make_pair(Composability::ICINI, "ICINI");

            gen_configuration(strat.first, strat.second, sca_configurations);
            gen_multithreading_configurations(strat.first, strat.second, sca_configurations_multithreading);
        }

}

// TODO: create a report combined function
void Environment::report_combined(std::vector<std::unique_ptr<ConfigurationCombinable>> &sca_configurations,
                                  std::vector<std::vector<std::unique_ptr<ConfigurationCombinable>>> &sca_configurations_multithreading){

    for (size_t idxConfig=0; idxConfig < sca_configurations.size(); ++idxConfig) {
        report_sca_combined(sca_configurations[idxConfig], sca_configurations_multithreading[idxConfig]);

        /* Report details for combined analysis */
        // if (this->m_settings->getFaultInjection() && this->m_settings->getVerbose() > 2) {
        if((m_settings->getSideChannelAnalysisProbing() || m_settings->getSideChannelAnalysisNI() || m_settings->getSideChannelAnalysisSNI() || m_settings->getSideChannelAnalysisPINI()) &&
           (m_settings->getFaultThresholdFaulting() || m_settings->getFaultFNI() || m_settings->getFaultFSNI() || m_settings->getFaultFINI())) {
            if (sca_configurations[idxConfig]->getType() == Composability::NONE) {
                report_independent_combined(sca_configurations_multithreading[idxConfig], "PROB");
            }

            if (sca_configurations[idxConfig]->getType() == Composability::NI) {
                report_independent_combined(sca_configurations_multithreading[idxConfig], "NI");
            }

            if (sca_configurations[idxConfig]->getType() == Composability::SNI) {
                report_independent_combined(sca_configurations_multithreading[idxConfig], "SNI");
            }

            if (sca_configurations[idxConfig]->getType() == Composability::PINI) {
                report_independent_combined(sca_configurations_multithreading[idxConfig], "PINI");
            }
        }
    }
}

void
Environment::initialize_sca_configurations(
    std::vector<std::unique_ptr<ConfigurationCombinable>> &sca_configurations,
    std::vector<std::vector<std::unique_ptr<ConfigurationCombinable>>> &sca_configurations_multithreading){

        //init sca configurations
        for (auto &sca_config : sca_configurations) {
            sca_config->initialize(this->m_settings, this->m_state);
        }

        //init multithreaded sca configurations
        for (auto &sca_config_mul : sca_configurations_multithreading) {
            for(size_t core = 0; core < this->m_settings->getCores(); ++core){
                sca_config_mul.at(core)->initialize(this->m_settings, this->m_state);
            }
        }
}

void Environment::analyze_combined(ConfigurationSCA &sca_preprocessor,
                                   std::unique_ptr<Configuration> &fault_strategy,
                                   std::vector<std::unique_ptr<ConfigurationCombinable>> &sca_configurations,
                                   std::vector<std::vector<std::unique_ptr<ConfigurationCombinable>>> &sca_configurations_multithreading){

    if (sca_configurations.size() != sca_configurations_multithreading.size()) {
        throw std::runtime_error("The size of multithreading and normal strategy vector is not equal");
    }

    if (sca_configurations.empty()) {
        throw std::runtime_error("No sca_configuration and no sca_configurations_multithreading");
    }

    /* Copy probe positions for random probing */
    m_state->m_probe_positions = sca_preprocessor.get_probe_positions();

    if(m_settings->getSideChannelAnalysisRandomProbing()) {
        m_state->m_combined_leaking_probabilities.clear();
        m_state->m_combined_leaking_probabilities.resize(m_settings->getCores(), 0.0);
        m_state->m_combined_leaking_probabilities_upper_bound.clear();
        m_state->m_combined_leaking_probabilities_upper_bound.resize(m_settings->getCores(), 0.0);
    }

    if(m_settings->getSideChannelAnalysisRandomProbingComposability()) {
        m_state->m_combined_composability_leaking_probabilities.clear();
        m_state->m_combined_composability_leaking_probabilities_upper_bound.clear();
        for(unsigned int core=0; core<m_settings->getCores(); core++){
            std::vector<long double> temp(m_state->m_random_faulting_composability_input_combinations.size()+1, 0.0);
            m_state->m_combined_composability_leaking_probabilities.push_back(temp); 
            m_state->m_combined_composability_leaking_probabilities_upper_bound.push_back(temp); 
        }
    }

    /* Resize container to store combinations for random faulting positions */
    this->m_state->m_random_faulting_pos_combination.resize(this->m_settings->getCores(), 0); 
        

    /* Initialize fault locations for random faulting composability */
    if(this->m_settings->getFaultRandomFaultingComposability()) {
        // remove inputs from fault locations (they will be added separately)
        for(std::vector<const verica::Wire*>::iterator it=this->m_state->m_faultLocations.begin(); it!=this->m_state->m_faultLocations.end(); ) {
            // check if input
            if((*it)->source_pin()->parent_module() == this->m_state->m_netlist_model->topmodule() && (*it)->source_pin()->port_type() == verica::None) {
                it = this->m_state->m_faultLocations.erase(it);
            } else { 
                ++it;
            }
        }
    }


    /* Perform analysis */
    bool consider_input_faults_only = true;
    int num_of_faults = (this->m_settings->getFaultRandomFaulting() || this->m_settings->getFaultRandomFaultingComposability()) ? this->m_settings->getFaultRandomFaultingMaxFaults() : this->m_settings->getNumberOfFaults();
    for(int n = 1; n <= num_of_faults; ++n){
        this->m_state->m_current_number_of_injected_faults = n;
        initialize_sca_configurations(sca_configurations, sca_configurations_multithreading);

        /* Early-abort variable */
        bool cancel_fia = false;

        /* Coordinate the number of faults that are injected simultaneous */
        this->m_logger->header("EVALUATION (n="+ std::to_string(n) + ")");

        do {
            // get permuted fault locations
            this->m_injector->get_next_fault_locations(n);
            if(this->m_settings->getVerbose() > 0)
                this->m_logger->log(this->m_injector->name(),
                                    "Got a new batch of permuted fault locations with " +
                                    std::to_string(m_injector->permuted_fault_locations().size()) +
                                    " entries. I am going to analyze it...");

            /* Simulation progress counter */
            unsigned int simulation_counter = 0;

            // Fault injection
            m_state->m_thread_to_location.resize(m_settings->getCores());
            std::vector<std::vector<const verica::Wire*>> fault_locations;
            if(consider_input_faults_only && (this->m_settings->getFaultRandomFaulting() || this->m_settings->getFaultRandomFaultingComposability())){
                std::vector<const verica::Wire*> temp;
                fault_locations.push_back(temp);
                consider_input_faults_only = false;
            }
            fault_locations.insert(fault_locations.end(), this->m_injector->permuted_fault_locations().begin(), this->m_injector->permuted_fault_locations().end());

            #pragma omp parallel num_threads(this->m_settings->getCores()) shared(cancel_fia)
            #pragma omp for schedule(guided)
            for (int loc_idx=0; loc_idx<fault_locations.size(); loc_idx++) {
                std::vector<const verica::Wire*> location = fault_locations[loc_idx];
                #pragma omp cancellation point for

                // get thread number
                int thread_num = omp_get_thread_num();

                m_state->m_thread_to_location[thread_num] = loc_idx;

                // Create container for input faults - required for random faulting composability 
                std::vector<std::vector<const verica::Wire*>> input_combinations;
                std::vector<const verica::Wire*> empty_comb;
                input_combinations.push_back(empty_comb);
                if(this->m_settings->getFaultRandomFaultingComposability()){
                    input_combinations.insert(input_combinations.end(), 
                                            m_state->m_random_faulting_composability_input_combinations.begin(), 
                                            m_state->m_random_faulting_composability_input_combinations.end());
                }

                // Loop over all input combinations (will be zero for non-random faulting composability checks)
                // for(auto input_combination : input_combinations){
                for(unsigned int input_comb_idx=0; input_comb_idx<input_combinations.size(); input_comb_idx++){
                    // Add input combination to target fault locations
                    std::vector<const verica::Wire*> adapted_location = location;
                    adapted_location.insert(adapted_location.end(), input_combinations[input_comb_idx].begin(), input_combinations[input_comb_idx].end());
                    this->m_state->m_random_faulting_pos_combination[thread_num] = input_comb_idx;

                    // Compute final fault mappings for current fault location
                    std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> target_fault_collection;
                    target_fault_collection = this->m_injector->prepeare_fault_mappings_for_injection(adapted_location);
                    std::vector<const verica::Wire*> modified;
                    for(unsigned int idx_fault_pair=0; idx_fault_pair<target_fault_collection.size(); ++idx_fault_pair){
                        // Inject faults
                        this->m_injector->inject(target_fault_collection[idx_fault_pair].first, target_fault_collection[idx_fault_pair].second, thread_num);

                        // Analyze faults
                        this->m_analyzer->configure(fault_strategy.get());
                        this->m_analyzer->execute();

                        if(idx_fault_pair == 0){
                            for (auto w : location) {
                                modified.push_back(w);
                                for (auto p : w->propagation_path()) {
                                    modified.push_back(p);
                                }
                            }
                        }

                        if(m_state->m_random_faulting_correctable[thread_num]){
                            for(auto &configuration : sca_configurations_multithreading) {
                                switch (configuration.at(thread_num)->getType()){
                                    case Composability::RANDOMPROBING:
                                    case Composability::RCOMPOSABILITY:
                                        analyze_random_sca_combined(configuration.at(thread_num), thread_num);
                                    break;
                                    default:
                                    break;
                                }
                            }
                        }

                        // Determine SCA order
                        int max_order = (m_settings->getSideChannelOrder() > 0) ? m_settings->getSideChannelOrder() : m_state->m_min_shared_inputs.size() - 1;

                        // Update probe combinations
                        if(m_settings->getSideChannelAnalysisProbing()){
                            sca_preprocessor.update(this->m_state, this->m_settings, modified, max_order, OutputProbes::NONE, thread_num);
                        }

                        for (auto &configuration : sca_configurations_multithreading) {
                            switch (configuration.at(thread_num)->getType()) {
                            case Composability::NONE:
                                analyze_sca_combined(configuration.at(thread_num), thread_num);
                            break;
                            default:
                                // If the type of the configuration is non of the above,
                                // then nothing should happen at this position
                            break;
                            }
                        }

                        // Update probe combinations
                        if(m_settings->getSideChannelAnalysisNI()){
                            sca_preprocessor.update(this->m_state, this->m_settings, modified, max_order, OutputProbes::NI, thread_num);
                        }

                        for (auto &configuration : sca_configurations_multithreading) {
                            switch (configuration.at(thread_num)->getType()) {
                            case Composability::NI:
                                analyze_sca_combined(configuration.at(thread_num), thread_num);
                            break;
                            default:
                                // If the type of the configuration is non of the above,
                                // then nothing should happen at this position
                            break;
                            }
                        }

                        // Update probe combinations
                        if(m_settings->getSideChannelAnalysisSNI() || m_settings->getCombinedICSNI()){
                            sca_preprocessor.update(this->m_state, this->m_settings, modified, max_order, OutputProbes::SNI, thread_num);
                        }

                        for (auto &configuration : sca_configurations_multithreading) {
                            switch (configuration.at(thread_num)->getType()) {
                            case Composability::SNI:
                            case Composability::ICSNI:
                                analyze_sca_combined(configuration.at(thread_num), thread_num);
                            break;
                            default:
                                // If the type of the configuration is non of the above,
                                // then nothing should happen at this position
                            break;
                            }
                        }

                        // Update probe combinations
                        if(m_settings->getSideChannelAnalysisPINI() || m_settings->getCombinedICINI()){
                            sca_preprocessor.update(this->m_state, this->m_settings, modified, max_order, OutputProbes::PINI, thread_num);
                        }

                        for (auto &configuration : sca_configurations_multithreading) {
                            switch (configuration.at(thread_num)->getType()) {
                            case Composability::PINI:
                            case Composability::ICINI:
                                analyze_sca_combined(configuration.at(thread_num), thread_num);
                            break;
                            default:
                                // If the type of the configuration is non of the above,
                                // then nothing should happen at this position
                            break;
                            }
                        }


                        // Update number of input faults
                        if(this->m_settings->getCombinedCNI() || this->m_settings->getCombinedCSNI() || this->m_settings->getCombinedCINI()){
                            std::vector<const verica::Pin*> input_pins = m_state->m_netlist_model->module_under_test()->input_pins();
                            for(auto w : target_fault_collection[idx_fault_pair].first) {
                                if(std::find(input_pins.begin(), input_pins.end(), w->source_pin()) != input_pins.end() && w->source_pin()->port_type() != verica::Refresh){
                                    m_state->m_current_number_of_input_faults[thread_num]++;
                                }
                            }
                        }

                        // Adapt SCA order for all upcoming verifications 
                        max_order -= m_state->m_current_number_of_injected_faults;

                        // Update probe combinations
                        if(this->m_settings->getCombinedCNI()){
                            sca_preprocessor.update(this->m_state, this->m_settings, modified, max_order, OutputProbes::NI, thread_num);
                        }

                        for (auto &configuration : sca_configurations_multithreading) {
                            switch (configuration.at(thread_num)->getType()) {
                            case Composability::CNI:
                                analyze_sca_combined(configuration.at(thread_num), thread_num);
                            break;
                            default:
                                // If the type of the configuration is non of the above,
                                // then nothing should happen at this position
                            break;
                            }
                        }

                        // Update probe combinations
                        if(this->m_settings->getCombinedCSNI()){
                            sca_preprocessor.update(this->m_state, this->m_settings, modified, max_order, OutputProbes::SNI, thread_num);
                        }

                        for (auto &configuration : sca_configurations_multithreading) {
                            switch (configuration.at(thread_num)->getType()) {
                            case Composability::CSNI:
                                analyze_sca_combined(configuration.at(thread_num), thread_num);
                            break;
                            default:
                                // If the type of the configuration is non of the above,
                                // then nothing should happen at this position
                            break;
                            }
                        }


                        // Update probe combinations
                        if(this->m_settings->getCombinedCINI()){
                            sca_preprocessor.update(this->m_state, this->m_settings, modified, max_order, OutputProbes::PINI, thread_num);
                        }

                        for (auto &configuration : sca_configurations_multithreading) {
                            switch (configuration.at(thread_num)->getType()) {
                            case Composability::CINI:
                                // For all the cases above the analyze_sca_combined step must be
                                // performed at this position.
                                analyze_sca_combined(configuration.at(thread_num), thread_num);
                            break;
                            default:
                                // If the type of the configuration is non of the above,
                                // then nothing should happen at this position
                            break;
                            }
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

                    // Restore BDDs of faulted inputs only (internal faults are const in this loop)
                    this->m_injector->restore_faulty_models(input_combinations[input_comb_idx], thread_num);
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
        this->m_analyzer->configure(fault_strategy.get());
        fault_strategy->finalize(m_settings, m_state);
        this->m_analyzer->report();
        

        report_combined(sca_configurations, sca_configurations_multithreading);

        if(cancel_fia){
            return;
        }        
    }
}

template<typename T> void
Environment::analyze_sca_combined(T &strategy, int thread_num){
    /* Early-abort variable */
    bool cancel= false;

    /* Performing SCA analysis */
    for (unsigned int idx = 0; idx < this->m_state->m_probe_combinations[thread_num].size() && !cancel; idx++){
        /* Set current probe combination */
        strategy->current_probes(this->m_state->m_probe_combinations[thread_num][idx]);

        /* Assign probing strategy for current thread */
        strategy->execute(this->m_settings, this->m_state);

        /* Early abort */
        cancel = (!strategy->independent() && this->m_settings->getSideChannelInterrupt());
    }
}

template<typename T> void
Environment::analyze_random_sca_combined(T &strategy, int thread_num){
    /* Early-abort variable */
    bool cancel= false;

    /* Generate vector of additional probes that need to be considered for composability checks */
    /* Contains only one empty vector for random probing (without composability checks) */
    std::vector<std::vector<const verica::Wire*>> output_probes;
    std::vector<const verica::Wire*> empty_probes;
    output_probes.push_back(empty_probes);
    if(strategy->getType() == Composability::RCOMPOSABILITY){
        for(auto comb : this->m_state->m_random_probing_composability_output_combinations) output_probes.push_back(comb);
    }

    /* Performing SCA analysis */
    for(auto probes : output_probes){
        /* Initialize strategy */
        strategy->initialize(m_settings, m_state);

        for (unsigned int idx = 0; idx < m_state->m_probe_positions.size(); idx++){
            std::vector<const verica::Wire*> wires = this->m_state->m_probe_positions;
            wires.erase(wires.begin(), wires.begin() + idx);

            strategy->current_probes(std::make_pair(wires, probes));

            strategy->execute(m_settings, m_state);
        }

        /* Finalize strategy */
        strategy->finalize(m_settings, m_state);
    }
}

// template<typename T> void
void
Environment::report_sca_combined(std::unique_ptr<ConfigurationCombinable> &strategy,
                                 std::vector<std::unique_ptr<ConfigurationCombinable>> &strategies){

    if(m_settings->getSideChannelAnalysisRandomProbing()){
        long double prob = 0.0;
        long double prob_bound = 0.0;
        for(auto l : m_state->m_combined_leaking_probabilities) prob += l;
        for(auto l : m_state->m_combined_leaking_probabilities_upper_bound) prob_bound += l;
        m_state->m_combined_final_leaking_probability = prob;
        m_state->m_combined_final_leaking_probability_upper_bound = prob_bound;
    }

    if(m_settings->getSideChannelAnalysisRandomProbingComposability()){
        // accumulate all probabilities
        std::vector<long double> prob_vec((m_state->m_random_faulting_composability_input_combinations.size()+1), 0.0);
        for(auto leaking_prob_per_core : m_state->m_combined_composability_leaking_probabilities) {
            for(unsigned int idx=0; idx<leaking_prob_per_core.size(); idx++){
                prob_vec[idx] += leaking_prob_per_core[idx];
            }
        }

        std::vector<long double> prob_vec_bounded((m_state->m_random_faulting_composability_input_combinations.size()+1), 0.0);
        for(auto leaking_prob_per_core : m_state->m_combined_composability_leaking_probabilities_upper_bound) {
            for(unsigned int idx=0; idx<leaking_prob_per_core.size(); idx++){
                prob_vec_bounded[idx] += leaking_prob_per_core[idx];
            }
        }

        // find maximum
        long double prob = 0.0;
        unsigned int idx;
        for(unsigned int i=0; i<prob_vec.size(); i++){
            if(prob_vec[i] > prob){
                prob = prob_vec[i];
                idx = i;
            }
        }
        m_state->m_combined_final_composability_leaking_probability = prob;

        m_state->m_combined_final_composability_leaking_probability_upper_bounded = prob_vec_bounded[idx];
    }

    for (int core = 0; core < this->m_settings->getCores(); core++){
        strategy->insert(strategies.at(core).get());
    }

    if(!m_settings->getSideChannelAnalysisRandomProbing() && !m_settings->getSideChannelAnalysisRandomProbingComposability()) strategy->finalize(this->m_settings, this->m_state);
    this->m_analyzer->configure(strategy.get());
    this->m_analyzer->report();
}


// template<typename T> void
void
Environment::report_independent_combined(
    std::vector<std::unique_ptr<ConfigurationCombinable>> &strategies, std::string name){

    std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> combined_leaking_fault_injections;
    std::vector<std::vector<const verica::Wire*>> failing_probes;

    this->m_logger->header("COMBINED-ANALYZER (FAULT+PROBING)");
    this->m_logger->log("ANALYZER", "FIA+" + name, "Currently not supported!");
    this->m_logger->footer();
}
