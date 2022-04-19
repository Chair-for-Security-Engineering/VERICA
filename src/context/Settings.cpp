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

#include "context/Settings.hpp"

#include <iostream>

/* 
 * =========================================================================================
 * Constructor(s)
 * =========================================================================================
 */

Settings::Settings(int argc, char * argv[])
{
    std::string configurationPath;

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
            // boost::property_tree::ini_parser::read_ini(configurationPath, this->config);
            boost::property_tree::read_json(configurationPath, this->config);
        }

    } catch (const boost::program_options::error &ex) {
        throw ex;
    }

    // Validate parsed settings
    validateSettings();

    // Determine current number of cores
    if (this->cores == 0) 
        this->cores = omp_get_max_threads();    
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
    if(this->cores == -1) return this->config.get<int>("general.cores");
    return this->cores;
}

int Settings::getMemory() const {
    return this->config.get<int>("general.memory");
}

bool Settings::getReordering() const {
    return this->config.get<bool>("general.cudd.reordering");
}

bool Settings::getVisualization() const {
    return this->config.get<bool>("general.visualization.enable");
}

bool Settings::getVisualizationFull() const {
    return this->config.get<bool>("general.visualization.full");
}

bool Settings::getVisualizationPartial() const {
    return this->config.get<bool>("general.visualization.partial");
}

int Settings::getMasking() const {
    return this->config.get<int>("side-channel.configuration.masking");
}

int Settings::getNumberOfFaults() const {
    return this->config.get<int>("fault-injection.configuration.number");
}

int Settings::getFaultVariate() const {
    if(this->faultVariate == -1) return this->config.get<int>("fault-injection.configuration.variate");
    return this->faultVariate;
}

int Settings::getVerbose() const {
    return this->config.get<int>("general.verbose");
}

std::string
Settings::getDesignFilePath() const
{
    return this->config.get<std::string>("general.netlist.file");
}

std::string
Settings::getLibraryFilePath() const
{
    return this->config.get<std::string>("general.library.file");
}

std::string
Settings::getLibraryName() const
{
    return this->config.get<std::string>("general.library.name");
}

std::string
Settings::getFilteringType() const
{
    return this->config.get<std::string>("general.filtering.type");
}

std::string
Settings::getWhiteList() const
{
    return this->config.get<std::string>("general.filtering.whitelist");
}

std::string
Settings::getBlackList() const
{
    return this->config.get<std::string>("general.filtering.blacklist");
}

std::string
Settings::getAnnotationFilePath() const
{
    return this->config.get<std::string>("general.annotation.file");
}

std::string Settings::getFaultAnalysisStrategy() const {
    return this->config.get<std::string>("fault-injection.analysis.strategy");
}

bool Settings::getAnnotation() const {
    return this->config.get<bool>("general.annotation.apply");
}

bool Settings::getSideChannel() const {
    return this->config.get<bool>("side-channel.enable");
}

int Settings::getSideChannelOrder() const {
    return this->config.get<int>("side-channel.configuration.order");
}

int Settings::getSideChannelVariate() const {
    return this->config.get<int>("side-channel.configuration.variate");
}

bool Settings::getSideChannelInterrupt() const {
    return this->config.get<bool>("side-channel.configuration.interrupt");
}

bool Settings::getSideChannelModelGlitches() const {
    return this->config.get<bool>("side-channel.model.glitches");
}

bool Settings::getSideChannelModelTransitions() const {
    return this->config.get<bool>("side-channel.model.transitions");
}

bool Settings::getSideChannelModelCouplings() const {
    return this->config.get<bool>("side-channel.model.couplings");
}

bool Settings::getSideChannelAnalysisUniformity() const {
    return (this->config.get<bool>("side-channel.enable") && this->config.get<bool>("side-channel.analysis.uniformity"));
}

bool Settings::getSideChannelAnalysisProbing() const {
    return (this->config.get<bool>("side-channel.enable") && this->config.get<bool>("side-channel.analysis.probing"));
}

bool Settings::getSideChannelAnalysisNI() const {
    return (this->config.get<bool>("side-channel.enable") && this->config.get<bool>("side-channel.analysis.p-ni"));
}

bool Settings::getSideChannelAnalysisSNI() const {
    return (this->config.get<bool>("side-channel.enable") && this->config.get<bool>("side-channel.analysis.p-sni"));
}

bool Settings::getSideChannelAnalysisPINI() const {
    return (this->config.get<bool>("side-channel.enable") && this->config.get<bool>("side-channel.analysis.pini"));
}

bool Settings::getFaultInjection() const {
    return this->config.get<bool>("fault-injection.enable");
}

bool Settings::getFaultInterrupt() const {
    return this->config.get<bool>("fault-injection.configuration.interrupt");
}

bool Settings::getReduceComplexity() const {
    return this->config.get<bool>("fault-injection.analysis.reduced_complexity");
}

bool Settings::getFaultFNI() const {
    return (this->config.get<bool>("fault-injection.enable") && this->config.get<bool>("fault-injection.analysis.f-ni"));
}

bool Settings::getFaultFSNI() const {
    return (this->config.get<bool>("fault-injection.enable") && this->config.get<bool>("fault-injection.analysis.f-sni"));
}

bool Settings::getCombined() const {
    return this->config.get<bool>("combined.enable");
}

bool Settings::getCombinedCNI() const {
    return (this->config.get<bool>("combined.enable") && this->config.get<bool>("combined.analysis.c-ni"));
}

bool Settings::getCombinedCSNI() const {
    return (this->config.get<bool>("combined.enable") && this->config.get<bool>("combined.analysis.c-sni"));
}

bool Settings::getCombinedICSNI() const {
    return (this->config.get<bool>("combined.enable") && this->config.get<bool>("combined.analysis.ic-sni"));
}

bool Settings::getFaultComposability() const {
    return (getFaultFNI() || getFaultFSNI() || getCombinedCNI() || getCombinedCSNI() || getCombinedICSNI());
}

std::string Settings::getFaultMappingPath() const {
    return this->config.get<std::string>("fault-injection.model.mapping");
}

std::string Settings::getFaultLocation() const {
    return this->config.get<std::string>("fault-injection.model.location");
}

void Settings::validateSettings(){
    std::vector<std::string> boolean{"false", "true"};
    std::vector<int> zeroone{0,1};
    std::vector<int> verbose{VBASE, VINFO, VFULL, VDETAIL};
    std::vector<int> redComp{0,1,2,3};
    std::vector<std::string> filter{"none", "black", "white"};
    std::vector<std::string> location{"c", "s", "cs"};
    std::vector<std::string> lib{"NANG45", "NL"};
    std::vector<std::string> fault_strategy{"detection", "correction", "sfa", "sifa"};

    // validate cores
    std::vector<int> cores;
    for(int i=0; i<=omp_get_max_threads(); ++i) cores.push_back(i);

    // validate general settings
    checkSettingRange("general.cores", cores);
    checkSettingRange("general.verbose", verbose);
    // TODO: memory

    // validate netlist settings
    checkSettingFileExists("general.netlist.file");

    // validate library settings
    checkSettingFileExists("general.library.file");
    checkSettingRange("general.library.name", lib);

    // validate filtering settings
    checkSettingRange("general.filtering.type", filter);
    checkSettingFileExists("general.filtering.whitelist");
    checkSettingFileExists("general.filtering.blacklist");

    // validate annotation settings
    checkSettingFileExists("general.annotation.file");
    checkSettingRange("general.annotation.apply", boolean);

    // validate cudd settings
    checkSettingRange("general.cudd.reordering", boolean);

    // validate visualization settings
    checkSettingRange("general.visualization.enable", boolean);
    checkSettingRange("general.visualization.full", boolean);
    checkSettingRange("general.visualization.partial", boolean);

    // validate SCA settings
    checkSettingRange("side-channel.enable", boolean);
    checkSettingGreaterEqual("side-channel.configuration.order", 0);
    checkSettingGreaterEqual("side-channel.configuration.variate", 0);
    checkSettingRange("side-channel.configuration.masking", zeroone);
    checkSettingRange("side-channel.model.glitches", boolean);
    checkSettingRange("side-channel.model.transitions", boolean);
    checkSettingRange("side-channel.model.couplings", boolean);
    checkSettingRange("side-channel.analysis.uniformity", boolean);
    checkSettingRange("side-channel.analysis.probing", boolean);
    checkSettingRange("side-channel.analysis.p-ni", boolean);
    checkSettingRange("side-channel.analysis.p-sni", boolean);
    checkSettingRange("side-channel.analysis.pini", boolean);

    // validate FIA settings
    checkSettingRange("fault-injection.enable", boolean);
    checkSettingGreaterEqual("fault-injection.configuration.number", 0);
    checkSettingGreaterEqual("fault-injection.configuration.variate", 1);
    checkSettingRange("fault-injection.configuration.interrupt", boolean);
    checkSettingFileExists("fault-injection.model.mapping");
    checkSettingRange("fault-injection.model.location", location);
    checkSettingRange("fault-injection.analysis.reduced_complexity", boolean);
    checkSettingRange("fault-injection.analysis.strategy", fault_strategy);
    checkSettingRange("fault-injection.analysis.f-ni", boolean);
    checkSettingRange("fault-injection.analysis.f-sni", boolean);

    // validate Combined settings
    checkSettingRange("combined.enable", boolean);
    checkSettingRange("combined.analysis.c-ni", boolean);
    checkSettingRange("combined.analysis.c-sni", boolean);
    checkSettingRange("combined.analysis.ic-sni", boolean);
}

template<typename T> void Settings::checkSettingRange(const std::string &setting, const std::vector<T> &validSettings){
    if(std::find(validSettings.begin(), validSettings.end(), this->config.get<T>(setting)) == validSettings.end())
        throw std::logic_error("[CONFIG] Invalid value for " + setting + "!"); 
}

void Settings::checkSettingFileExists(const std::string &setting) {
    std::string path = this->config.get<std::string>(setting);
    std::ifstream f(path.c_str());
    if(!f.good())
        throw std::logic_error("[CONFIG] Invalid path for " + setting + "!"); 
}

void Settings::checkSettingGreaterEqual(const std::string &setting, const int &threshold){
    int num = this->config.get<int>(setting);
    if(num < threshold)
        throw std::logic_error("[CONFIG] Invalid value for " + setting + "!"); 
}
