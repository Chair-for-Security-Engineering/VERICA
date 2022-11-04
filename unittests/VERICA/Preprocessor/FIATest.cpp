/*
 * -----------------------------------------------------------------
 * COMPANY : Ruhr-Universität Bochum, Chair for Security Engineering
 * AUTHOR  : Niklas Entschladen (niklas.entschladen@rub.de)
 * DOCUMENT: https://eprint.iacr.org/2022/484
 *           https://eprint.iacr.org/2022/1131
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
#include "preprocessor/ConfigurationFIA.hpp"

BOOST_AUTO_TEST_SUITE(FIA_Test_Suite)

/************************ CONFIGURATIONS ************************/
const int argc = 2;
char UNITTEST_EXEC[] = "bin/test/verica";
std::string CONFIG_ARG_PARAM = "--config=";
std::string trivialNetlistConfig = "unittests/VERICA/config/FIA/trivial.json";
std::string highVariateConfig = "unittests/VERICA/config/FIA/highVariate.json";
std::string erroneousGateIdentifierConfig = "unittests/VERICA/config/FIA/erroneousGateIdentifier.json";
std::string erroneousFaultTypeConfig = "unittests/VERICA/config/FIA/erroneousFaultType.json";
std::string complexityReductionErrorConfig = "unittests/VERICA/config/FIA/complexityReductionError.json";
std::string laserFaultMapConfig = "unittests/VERICA/config/FIA/laserFaultMap.json";
std::string faultLocation_c_n = "unittests/VERICA/config/FIA/FaultLocations/cNoFilter.json";
std::string faultLocation_s_n = "unittests/VERICA/config/FIA/FaultLocations/sNoFilter.json";
std::string faultLocation_cs_n = "unittests/VERICA/config/FIA/FaultLocations/csNoFilter.json";
std::string faultLocation_cs_b = "unittests/VERICA/config/FIA/FaultLocations/csBlacklist.json";
std::string faultLocation_cs_w = "unittests/VERICA/config/FIA/FaultLocations/csWhitelist.json";
std::string complexityReductionConfig = "unittests/VERICA/config/FIA/complexityReduction.json";

const pt::ptree knownAnswers = getKnownAnswers("unittests/VERICA/knownAnswers.json");
/****************************************************************/

/***************** AUXILIARY CLASS DEFINITIONS *****************/
class TestConfigurationFIA : public ConfigurationFIA {
    public:
        TestConfigurationFIA(): ConfigurationFIA("TEST_FIA") {}
};
/***************************************************************/

// The stepwise FIA of a trivial design MUST NOT throw any exception.
BOOST_FIXTURE_TEST_CASE(FIA_Trivial_Netlist_Test, TestConfigurationFIA) {
    // Prepare check of the FIA functions.
    std::string conf_str(CONFIG_ARG_PARAM + trivialNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::ELABORATE};

    // Check the fault_determine_variate function.
    BOOST_REQUIRE_NO_THROW(fault_determine_variate(testEnv.getSettings(), testEnv.getState()));

    // Check the fault_get_mapping function.
    BOOST_REQUIRE_NO_THROW(fault_get_mapping(testEnv.getSettings()->getFaultMappingPath(), testEnv.getState()->m_cell_library, testEnv.getState()->m_faultMap));

    /* Ensure all pins are equipped with an gate identifier */
    for (auto p : testEnv.getState()->m_netlist_model->module_under_test()->input_pins()){
        testEnv.getState()->m_netlist_model->set_pin_gate_identifier(p->uid(), 10);
    }

    // Check the fault_get_locations function.
    BOOST_REQUIRE_NO_THROW(fault_get_locations(testEnv.getSettings()->getFaultLocation(), testEnv.getState()->m_netlist_model, testEnv.getState()->m_faultLocations));

    // Check the fault_determine_propagation_paths function.
    BOOST_REQUIRE_NO_THROW(fault_determine_propagation_paths(testEnv.getState()->m_netlist_model));

    // Input wires need to be added to the valid fault locations
    for(auto p : testEnv.getState()->m_netlist_model->module_under_test()->input_pins()){
        testEnv.getState()->m_faultLocations.push_back(p->fan_out());
    }

    // Check the fault_apply_complexity_reduction function.
    BOOST_REQUIRE_NO_THROW(fault_apply_complexity_reduction(testEnv.getSettings(), testEnv.getState()->m_netlist_model, testEnv.getState()->m_faultLocations, testEnv.getState()->m_faultLocationsReduced, testEnv.getState()->m_faultMap));
}

// The fault_determine_variate function MUST throw an exception when the variate is larger than the total number if available logic stages.
BOOST_FIXTURE_TEST_CASE(FIA_High_Variate_Exception_Test, TestConfigurationFIA) {
    // Prepare check of the fault_determine_variate function.
    std::string conf_str(CONFIG_ARG_PARAM + highVariateConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv {argc, argv, TestEnvironment::execPhases::ELABORATE};

    // Check the fault_determine_variate function.
    BOOST_REQUIRE_THROW(fault_determine_variate(testEnv.getSettings(), testEnv.getState()), std::logic_error);
}

// The fault_get_mapping MUST throw an exception when given an undefined gate identifier.
BOOST_FIXTURE_TEST_CASE(FIA_Undefined_Gate_Identifier_Exception_Test, TestConfigurationFIA) {
    // Prepare check of the fault_get_mapping function.
    std::string conf_str(CONFIG_ARG_PARAM + erroneousGateIdentifierConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::ELABORATE};

    // Check the fault_get_mapping function.
    BOOST_REQUIRE_THROW(fault_get_mapping(testEnv.getSettings()->getFaultMappingPath(), testEnv.getState()->m_cell_library, testEnv.getState()->m_faultMap), std::logic_error);
}

// The fault_get_mapping MUST throw an exception when given an undefined fault type.
BOOST_FIXTURE_TEST_CASE(FIA_Undefined_Fault_Type_Exception_Test, TestConfigurationFIA) {
    // Prepare check of the fault_get_mapping function.
    std::string conf_str(CONFIG_ARG_PARAM + erroneousFaultTypeConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::ELABORATE};

    // Check the fault_get_mapping function.
    BOOST_REQUIRE_THROW(fault_get_mapping(testEnv.getSettings()->getFaultMappingPath(), testEnv.getState()->m_cell_library, testEnv.getState()->m_faultMap), std::logic_error);
}

// The fault_apply_complexity_reduction function MUST throw an exception when complexity reduction is enabled in a combinded analysis.
BOOST_FIXTURE_TEST_CASE(FIA_Complexity_Reduction_Combined_Analysis_Exception_Test, TestConfigurationFIA) {
    // Prepare check of the fault_apply_complexity_reduction function.
    std::string conf_str(CONFIG_ARG_PARAM + complexityReductionErrorConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::ELABORATE};

    // Check the fault_apply_complexity_reduction function.
    BOOST_REQUIRE_THROW(fault_apply_complexity_reduction(testEnv.getSettings(), testEnv.getState()->m_netlist_model, testEnv.getState()->m_faultLocations, testEnv.getState()->m_faultLocationsReduced, testEnv.getState()->m_faultMap), std::logic_error);
}

// Check the generated faultMap of the fault_get_mapping function against known answer(s).
BOOST_FIXTURE_TEST_CASE(FIA_Fault_Mapping_Test, TestConfigurationFIA) {
    // Prepare check of the fault_get_mapping function.
    std::string conf_str(CONFIG_ARG_PARAM + laserFaultMapConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv {argc, argv, TestEnvironment::execPhases::ELABORATE};

    // Prepare expected fault map (unittests/VERICA/model/fia/laser.txt).
    std::map<int, std::vector<verica::fault::Fault>> expectedFaultMap;
    expectedFaultMap[0] = {verica::fault::Fault::SET, verica::fault::Fault::RESET};
    expectedFaultMap[1] = {verica::fault::Fault::SET, verica::fault::Fault::RESET};
    expectedFaultMap[2] = {verica::fault::Fault::OR, verica::fault::Fault::RESET, verica::fault::Fault::SET};
    expectedFaultMap[3] = {verica::fault::Fault::NOR, verica::fault::Fault::RESET, verica::fault::Fault::SET};
    expectedFaultMap[4] = {verica::fault::Fault::AND, verica::fault::Fault::RESET, verica::fault::Fault::SET};
    expectedFaultMap[5] = {verica::fault::Fault::NAND, verica::fault::Fault::RESET, verica::fault::Fault::SET};
    expectedFaultMap[6] = {verica::fault::Fault::SET, verica::fault::Fault::RESET, verica::fault::Fault::NAND, verica::fault::Fault::OR};
    expectedFaultMap[7] = {verica::fault::Fault::SET, verica::fault::Fault::RESET, verica::fault::Fault::OR, verica::fault::Fault::NAND};
    expectedFaultMap[12] = {verica::fault::Fault::SET, verica::fault::Fault::RESET};

    // Check the fault_get_mapping function.
    BOOST_REQUIRE_NO_THROW(fault_get_mapping(testEnv.getSettings()->getFaultMappingPath(), testEnv.getState()->m_cell_library, testEnv.getState()->m_faultMap));
    
    // Check the returned fault map against the expected fault map.
    std::map<int, std::vector<verica::fault::Fault>>::iterator it = (testEnv.getState()->m_faultMap).begin();
    while (it != (testEnv.getState()->m_faultMap).end())
	{
		int identifier = it->first;
		std::vector<verica::fault::Fault> faultMap = it->second;

        for(int i = 0; i < faultMap.size(); i++) {
            BOOST_CHECK(verica::fault::fault2string(faultMap[i]) == verica::fault::fault2string(expectedFaultMap[identifier][i]));
        }

		it++;
	}
}

// Check the generated faultLocations of the fault_get_locations function against known answer(s).
BOOST_FIXTURE_TEST_CASE(FIA_Fault_Locations_Test, TestConfigurationFIA) {
    
    // Prepare expected fault locations.
    unsigned int entry;
    auto expectedFaultLocationsComb = knownAnswers.get_child("FIA.FIA_Fault_Locations_Test.expectedFaultLocations.comb");
    auto expectedFaultLocationsSeq = knownAnswers.get_child("FIA.FIA_Fault_Locations_Test.expectedFaultLocations.seq");
    auto expectedFaultLocationsCombSeqNoFilter = knownAnswers.get_child("FIA.FIA_Fault_Locations_Test.expectedFaultLocations.combseq.nofilter");
    auto expectedFaultLocationsCombSeqWhitelistFilter = knownAnswers.get_child("FIA.FIA_Fault_Locations_Test.expectedFaultLocations.combseq.whitelist");
    auto expectedFaultLocationsCombSeqBlacklistFilter = knownAnswers.get_child("FIA.FIA_Fault_Locations_Test.expectedFaultLocations.combseq.blacklist");

    // combinational / no filter

        // Prepare check of the fault_get_locations function.
        std::string conf_str_c_n(CONFIG_ARG_PARAM + faultLocation_c_n);
        char* CONFIG_ARG_c_n = &conf_str_c_n[0]; 
        char* argv_c_n[2] = {UNITTEST_EXEC, CONFIG_ARG_c_n};
        TestEnvironment testEnv0 = {argc, argv_c_n, TestEnvironment::execPhases::ELABORATE};

        // Check the fault_get_locations function.
        BOOST_REQUIRE_NO_THROW(fault_get_locations(testEnv0.getSettings()->getFaultLocation(), testEnv0.getState()->m_netlist_model, testEnv0.getState()->m_faultLocations));

        // Check the returned fault locations against the expected fault locations.
        entry = 0;
        for(auto knownAnswer = expectedFaultLocationsComb.begin(); knownAnswer != expectedFaultLocationsComb.end(); knownAnswer++) {
            BOOST_CHECK((testEnv0.getState()->m_faultLocations)[entry]->name() == knownAnswer->second.data());
            entry++;
        }

    // sequential / no filter

        // Prepare check of the fault_get_locations function.
        std::string conf_str_s_n(CONFIG_ARG_PARAM + faultLocation_s_n);
        char* CONFIG_ARG_s_n = &conf_str_s_n[0]; 
        char* argv_s_n[2] = {UNITTEST_EXEC, CONFIG_ARG_s_n};
        TestEnvironment testEnv1{argc, argv_s_n, TestEnvironment::execPhases::ELABORATE};

        // Check the fault_get_locations function.
        BOOST_REQUIRE_NO_THROW(fault_get_locations(testEnv1.getSettings()->getFaultLocation(), testEnv1.getState()->m_netlist_model, testEnv1.getState()->m_faultLocations));

        // Check the returned fault locations against the expected fault locations.
        entry = 0;
        for(auto knownAnswer = expectedFaultLocationsSeq.begin(); knownAnswer != expectedFaultLocationsSeq.end(); knownAnswer++) {
            BOOST_CHECK((testEnv1.getState()->m_faultLocations)[entry]->name() == knownAnswer->second.data());
            entry++;
        }

    // combinational and sequential / no filter

        // Prepare check of the fault_get_locations function.
        std::string conf_str_cs_n(CONFIG_ARG_PARAM + faultLocation_cs_n);
        char* CONFIG_ARG_cs_n = &conf_str_cs_n[0]; 
        char* argv_cs_n[2] = {UNITTEST_EXEC, CONFIG_ARG_cs_n};
        TestEnvironment testEnv2{argc, argv_cs_n, TestEnvironment::execPhases::ELABORATE};

        // Check the fault_get_locations function.
        BOOST_REQUIRE_NO_THROW(fault_get_locations(testEnv2.getSettings()->getFaultLocation(), testEnv2.getState()->m_netlist_model, testEnv2.getState()->m_faultLocations));

        // Check the returned fault locations against the expected fault locations.
        entry = 0;
        for(auto knownAnswer = expectedFaultLocationsCombSeqNoFilter.begin(); knownAnswer != expectedFaultLocationsCombSeqNoFilter.end(); knownAnswer++) {
            BOOST_CHECK((testEnv2.getState()->m_faultLocations)[entry]->name() == knownAnswer->second.data());
            entry++;
        }
    
    // combinational and sequential / whitelist filter

        // Prepare check of the fault_get_locations function.
        std::string conf_str_cs_w(CONFIG_ARG_PARAM + faultLocation_cs_w);
        char* CONFIG_ARG_cs_w = &conf_str_cs_w[0]; 
        char* argv_cs_w[2] = {UNITTEST_EXEC, CONFIG_ARG_cs_w};
        TestEnvironment testEnv3{argc, argv_cs_w, TestEnvironment::execPhases::ELABORATE};

        // Check the fault_get_locations function.
        BOOST_REQUIRE_NO_THROW(fault_get_locations(testEnv3.getSettings()->getFaultLocation(), testEnv3.getState()->m_netlist_model, testEnv3.getState()->m_faultLocations));

        // Check the returned fault locations against the expected fault locations.
        entry = 0;
        for(auto knownAnswer = expectedFaultLocationsCombSeqWhitelistFilter.begin(); knownAnswer != expectedFaultLocationsCombSeqWhitelistFilter.end(); knownAnswer++) {
            BOOST_CHECK((testEnv3.getState()->m_faultLocations)[entry]->name() == knownAnswer->second.data());
            entry++;
        }

    // combinational and sequential / blacklist filter

        // Prepare check of the fault_get_locations function.
        std::string conf_str_cs_b(CONFIG_ARG_PARAM + faultLocation_cs_b);
        char* CONFIG_ARG_cs_b = &conf_str_cs_b[0]; 
        char* argv_cs_b[2] = {UNITTEST_EXEC, CONFIG_ARG_cs_b};
        TestEnvironment testEnv4{argc, argv_cs_b, TestEnvironment::execPhases::ELABORATE};

        // Check the fault_get_locations function.
        BOOST_REQUIRE_NO_THROW(fault_get_locations(testEnv4.getSettings()->getFaultLocation(), testEnv4.getState()->m_netlist_model, testEnv4.getState()->m_faultLocations));

        // Check the returned fault locations against the expected fault locations.
        entry = 0;
        for(auto knownAnswer = expectedFaultLocationsCombSeqBlacklistFilter.begin(); knownAnswer != expectedFaultLocationsCombSeqBlacklistFilter.end(); knownAnswer++) {
            BOOST_CHECK((testEnv4.getState()->m_faultLocations)[entry]->name() == knownAnswer->second.data());
            entry++;
        }      
}

// Check the generated propagation_path of the fault_determine_propagation_paths function against known answer(s).
BOOST_FIXTURE_TEST_CASE(FIA_Propagation_Paths_Test, TestConfigurationFIA) {
    // Prepare check of the fault_determine_propagation_paths function.
    std::string conf_str(CONFIG_ARG_PARAM + faultLocation_cs_n);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::ELABORATE};

    // Prepare expected fault propagation path.
    unsigned int outerVector;
    unsigned int innerVector;
    auto expectedPropPath = knownAnswers.get_child("FIA.FIA_Propagation_Paths_Test.expectedPropPath");

    // Check the fault_determine_propagation_paths function.
    BOOST_REQUIRE_NO_THROW(fault_determine_propagation_paths(testEnv.getState()->m_netlist_model));

    // Check the returned fault propagation path against the expected fault propagation path.
    auto it = expectedPropPath.begin();
    const std::map<int, std::unique_ptr<verica::Wire>>& wires = testEnv.getState()->m_netlist_model->wires();
    std::map<int, std::unique_ptr<verica::Wire>>::const_iterator itWires = wires.begin();
    while (itWires != wires.end() && it != expectedPropPath.end()) {
        const std::vector<const verica::Wire*> prop_path = itWires->second->propagation_path();
        innerVector = 0;
        for (auto knownAnswer = it->second.begin(); knownAnswer != it->second.end(); knownAnswer++) {
            BOOST_CHECK(prop_path[innerVector]->name() == knownAnswer->second.data());
            innerVector++;
        }
        itWires++;
        it++;
    }
}

// Check the reduced fault locations of the fault_get_reduced_locations_conservative function against known answer(s).
BOOST_FIXTURE_TEST_CASE(FIA_Reduced_Fault_Locations_Test, TestConfigurationFIA) {
    // Prepare check of the fault_get_reduced_locations_conservative function.
    std::string conf_str(CONFIG_ARG_PARAM + complexityReductionConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::ELABORATE};
    BOOST_REQUIRE_NO_THROW(fault_get_locations(testEnv.getSettings()->getFaultLocation(), testEnv.getState()->m_netlist_model, testEnv.getState()->m_faultLocations));

    // Prepare expected reduced fault locations.
    unsigned int entry = 0;
    auto expectedFaultLocationsReduced = knownAnswers.get_child("FIA.FIA_Reduced_Fault_Locations_Test.expectedFaultLocationsReduced");

    // Check the fault_get_reduced_locations_conservative function.
    BOOST_REQUIRE_NO_THROW(fault_get_reduced_locations_conservative(testEnv.getState()->m_netlist_model, testEnv.getState()->m_faultLocations, testEnv.getState()->m_faultLocationsReduced));

    // Check the returned reduced fault locations against the expected reduced fault locations.
    std::vector<const verica::Wire*> results = testEnv.getState()->m_faultLocationsReduced;

    entry = 0;
    for (auto knownAnswer = expectedFaultLocationsReduced.begin(); knownAnswer != expectedFaultLocationsReduced.end(); knownAnswer++) {
        BOOST_CHECK(results[entry]->name() == knownAnswer->second.data());
        entry++;
    }
}

BOOST_AUTO_TEST_SUITE_END()
#endif