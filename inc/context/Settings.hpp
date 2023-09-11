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

#ifndef __VERICA_CONTEXT_SETTINGS_HPP_
#define __VERICA_CONTEXT_SETTINGS_HPP_

#include <boost/program_options.hpp>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/json_parser.hpp>

#include <string>

#include "util.hpp"

class Settings
{
    public:

        /* Constructor */
        Settings(int argc, char * argv[]);

        /* Destructor */
        ~Settings();

        /* Member functions reading settings */
        /* General */
        int getVerbose() const;
        int getCores() const;
        int getMemory() const;

        std::string getDesignFilePath() const;

        std::string getLibraryFilePath() const;
        std::string getLibraryName() const;

        std::string getSideChannelFilteringType() const;
        std::string getSideChannelWhiteList() const;
        std::string getSideChannelBlackList() const;
        std::string getFaultFilteringType() const;
        std::string getFaultWhiteList() const;
        std::string getFaultBlackList() const;

        std::string getAnnotationFilePath() const;
        bool getAnnotation() const;

        bool getReordering() const;

        bool getVisualization() const;
        std::string getVisualizationPath() const;
        bool getVisualizationFull() const;
        bool getVisualizationPartial() const;


        /* Side-Channel */
        bool getSideChannel() const;

        int getSideChannelOrder() const;
        int getSideChannelVariate() const;
        int getMasking() const;
        bool getSideChannelInterrupt() const;

        bool getSideChannelModelGlitches() const;
        bool getSideChannelModelTransitions() const;
        bool getSideChannelModelCouplings() const;

        bool getSideChannelAnalysisUniformity() const;
        bool getSideChannelAnalysisProbing() const;
        bool getSideChannelAnalysisNI() const;
        bool getSideChannelAnalysisSNI() const;
        bool getSideChannelAnalysisPINI() const;


        /* Fault-Injection */
        bool getFaultInjection() const;

        int getNumberOfFaults() const;
        int getFaultVariate() const;
        bool getFaultInterrupt() const;

        std::string getFaultMappingPath() const;
        std::string getFaultLocation() const;

        bool getReduceComplexity() const;
        std::string getFaultAnalysisStrategy() const;
        bool getFaultLogicLevelErrorFlag() const;
        bool getFaultFNI() const;
        bool getFaultFSNI() const;
        bool getFaultFINI() const;


        /* Combined */
        bool getCombined() const;

        bool getCombinedCNI() const;
        bool getCombinedCSNI() const;
        bool getCombinedICSNI() const;
        bool getCombinedCINI() const;
        bool getCombinedICINI() const;



        /* Additional member functions */
        bool getFaultComposability() const;
        void setFaultVariate(const int &cores);


    private:

        /* Validate settings */
        void validateAndInitSettings(boost::property_tree::ptree & config);
        template<typename rT, typename  iT>
        rT checkSettingRange(const std::string &setting, const std::vector<iT> &validSettings, boost::property_tree::ptree & config);
        std::string checkSettingFileExists(const std::string& setting, boost::property_tree::ptree & config);
        std::string checkSettingPathExists(const std::string& setting, boost::property_tree::ptree & config);
        int checkSettingGreaterEqual(const std::string &setting, const int &threshold, boost::property_tree::ptree & config);


        /* Settings */
        int cores = -1;
        unsigned long memory = 0;
        int faultVariate = -1;
        bool reorderingEnabled = false;
        bool visualizationEnabled = false;
        std::string visualizationPath = "";
        bool fullVisualizationEnabled = false;
        bool partialVisualization = false;
        int verbose = 0;
        std::string designFilePath = "";
        std::string libraryFilePath = "";
        std::string libraryName = "";
        bool annotationsEnabled = false;
        std::string annotationFilePath = "";



        // Side-Channel Analysis
        int scaMasking = 0;
        bool scaEnabled = false;
        bool scaUniformityEnabled = false;
        bool scaProbingEnabled = false;
        bool scaNIEnabled = false;
        bool scaSNIEnabled = false;
        bool scaPINIEnabled = false;
        std::string scaFilteringType = "";
        std::string scaWhiteList = "";
        std::string scaBlackList = "";
        int scaOrder = 0;
        int scaVariate = 0;
        bool scaInterruptEnabled = false;
        bool scaModelGlitchesEnabled = false;
        bool scaModelTransitionsEnabled = false;
        bool scaModelCouplingsEnabled = false;



        // Fault Injection
        int faultNumberOfFaults = 0;
        bool faultInjectionEnabled = false;
        bool faultInterruptEnabled = false;
        bool faultReduceComplexityEnabled = false;
        bool faultLogicLevelErrorFlag = false;
        bool faultFNIEnabled = false;
        bool faultFSNIEnabled = false;
        bool faultFINIEnabled = false;
        std::string faultFilteringType = "";
        std::string faultWhiteList = "";
        std::string faultBlackList = "";
        std::string faultAnalysisStrategy = "";
        std::string faultMappingPath = "";
        std::string faultLocation = "";



        // Combined Analysis
        bool combinedEnabled = false;
        bool cniEnabled = false;
        bool csniEnabled = false;
        bool icsniEnabled = false;
        bool ciniEnabled = false;
        bool iciniEnabled = false;



        // Composability
        bool faultComposability = false;
};

#endif // __VERICA_CONTEXT_SETTINGS_HPP_
