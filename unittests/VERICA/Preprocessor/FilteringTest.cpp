/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Niklas Entschladen (niklas.entschladen@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2020/634.pdf
 *           https://eprint.iacr.org/2021/936.pdf
 * -----------------------------------------------------------------
 *
 * Copyright (c) 2021, Niklas Entschladen
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


#ifdef UNITTEST

#define BOOST_TEST_DYN_LINK
#include <boost/test/unit_test.hpp>

#include "unittest/TestEnvironment.hpp"
#include "preprocessor/ConfigurationFiltering.hpp"

BOOST_AUTO_TEST_SUITE(Filtering_Test_Suite)

/************************ CONFIGURATIONS ************************/
const int argc = 2;
char UNITTEST_EXEC[] = "bin/test/verica";
std::string CONFIG_ARG_PARAM = "--config=";
// We actually do not need separate configuration files here. The correct function execution is ensured in the test cases themselves.
// The configuration files can be used to check the correct execution of the execute() function.
// However, we decided to check the clear_filter and apply_filter functions separately. 
std::string noFilterConfig = "unittests/VERICA/config/Filtering/noFilter.json";
std::string blacklistFilterConfig = "unittests/VERICA/config/Filtering/blacklistFilter.json";
std::string whitelistFilterConfig = "unittests/VERICA/config/Filtering/whitelistFilter.json";

std::vector<std::string> blacklistFilter {
    "comp_",
    "cor_",
    "creg_",
    "ref_1_regData_"
};

std::vector<std::string> whitelistFilter {
    "Red_AddKey"
};
/****************************************************************/

/***************** AUXILIARY CLASS DEFINITIONS *****************/
class TestConfigurationFiltering : public ConfigurationFiltering {
    public:
        TestConfigurationFiltering(): ConfigurationFiltering("TEST_FILTERING") {}
};
/***************************************************************/

/* Function used to check if the filter contains a module name */
bool
checkModule(std::vector<std::string> filter, std::string m_name) {
    bool nameFound = false;
    for (auto name : filter) {
        if(m_name.find(name) != std::string::npos) nameFound = true;
    }
    return nameFound;
}
/***************************************************************/

// Check the correct functionality of not using any filter.
BOOST_FIXTURE_TEST_CASE(Filtering_No_Filter_Test, TestConfigurationFiltering) {
    // Prepare check of the clear_filter function.
    std::string conf_str(CONFIG_ARG_PARAM + noFilterConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::PARSER};

    // Check the clear_filter function.
    BOOST_REQUIRE_NO_THROW(clear_filter(testEnv.getState()));
    BOOST_CHECK((testEnv.getState()->m_netlist_model->get_module(testEnv.getState()->m_netlist_model->topmodule()->uid()))->sca_ignore() == false);
}

// Check the correct functionality of the blacklist filter for SCA.
BOOST_FIXTURE_TEST_CASE(Filtering_Blacklist_Filter_Test, TestConfigurationFiltering) {
    // Prepare check of the apply_filter function.
    std::string conf_str(CONFIG_ARG_PARAM + blacklistFilterConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::PARSER};

    // Check the apply_filter function using a blacklist filter.
    BOOST_REQUIRE_NO_THROW(apply_filter(testEnv.getSettings(), testEnv.getState(), true, false));
    std::vector<std::string> filter = blacklistFilter;
    for (auto& module : testEnv.getState()->m_netlist_model->modules()) {
        if (checkModule(filter, module.second->name())) {
            BOOST_CHECK(module.second->sca_ignore() == true);
            if (module.second->gate()) {
                for(auto p:module.second->output_pins()) {
                    BOOST_CHECK(p->fan_out()->sca_ignore() == true);
                }
            }
        }
        else {
            BOOST_CHECK(module.second->sca_ignore() == false);
            if (module.second->gate()) {
                for(auto p:module.second->output_pins()) {
                    BOOST_CHECK(p->fan_out()->sca_ignore() == false);
                }
            }
        }
    }
}

// Check the correct functionality of the whitelist filter for SCA.
BOOST_FIXTURE_TEST_CASE(Filtering_Whitelist_Filter_Test, TestConfigurationFiltering) {
    // Prepare check of the apply_filter function.
    std::string conf_str(CONFIG_ARG_PARAM + whitelistFilterConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::PARSER};

    // Check the clear_filter function using a whitelist filter.
    BOOST_REQUIRE_NO_THROW(apply_filter(testEnv.getSettings(), testEnv.getState(), false, false));
    std::vector<std::string> filter = whitelistFilter;
    for (auto& module : testEnv.getState()->m_netlist_model->modules()) {
        if (checkModule(filter, module.second->name())) {
            BOOST_CHECK(module.second->sca_ignore() == false);
            if (module.second->gate()) {
                for(auto p:module.second->output_pins()) {
                    BOOST_CHECK(p->fan_out()->sca_ignore() == false);
                }
            }
        }
        else {
            BOOST_CHECK(module.second->sca_ignore() == true);
            if (module.second->gate()) {
                for(auto p:module.second->output_pins()) {
                    BOOST_CHECK(p->fan_out()->sca_ignore() == true);
                }
            }
        }
    }
}

BOOST_AUTO_TEST_SUITE_END()
#endif

