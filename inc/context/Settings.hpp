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
        bool getFaultFNI() const;
        bool getFaultFSNI() const;


        /* Combined */
        bool getCombined() const;

        bool getCombinedCNI() const;
        bool getCombinedCSNI() const;
        bool getCombinedICSNI() const;



        /* Additional member functions */ 
        bool getFaultComposability() const;
        void setFaultVariate(const int &cores);


    private:

        /* Validate settings */
        void validateSettings(); 
        template<typename T> void checkSettingRange(const std::string &setting, const std::vector<T> &validSettings);
        void checkSettingFileExists(const std::string& setting);
        void checkSettingPathExists(const std::string& setting);
        void checkSettingGreaterEqual(const std::string &setting, const int &threshold);

        /* Boost property tree (parsed from .ini configuration) */
        boost::property_tree::ptree config;

        /* Settings */
        int cores = -1;
        int faultVariate = -1;
};

#endif // __VERICA_CONTEXT_SETTINGS_HPP_
