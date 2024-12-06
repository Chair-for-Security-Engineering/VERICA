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

#include "context/Settings.hpp"

#include <boost/property_tree/ptree_fwd.hpp>
#include <iostream>
#include <filesystem>
#include <omp.h>

/*
 * =========================================================================================
 * Constructor(s)
 * =========================================================================================
 */

Settings::Settings(int argc, char * argv[])
{
    std::string configurationPath;

    /* Boost property tree (parsed from .json configuration) */
    boost::property_tree::ptree config;

    /* Parsing of command-line arguments */
    try {
        boost::program_options::positional_options_description pdesc;
        pdesc.add("file", -1);

        boost::program_options::options_description desc{"Options"};
        desc.add_options()
            ("help,h", "Help screen")
            ("config,c", boost::program_options::value<std::string>()->default_value("config/settings"), "Textual description of configuration settings.");

        boost::program_options::variables_map vm;
        boost::program_options::store(boost::program_options::parse_command_line(argc, argv, desc), vm);
        boost::program_options::notify(vm);

        if(vm.count("help")) {
            std::cout << desc << std::endl;
        } else if (vm.count("config")) {
            configurationPath = vm["config"].as<std::string>();
            // boost::property_tree::ini_parser::read_ini(configurationPath, config);
            boost::property_tree::read_json(configurationPath, config);
        }

    } catch (const boost::program_options::error &ex) {
        throw ex;
    }

    // Validate parsed settings
    validateAndInitSettings(config);

    // Identify invalid combinations of settings
    checkInvalidSettingCombinations();

    // Composability
    this->faultComposability= (this->faultFNIEnabled || this->faultFSNIEnabled || this->faultFINIEnabled || this->faultRandomFaultingComposabilityEnabled || 
        this->cniEnabled || this->csniEnabled || this->icsniEnabled || this->ciniEnabled || this->iciniEnabled);
}

/*
 * =========================================================================================
 * Destructor
 * =========================================================================================
 */

Settings::~Settings()
{

}

/*
 * =========================================================================================
 * Member functions
 * =========================================================================================
 */
void Settings::setFaultVariate(const int& v){
    this->faultVariate = v;
}

int Settings::getCores() const {
    return this->cores;
}

int Settings::getMemory() const {
    return this->memory;
}

bool Settings::getReordering() const {
    return this->reorderingEnabled;
}

bool Settings::getVisualization() const {
    return this->visualizationEnabled;
}

std::string Settings::getVisualizationPath() const{
    return this->visualizationPath;
}

bool Settings::getVisualizationFull() const {
    return this->fullVisualizationEnabled;
}

bool Settings::getVisualizationPartial() const {
    return this->partialVisualization;
}

bool Settings::getComposer() const {
    return this->composerEnabled;
}

std::string Settings::getComposerPath() const{
    return this->composerPath;
}

bool Settings::getComposerIronMask() const {
    return this->composerIronMaskEnabled;
}

int Settings::getMasking() const {
    return this->scaMasking;
}

int Settings::getNumberOfFaults() const {
    return this->faultNumberOfFaults;
}

int Settings::getFaultVariate() const {
    return this->faultVariate;
}

int Settings::getVerbose() const {
    return this->verbose;
}

std::string
Settings::getDesignFilePath() const
{
    return this->designFilePath;
}

std::string
Settings::getLibraryFilePath() const
{
    return this->libraryFilePath;
}

std::string
Settings::getLibraryName() const
{
    return this->libraryName;
}

std::string
Settings::getSideChannelFilteringType() const
{
    return this->scaFilteringType;
}

std::string
Settings::getSideChannelWhiteList() const
{
    return this->scaWhiteList;
}

std::string
Settings::getSideChannelBlackList() const
{
    return this->scaBlackList;
}

std::string
Settings::getFaultFilteringType() const
{
    return this->faultFilteringType;
}

std::string
Settings::getFaultWhiteList() const
{
    return this->faultWhiteList;
}

std::string
Settings::getFaultBlackList() const
{
    return this->faultBlackList;
}

std::string
Settings::getAnnotationFilePath() const
{
    return this->annotationFilePath;
}

std::string Settings::getFaultAnalysisStrategy() const {
    return this->faultAnalysisStrategy;
}

bool Settings::getAnnotation() const {
    return this->annotationsEnabled;
}


/**********************************************************************
*                       Side-Channel Analysis
***********************************************************************/
bool Settings::getSideChannel() const {
    return this->scaEnabled;
}

int Settings::getSideChannelOrder() const {
    return this->scaOrder;
}

int Settings::getSideChannelVariate() const {
    return this->scaVariate;
}

bool Settings::getSideChannelInterrupt() const {
    return this->scaInterruptEnabled;
}

bool Settings::getSideChannelModelGlitches() const {
    return this->scaModelGlitchesEnabled;
}

bool Settings::getSideChannelModelTransitions() const {
    return this->scaModelTransitionsEnabled;
}

bool Settings::getSideChannelModelCouplings() const {
    return this->scaModelCouplingsEnabled;
}

bool Settings::getSideChannelAnalysisUniformity() const {
    return this->scaUniformityEnabled;
}

bool Settings::getSideChannelAnalysisProbing() const {
    return this->scaProbingEnabled;
}

bool Settings::getSideChannelAnalysisNI() const {
    return this->scaNIEnabled;
}

bool Settings::getSideChannelAnalysisSNI() const {
    return this->scaSNIEnabled;
}

bool Settings::getSideChannelAnalysisPINI() const {
    return this->scaPINIEnabled;
}

bool Settings::getSideChannelAnalysisRandomProbing() const {
    return this->scaRandomProbingEnabled;
}

bool Settings::getSideChannelAnalysisRandomProbingComposability() const {
    return this->scaRandomProbingComposabilityEnabled;
}

long double Settings::getSideChannelRandomProbingProbability() const {
    return this->scaRandomProbingProbability;
}

int Settings::getSideChannelRandomProbingMaxProbes() const {
    return this->scaRandomProbingMaxProbes;
}

std::string Settings::getSideChannelRandomProbabilityFile() const {
    return this->scaRandomProbingProbabilityFile;
}

int Settings::getSideChannelRandomProbingCopies() const {
    return this->scaRandomProbingCopies;
}
/**********************************************************************/



/**********************************************************************
*                           Fault Injection
***********************************************************************/
bool Settings::getFaultInjection() const {
    return this->faultInjectionEnabled;
}

bool Settings::getFaultInterrupt() const {
    return this->faultInterruptEnabled;
}

bool Settings::getReduceComplexity() const {
    return this->faultReduceComplexityEnabled;
}

bool Settings::getFaultLogicLevelErrorFlag() const {
    return this->faultLogicLevelErrorFlag;
}

bool Settings::getFaultThresholdFaulting() const {
    return this->faultThresholdFaultingEnabled;
}

bool Settings::getFaultFNI() const {
    return this->faultFNIEnabled;
}

bool Settings::getFaultFSNI() const {
    return this->faultFSNIEnabled;
}

bool Settings::getFaultFINI() const {
    return this->faultFINIEnabled;
}

bool Settings::getFaultRandomFaulting() const {
    return this->faultRandomFaultingEnabled;
}

bool Settings::getFaultRandomFaultingComposability() const {
    return this->faultRandomFaultingComposabilityEnabled;
}

bool Settings::getFaultVulnerabilityEnable() const {
    return (this->faultInjectionEnabled && this->faultVulnerabilityEnabled);
}

bool Settings::getFaultVulnerabilityUnshareOutputs() const {
    return (this->faultVulnerabilityEnabled && this->faultVulnerabilityUnshareOutputs);
}

bool Settings::getFaultVulnerabilityEstimator() const {
    return  (this->faultVulnerabilityEnabled && this->faultVulnerabilityEstimator);
}

int Settings::getFaultVulnerabilityEstimatorRuns() const {
    return this->faultVulnerabilityEstimatorRuns;
}

long double Settings::getFaultRandomFaultingProbability() const {
    return this->faultRandomFaultingProbability;
}

int Settings::getFaultRandomFaultingMaxFaults() const {
    return this->faultRandomFaultingMaxFaults;
}

std::string Settings::getFaultRandomFaultingProbabilityFile() const {
    return this->faultRandomFaultingProbabilityFile;
}
/**********************************************************************/


/**********************************************************************
*                           Combined Analysis
***********************************************************************/
bool Settings::getCombined() const {
    return this->combinedEnabled;
}

bool Settings::getCombinedCNI() const {
    return this->cniEnabled;
}

bool Settings::getCombinedCSNI() const {
    return this->csniEnabled;
}

bool Settings::getCombinedICSNI() const {
    return this->icsniEnabled;
}

bool Settings::getCombinedCINI() const {
    return this->ciniEnabled;
}

bool Settings::getCombinedICINI() const {
    return this->iciniEnabled;
}
/**********************************************************************/



bool Settings::getFaultComposability() const {
    return this->faultComposability;
}

std::string Settings::getFaultMappingPath() const {
    return this->faultMappingPath;
}

std::string Settings::getFaultLocation() const {
    return this->faultLocation;
}

void Settings::validateAndInitSettings(boost::property_tree::ptree & config){
    std::vector<std::string> boolean{"false", "true"};
    std::vector<int> zeroone{0,1};
    std::vector<int> verbose{VBASE, VINFO, VFULL, VDETAIL};
    std::vector<int> redComp{0,1,2,3};
    std::vector<std::string> filter{"none", "black", "white"};
    std::vector<std::string> location{"c", "s", "cs"};
    std::vector<std::string> lib{"NANG45", "NL"};
    std::vector<int> copies{0,1,2};
    std::vector<std::string> fault_strategy{"detection", "correction", "sfa", "sifa"};

    // validate cores
    std::vector<int> cores;

    // NOTE:
    // this line leads to problems, since omp_get_max_threads returns not all the time the number of threads of the system,
    // but returns the number of threads last used.
    // Thus, after setting the number of cores which should be used to x,
    // it is not possible to use a higher number x+1.
    // Since only x is returned by omp_get_max_threads and we check against the returned value.
    // for(int i=0; i<=omp_get_max_threads(); ++i) cores.push_back(i);
    for(int i=0; i<=omp_get_num_procs(); ++i) cores.push_back(i);

    // -------------------- General Settings --------------------
    // Determine current number of cores
    this->cores = checkSettingRange<int, int>("general.cores", cores, config);
    if (this->cores == 0){
        this->cores = omp_get_max_threads();
    }
    this->verbose = checkSettingRange<int, int>("general.verbose", verbose, config);

    // TODO: memory validation
    this->memory                    = config.get<unsigned long>("general.memory");

    // validate netlist settings
    this->designFilePath = checkSettingFileExists("general.netlist.file", config);

    // validate library settings
    this->libraryFilePath = checkSettingFileExists("general.library.file", config);
    this->libraryName = checkSettingRange<std::string, std::string>("general.library.name", lib, config);

    // validate filtering settings
    this->scaFilteringType = checkSettingRange<std::string, std::string>("general.filtering.sca.type", filter, config);
    this->scaWhiteList = checkSettingFileExists("general.filtering.sca.whitelist", config);
    this->scaBlackList = checkSettingFileExists("general.filtering.sca.blacklist", config);
    this->faultFilteringType = checkSettingRange<std::string, std::string>("general.filtering.fia.type", filter, config);
    this->faultWhiteList = checkSettingFileExists("general.filtering.fia.whitelist", config);
    this->faultBlackList = checkSettingFileExists("general.filtering.fia.blacklist", config);

    // validate annotation settings
    this->annotationFilePath = checkSettingFileExists("general.annotation.file", config);
    this->annotationsEnabled = checkSettingRange<bool,std::string>("general.annotation.apply", boolean, config);

    // validate cudd settings
    this->reorderingEnabled = checkSettingRange<bool, std::string>("general.cudd.reordering", boolean, config);

    // validate visualization settings
    this->visualizationEnabled = checkSettingRange<bool, std::string>("general.visualization.enable", boolean, config);
    this->visualizationPath = checkSettingPathExists("general.visualization.path", config);
    this->fullVisualizationEnabled = checkSettingRange<bool, std::string>("general.visualization.full", boolean, config);
    this->partialVisualization = checkSettingRange<bool, std::string>("general.visualization.partial", boolean, config);

    // validate composer settings
    this->composerEnabled = checkSettingRange<bool, std::string>("general.composer.enable", boolean, config);
    this->composerPath = checkSettingPathExists("general.composer.path", config);
    this->composerIronMaskEnabled = checkSettingRange<bool, std::string>("general.composer.iron-mask", boolean, config);
    // ---------------------------------------------------------



    // -------------------------- SCA --------------------------
    // validate SCA settings
    this->scaEnabled = checkSettingRange<bool, std::string>("side-channel.enable", boolean, config);

    this->scaOrder = checkSettingGreaterEqual("side-channel.configuration.order", 0, config);
    this->scaVariate = checkSettingGreaterEqual("side-channel.configuration.variate", 0, config);
    this->scaMasking = checkSettingRange<int, int>("side-channel.configuration.masking", zeroone, config);
    this->scaInterruptEnabled = checkSettingRange<bool, std::string>("side-channel.configuration.interrupt", boolean, config);

    this->scaModelGlitchesEnabled = checkSettingRange<bool, std::string>("side-channel.model.glitches", boolean, config);
    this->scaModelTransitionsEnabled = checkSettingRange<bool, std::string>("side-channel.model.transitions", boolean, config);
    this->scaModelCouplingsEnabled = checkSettingRange<bool, std::string>("side-channel.model.couplings", boolean, config);

    this->scaUniformityEnabled = checkSettingRange<bool, std::string>("side-channel.analysis.uniformity", boolean, config);
    this->scaProbingEnabled = checkSettingRange<bool, std::string>("side-channel.analysis.probing", boolean, config);
    this->scaNIEnabled = checkSettingRange<bool, std::string>("side-channel.analysis.p-ni", boolean, config);
    this->scaSNIEnabled = checkSettingRange<bool, std::string>("side-channel.analysis.p-sni", boolean, config);
    this->scaPINIEnabled = checkSettingRange<bool, std::string>("side-channel.analysis.pini", boolean, config);
    this->scaRandomProbingEnabled = checkSettingRange<bool, std::string>("side-channel.analysis.random-probing", boolean, config);
    this->scaRandomProbingComposabilityEnabled = checkSettingRange<bool, std::string>("side-channel.analysis.random-probing-composability", boolean, config);

    this->scaRandomProbingProbability = checkSettingGreaterEqual("side-channel.random-probing.probability", 0.0, config);
    this->scaRandomProbingMaxProbes = checkSettingGreaterEqual("side-channel.random-probing.max-probes", 0, config);
    this->scaRandomProbingProbabilityFile = checkSettingPathExists("side-channel.random-probing.probability-file", config);
    this->scaRandomProbingCopies = checkSettingRange<int, int>("side-channel.random-probing.consider-copies", copies, config);

    // -------------------------- FIA --------------------------
    // validate FIA settings
    this->faultInjectionEnabled = checkSettingRange<bool, std::string>("fault-injection.enable", boolean, config);

    this->faultNumberOfFaults = checkSettingGreaterEqual("fault-injection.configuration.number", 0, config);
    this->faultVariate = checkSettingGreaterEqual("fault-injection.configuration.variate", 0, config);
    this->faultInterruptEnabled = checkSettingRange<bool, std::string>("fault-injection.configuration.interrupt", boolean, config);

    this->faultMappingPath = checkSettingFileExists("fault-injection.model.mapping", config);
    this->faultLocation = checkSettingRange<std::string, std::string>("fault-injection.model.location", location, config);

    this->faultReduceComplexityEnabled = checkSettingRange<bool, std::string>("fault-injection.analysis.reduced_complexity", boolean, config);
    this->faultAnalysisStrategy = checkSettingRange<std::string, std::string>("fault-injection.analysis.strategy", fault_strategy, config);
    this->faultLogicLevelErrorFlag = checkSettingRange<bool, std::string>("fault-injection.analysis.logic-level-error-flag", boolean, config);
    this->faultThresholdFaultingEnabled = checkSettingRange<bool, std::string>("fault-injection.analysis.k-faulting", boolean, config);
    this->faultFNIEnabled = checkSettingRange<bool, std::string>("fault-injection.analysis.f-ni", boolean, config);
    this->faultFSNIEnabled = checkSettingRange<bool, std::string>("fault-injection.analysis.f-sni", boolean, config);
    this->faultFINIEnabled = checkSettingRange<bool, std::string>("fault-injection.analysis.fini", boolean, config);
    this->faultRandomFaultingEnabled = checkSettingRange<bool, std::string>("fault-injection.analysis.random-faulting", boolean, config);
    this->faultRandomFaultingComposabilityEnabled = checkSettingRange<bool, std::string>("fault-injection.analysis.random-faulting-composability", boolean, config);

    this->faultVulnerabilityEnabled         = checkSettingRange<bool, std::string>("fault-injection.vulnerability.enable", boolean, config);
    this->faultVulnerabilityUnshareOutputs  = checkSettingRange<bool, std::string>("fault-injection.vulnerability.unshare_outputs", boolean, config);
    this->faultVulnerabilityEstimator       = checkSettingRange<bool, std::string>("fault-injection.vulnerability.estimator", boolean, config);
    this->faultVulnerabilityEstimatorRuns   = checkSettingGreaterEqual("fault-injection.vulnerability.runs", 0, config);

    this->faultRandomFaultingProbability = checkSettingGreaterEqual("fault-injection.random-faulting.probability", 0.0, config);
    this->faultRandomFaultingMaxFaults = checkSettingGreaterEqual("fault-injection.random-faulting.max-faults", 0, config);
    this->faultRandomFaultingProbabilityFile = checkSettingPathExists("fault-injection.random-faulting.probability-file", config);
    // ---------------------------------------------------------

    // ------------------ Combined Analysis---------------------
    // validate Combined settings
    this->combinedEnabled   = checkSettingRange<bool, std::string>("combined.enable", boolean, config);
    this->cniEnabled        = checkSettingRange<bool, std::string>("combined.analysis.c-ni", boolean, config);
    this->csniEnabled       = checkSettingRange<bool, std::string>("combined.analysis.c-sni", boolean, config);
    this->icsniEnabled      = checkSettingRange<bool, std::string>("combined.analysis.ic-sni", boolean, config);
    this->ciniEnabled       = checkSettingRange<bool, std::string>("combined.analysis.cini", boolean, config);
    this->iciniEnabled      = checkSettingRange<bool, std::string>("combined.analysis.icini", boolean, config);
    // ---------------------------------------------------------
}

template<typename rT, typename iT>
rT Settings::checkSettingRange(const std::string &setting, const std::vector<iT> &validSettings, boost::property_tree::ptree &config){
    rT val = config.get<rT>(setting);
    if(std::find(validSettings.begin(), validSettings.end(), config.get<iT>(setting)) == validSettings.end()){
        throw std::logic_error("[CONFIG] Invalid value for " + setting + "!");
    }
    else{
        return val;
    }
}

std::string Settings::checkSettingFileExists(const std::string &setting, boost::property_tree::ptree &config) {
    std::string path = config.get<std::string>(setting);
    std::ifstream f(path.c_str());
    if(!f.good()){
        throw std::logic_error("[CONFIG] Invalid path for " + setting + "!");
    }
    else{
        return path;
    }
}

std::string Settings::checkSettingPathExists(const std::string &setting, boost::property_tree::ptree &config) {
    std::string path = config.get<std::string>(setting);
    const std::filesystem::path p{path};
    if(!std::filesystem::exists(p)){
        throw std::logic_error("[CONFIG] Directory for " + setting + " does not exist (" + path + ")!");
    }
    else{
        return path;
    }
}

template<typename T> T  Settings::checkSettingGreaterEqual(const std::string &setting, const T &threshold, boost::property_tree::ptree &config){
    T num = config.get<T>(setting);
    if(num < threshold){
        throw std::logic_error("[CONFIG] Invalid value for " + setting + "!");
    }
    else{
        return num;
    }
}

void Settings::checkInvalidSettingCombinations(){
    // The SCA indistinguishability is currently only supported for probing security 
    // combined analyses are also not support yet
    if(this->getSideChannelAnalysisRandomProbing()){
        if(this->getSideChannelModelGlitches() || this->getSideChannelModelTransitions() || this->getSideChannelModelCouplings()){
            throw std::logic_error("[SETTINGS] Enabling glitches, transitions, and couplings in the random probing model is not supported!");
        }
    }

    // Check settings for masking (i.e., Boolean or arithmetic)
    if(this->getMasking() != 0){
        throw std::logic_error("[SETTINGS] By now, VERICA is only tested for Boolean masking! Please set side-channel.configuration.masking to 0!");
    }

    // Check transitions settings
    if(this->getSideChannelModelTransitions()){
        throw std::logic_error("[SETTINGS] By now, VERICA does not support verifications in the transition-extended probing model! Please disable side-channel.model.transitions!");
    }

    // Check couplings settings
    if(this->getSideChannelModelCouplings()){
        throw std::logic_error("[SETTINGS] By now, VERICA does not support verifications in the coupling-extended probing model! Please disable side-channel.model.couplings!");
    }
}
