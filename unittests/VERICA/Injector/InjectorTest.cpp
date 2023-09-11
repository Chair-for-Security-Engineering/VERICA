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
#include "unittest/TestInjector.hpp"

BOOST_AUTO_TEST_SUITE(Injector_Test_Suite)
/************************ CONFIGURATIONS ************************/
const int argc = 2;
char UNITTEST_EXEC[] = "bin/test/verica";
std::string CONFIG_ARG_PARAM = "--config=";
std::string trivialNetlistConfig = "unittests/VERICA/config/NetlistParser/trivialNetlist.json";
std::string reducedComplexityConfig = "unittests/VERICA/config/FIA/complexityReduction.json";

const pt::ptree knownAnswers = getKnownAnswers("unittests/VERICA/knownAnswers.json");
/****************************************************************/

/* 
 * =========================================================================================
 * Generate Permuted Fault Locations
 * =========================================================================================
 */

// Check the correct functionality of the get_next_fault_locations function without reduced complexity.
BOOST_AUTO_TEST_CASE(Injector_Get_Next_Fault_Locations_Test) {
    // Prepare check of the get_next_fault_locations function.
    std::string conf_str(CONFIG_ARG_PARAM + trivialNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::COMPLETE};
    TestInjector testInj{testEnv.getLogger(), testEnv.getSettings(), testEnv.getState()};

    unsigned int outerVector;
    unsigned int innerVector;
    auto expectedPermutedFaultLocations = knownAnswers.get_child("Injector.Injector_Get_Next_Fault_Locations_Test.expectedPermutedFaultLocations");
    auto expectedFaultLocations = knownAnswers.get_child("Injector.Injector_Get_Next_Fault_Locations_Test.expectedFaultLocations");

    // Check the get_next_fault_locations function.
    for(int n = 1; n <= testEnv.getSettings()->getNumberOfFaults(); ++n){
        BOOST_REQUIRE_NO_THROW(testInj.injector->get_next_fault_locations(n));
    }

    // Check the (valid) fault locations (in) against the expected values.
    outerVector = 0;
    for (auto it = expectedFaultLocations.begin(); it != expectedFaultLocations.end(); it++)
    {
        innerVector = 0;
        for (auto knownAnswer = it->second.begin(); knownAnswer != it->second.end(); knownAnswer++)
        {
            BOOST_CHECK(testInj.getFaultLocations()[outerVector][innerVector]->name() == knownAnswer->second.data());
            BOOST_CHECK(testInj.getValidFaultLocationsIn()[innerVector]->name() == testInj.getFaultLocations()[outerVector][innerVector]->name());
            innerVector++;
        }
        outerVector++;
    }

    // Check the permuted fault locations against the expected values.
    outerVector = 0;
    for (auto it = expectedPermutedFaultLocations.begin(); it != expectedPermutedFaultLocations.end(); it++)
    {
        innerVector = 0;
        for (auto knownAnswer = it->second.begin(); knownAnswer != it->second.end(); knownAnswer++)
        {
            BOOST_CHECK(testInj.getPermutedFaultLocations()[outerVector][innerVector]->name() == knownAnswer->second.data());
            innerVector++;
        }
        outerVector++;
    }
}

// Check the correct functionality of the get_next_fault_locations function with reduced complexity.
BOOST_AUTO_TEST_CASE(Injector_Get_Next_Fault_Locations_RC_Test) {
    // Prepare check of the get_next_fault_locations function.
    std::string conf_str(CONFIG_ARG_PARAM + reducedComplexityConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::COMPLETE};
    TestInjector testInj{testEnv.getLogger(), testEnv.getSettings(), testEnv.getState()};

    unsigned int outerVector;
    unsigned int innerVector;
    auto expectedPermutedFaultLocations1 = knownAnswers.get_child("Injector.Injector_Get_Next_Fault_Locations_RC_Test.expectedPermutedFaultLocations1");
    auto expectedPermutedFaultLocations2 = knownAnswers.get_child("Injector.Injector_Get_Next_Fault_Locations_RC_Test.expectedPermutedFaultLocations2");

    // Check the get_next_fault_locations function.
    for(int n = 1; n <= testEnv.getSettings()->getNumberOfFaults(); ++n){
        BOOST_REQUIRE_NO_THROW(testInj.injector->get_next_fault_locations(n));

        // Check the permuted fault locations against the expected values.
        if (n == 1) {
            outerVector = 0;
            for (auto it = expectedPermutedFaultLocations1.begin(); it != expectedPermutedFaultLocations1.end(); it++)
            {
                innerVector = 0;
                for (auto knownAnswer = it->second.begin(); knownAnswer != it->second.end(); knownAnswer++)
                {
                    BOOST_CHECK(testInj.getPermutedFaultLocations()[outerVector][innerVector]->name() == knownAnswer->second.data());
                    innerVector++;
                }
                outerVector++;
            }
        }
        else {
            outerVector = 0;
            for (auto it = expectedPermutedFaultLocations2.begin(); it != expectedPermutedFaultLocations2.end(); it++)
            {
                innerVector = 0;
                for (auto knownAnswer = it->second.begin(); knownAnswer != it->second.end(); knownAnswer++)
                {
                    BOOST_CHECK(testInj.getPermutedFaultLocations()[outerVector][innerVector]->name() == knownAnswer->second.data());
                    innerVector++;
                }
                outerVector++;
            }
        }
    }
}

// Check the correct functionality of the generate_specific_fault_combinations function.
BOOST_AUTO_TEST_CASE(Injector_Generate_Specific_Fault_Combinations_Test) {
    // Prepare check of the generate_specific_fault_combinations function.
    std::string conf_str(CONFIG_ARG_PARAM + trivialNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::COMPLETE};
    TestInjector testInj{testEnv.getLogger(), testEnv.getSettings(), testEnv.getState()};
    
    // Prepare custom bit mask and expected fault combinations.
    std::vector<bool> customBitmask = {true, false, true, true, false, false, false};

    unsigned int entry;
    auto expectedResults = knownAnswers.get_child("Injector.Injector_Generate_Specific_Fault_Combinations_Test.specificFaultCombinations");

    // Check the generate_specific_fault_combinations function.
    BOOST_REQUIRE_NO_THROW(testInj.generate_specific_fault_combinations(testEnv.getState()->m_faultLocations, customBitmask));
    std::vector<const verica::Wire*> result = testInj.generate_specific_fault_combinations(testEnv.getState()->m_faultLocations, customBitmask);

    // Check the returned specific fault combinations against the expected values.
    entry = 0;
    for (auto knownAnswer = expectedResults.begin(); knownAnswer != expectedResults.end(); knownAnswer++) {
        BOOST_CHECK(result[entry]->name() == knownAnswer->second.data());
        entry++;
    }
}

// Check the correct functionality of the generate_fault_combinations_partly function.
BOOST_AUTO_TEST_CASE(Injector_Generate_Fault_Combinations_Partly_Test) {
    // Prepare check of the generate_fault_combinations_partly function.
    std::string conf_str(CONFIG_ARG_PARAM + trivialNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::COMPLETE};
    TestInjector testInj{testEnv.getLogger(), testEnv.getSettings(), testEnv.getState()};
    
    // Prepare function parameters and expected permuted fault locations.
    std::vector<std::vector<const verica::Wire*>> faultLocations = std::vector<std::vector<const verica::Wire*>>(4, testEnv.getState()->m_faultLocations);
    std::vector<std::vector<const verica::Wire*>> permutedFaultLocations = {};
    std::vector<std::vector<bool>> customBitmasks = {
        {true, false, true, false, true, false, true},
        {false, true, false, true, false, true, false},
        {true, true, true, true, true, true, true},
        {false, false, false, false, true, true, true}
    };

    unsigned int outerVector;
    unsigned int innerVector;
    auto expectedPermutedFaultLocations = knownAnswers.get_child("Injector.Injector_Generate_Fault_Combinations_Partly_Test.expectedPermutedFaultLocations");

    // Check the generate_fault_combinations_partly function.
    BOOST_REQUIRE_NO_THROW(testInj.generate_fault_combinations_partly(faultLocations, permutedFaultLocations, customBitmasks, 4, 1, 2));

    // Check the returned permuted fault locations against the expected values.
    outerVector = 0;
    for (auto it = expectedPermutedFaultLocations.begin(); it != expectedPermutedFaultLocations.end(); it++)
    {
        innerVector = 0;
        for (auto knownAnswer = it->second.begin(); knownAnswer != it->second.end(); knownAnswer++)
        {
            BOOST_CHECK(permutedFaultLocations[outerVector][innerVector]->name() == knownAnswer->second.data());
            innerVector++;
        }
        outerVector++;
    }
}

// The generate_fault_combinations_partly function MUST throw an exception when the valid combination of gates is empty.
BOOST_AUTO_TEST_CASE(Injector_Generate_Fault_Combinations_Partly_Exception_Test) {
    // Prepare check of the generate_fault_combinations_partly function.
    std::string conf_str(CONFIG_ARG_PARAM + trivialNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::COMPLETE};
        TestInjector testInj{testEnv.getLogger(), testEnv.getSettings(), testEnv.getState()};

    // Prepare function parameters.
    std::vector<std::vector<const verica::Wire*>> faultLocations = {testEnv.getState()->m_faultLocations};
    std::vector<std::vector<const verica::Wire*>> permutedFaultLocations = {};
    std::vector<std::vector<bool>> customBitmasks = {{false, false, false, false, false, false, false}};

    // Check the generate_fault_combinations_partly function.
    BOOST_REQUIRE_THROW(testInj.generate_fault_combinations_partly(faultLocations, permutedFaultLocations, customBitmasks, 1, 0, 1), std::logic_error);
}

/* 
 * =========================================================================================
 * Fault Injection
 * =========================================================================================
 */

// Check the correct functionality of the prepeare_fault_mappings_for_injection function.
BOOST_AUTO_TEST_CASE(Injector_Prepeare_Fault_Mappings_For_Injection_Test) {
    // Prepare check of the prepeare_fault_mappings_for_injection function.
    std::string conf_str(CONFIG_ARG_PARAM + trivialNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::COMPLETE};
    TestInjector testInj{testEnv.getLogger(), testEnv.getSettings(), testEnv.getState()};

    // Prepare expected target fault collection.
    unsigned int outerVector1;
    unsigned int outerVector3;
    unsigned int outerVector4;
    unsigned int innerVector;
    auto expectedTargetFaultCollection = knownAnswers.get_child("Injector.Injector_Prepeare_Fault_Mappings_For_Injection_Test.expectedTargetFaultCollection");

    outerVector1 = 1;
    for (auto it1 = expectedTargetFaultCollection.begin(); it1 != expectedTargetFaultCollection.end(); it1++)
    {
        testEnv.getState()->m_current_number_of_injected_faults = outerVector1;
        do {
            // Get permuted fault locations.
            BOOST_REQUIRE_NO_THROW(testInj.injector->get_next_fault_locations(outerVector1));

            auto it2 = it1->second.begin();
            for (auto location : testInj.injector->permuted_fault_locations()) {   
                // Check the prepeare_fault_mappings_for_injection function for each permuted fault location.
                std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> target_fault_collection;
                BOOST_REQUIRE_NO_THROW(testInj.injector->prepeare_fault_mappings_for_injection(location));
                target_fault_collection = testInj.injector->prepeare_fault_mappings_for_injection(location);

                // Check the returned target fault collection against the expected values.
                outerVector3 = 0;
                for (auto it3 = it2->second.begin(); it3 != it2->second.end(); it3++)
                {
                    outerVector4 = 0;
                    for (auto it4 = it3->second.begin(); it4 != it3->second.end(); it4++)
                    {
                        innerVector = 0;
                        for (auto knownAnswer = it4->second.begin(); knownAnswer != it4->second.end(); knownAnswer++)
                        {
                            if (innerVector == 0) {
                                BOOST_CHECK(target_fault_collection[outerVector3].first[outerVector4]->name() == knownAnswer->second.data());
                            }
                            else {
                                BOOST_CHECK(verica::fault::fault2string(target_fault_collection[outerVector3].second[outerVector4]) == knownAnswer->second.data());
                            }
                            innerVector++;
                        }
                        outerVector4++;
                    }
                    outerVector3++;
                }
                it2++;
            }
        } while(!testInj.getPermutationDone());
        outerVector1++;
    }
}

// Check the correct functionality of the inject function.
BOOST_AUTO_TEST_CASE(Injector_Inject_Test) {
    // Prepare check of the inject function.
    std::string conf_str(CONFIG_ARG_PARAM + trivialNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::COMPLETE};
    TestInjector testInj{testEnv.getLogger(), testEnv.getSettings(), testEnv.getState()};

    // Prepare expected current fault injection (partly).
    unsigned int outerVector1;
    unsigned int outerVector2;
    unsigned int innerVector;
    auto expectedCurrentFaultInjection = knownAnswers.get_child("Injector.Injector_Inject_Test.expectedCurrentFaultInjection");

    std::pair<std::string, std::string> results[4][7];

    for(int n = 1; n <= testEnv.getSettings()->getNumberOfFaults(); ++n) {
        testEnv.getState()->m_current_number_of_injected_faults = n;
        do {
            // Get permuted fault locations.
            BOOST_REQUIRE_NO_THROW(testInj.injector->get_next_fault_locations(n));

            for (auto location : testInj.injector->permuted_fault_locations()) {   
                std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> target_fault_collection;
                target_fault_collection = testInj.injector->prepeare_fault_mappings_for_injection(location);

                for (int i = 0; i < target_fault_collection.size(); i++) {
                    // Check the inject function.
                    BOOST_REQUIRE_NO_THROW(testInj.injector->inject(target_fault_collection[i].first, target_fault_collection[i].second, 0));
                    
                    for (int j = 0; j < testEnv.getState()->m_current_fault_injections[0].first.size(); j++) {
                        results[i][j].first = (testEnv.getState()->m_current_fault_injections[0].first[j])->name();
                        results[i][j].second = verica::fault::fault2string(testEnv.getState()->m_current_fault_injections[0].second[j]);
                    }
                }
            }
        } while(!testInj.getPermutationDone());
    }

    // Check the current fault injection against the expected values.
    // For simplicity reasons, we just check the results of the last location from the current fault injection.
    outerVector1 = 0;
    for (auto it1 = expectedCurrentFaultInjection.begin(); it1 != expectedCurrentFaultInjection.end(); it1++)
    {
        outerVector2 = 0;
        for (auto it2 = it1->second.begin(); it2 != it1->second.end(); it2++)
        {
            innerVector = 0;
            for (auto knownAnswer = it2->second.begin(); knownAnswer != it2->second.end(); knownAnswer++)
            {
                if (innerVector == 0) {
                    BOOST_CHECK(results[outerVector1][outerVector2].first == knownAnswer->second.data());
                }
                else {
                    BOOST_CHECK(results[outerVector1][outerVector2].second == knownAnswer->second.data());
                }
                innerVector++;
            }
            outerVector2++;
        }
        outerVector1++;
    }
}

// Check the correct functionality of the restore_faulty_models function.
BOOST_AUTO_TEST_CASE(Injector_Restore_Faulty_Models_Test) {
    // Prepare check of the restore_faulty_models function.
    std::string conf_str(CONFIG_ARG_PARAM + trivialNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::COMPLETE};
    TestInjector testInj{testEnv.getLogger(), testEnv.getSettings(), testEnv.getState()};

    for(int n = 1; n <= testEnv.getSettings()->getNumberOfFaults(); ++n) {
        testEnv.getState()->m_current_number_of_injected_faults = n;
        do {
            // Get permuted fault locations.
            BOOST_REQUIRE_NO_THROW(testInj.injector->get_next_fault_locations(n));

            for (auto location : testInj.injector->permuted_fault_locations()) {
                std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> target_fault_collection;
                target_fault_collection = testInj.injector->prepeare_fault_mappings_for_injection(location);
                for (int i = 0; i < target_fault_collection.size(); i++) {
                    BOOST_REQUIRE_NO_THROW(testInj.injector->inject(target_fault_collection[i].first, target_fault_collection[i].second, 0));
                }

                // Check the restore_faulty_models function.
                int threadNum = 0;
                BOOST_REQUIRE_NO_THROW(testInj.injector->restore_faulty_models(location, threadNum));
                BOOST_CHECK(testEnv.getState()->m_current_fault_injections[threadNum].first.size() == 0);
                BOOST_CHECK(testEnv.getState()->m_current_fault_injections[threadNum].second.size() == 0);
            }
        } while(!testInj.getPermutationDone());
    }
}

// Check the correct functionality of the fault_injection_incremental function.
BOOST_AUTO_TEST_CASE(Injector_Fault_Injection_Incremental_Test) {
    // Prepare check of the fault_injection_incremental function.
    std::string conf_str(CONFIG_ARG_PARAM + trivialNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::COMPLETE};
    TestInjector testInj{testEnv.getLogger(), testEnv.getSettings(), testEnv.getState()};

    for(int n = 1; n <= testEnv.getSettings()->getNumberOfFaults(); ++n) {
        testEnv.getState()->m_current_number_of_injected_faults = n;
        do {
            // Get permuted fault locations.
            BOOST_REQUIRE_NO_THROW(testInj.injector->get_next_fault_locations(n));

            for (auto location : testInj.injector->permuted_fault_locations()) {
                std::vector<std::pair<std::vector<const verica::Wire*>, std::vector<verica::fault::Fault>>> target_fault_collection;
                target_fault_collection = testInj.injector->prepeare_fault_mappings_for_injection(location);

                // Check the fault_injection_incremental function.
                for (int i = 0; i < target_fault_collection.size(); i++) {
                    BOOST_REQUIRE_NO_THROW(testInj.fault_injection_incremental(target_fault_collection[i].first, target_fault_collection[i].second, 0));
                }
            }
        } while(!testInj.getPermutationDone());
    }
}

// The fault_node function MUST NOT throw an exception when given a supported fault type.
BOOST_AUTO_TEST_CASE(Injector_Fault_Node_Test) {
    // Prepare check of the fault_node function.
    std::string conf_str(CONFIG_ARG_PARAM + trivialNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::COMPLETE};
    TestInjector testInj{testEnv.getLogger(), testEnv.getSettings(), testEnv.getState()};

    // Prepare function parameters.
    const verica::Wire* dummyWire = testEnv.getState()->m_netlist_model->get_wire(3);
    std::vector<verica::fault::Fault> supportedFaults = {
        verica::fault::SET,
        verica::fault::RESET,
        verica::fault::AND,
        verica::fault::NAND,
        verica::fault::OR,
        verica::fault::NOR,
        verica::fault::XOR,
        verica::fault::XNOR,
        verica::fault::NOTA,
        verica::fault::A
    };

    // Check the fault_node function.
    for (int i = 0; i < supportedFaults.size(); i++) {
        BOOST_REQUIRE_NO_THROW(testInj.fault_node(dummyWire, supportedFaults[i], 0));
    }
}

// The fault_node function MUST throw an exception when given an unsupported fault type.
BOOST_AUTO_TEST_CASE(Injector_Fault_Node_Exception_Test) {
    // Prepare check of the fault_node function.
    std::string conf_str(CONFIG_ARG_PARAM + trivialNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::COMPLETE};
    TestInjector testInj{testEnv.getLogger(), testEnv.getSettings(), testEnv.getState()};

    // Prepare function parameters.
    const verica::Wire* dummyWire = testEnv.getState()->m_netlist_model->get_wire(3);
    verica::fault::Fault unsupportedFault = verica::fault::CONV;

    // Check the fault_node function.
    BOOST_REQUIRE_THROW(testInj.fault_node(dummyWire, unsupportedFault, 0), std::logic_error);
}

// The elaborate_node function MUST NOT throw an exception when given a supported gate identifier.
BOOST_AUTO_TEST_CASE(Injector_Elaborate_Node_Test) {
    // Prepare check of the fault_node function.
    std::string conf_str(CONFIG_ARG_PARAM + trivialNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::COMPLETE};
    TestInjector testInj{testEnv.getLogger(), testEnv.getSettings(), testEnv.getState()};

    for (int i = 0; i < 10 ; i++) {
        // Prepare function parameters.
        const verica::Wire* testWire3 = testEnv.getState()->m_netlist_model->get_wire(3);
        testEnv.getState()->m_netlist_model->set_faulty_gate_identifier(3, i , 0);

        // Check the elaborate_node function.
        BOOST_REQUIRE_NO_THROW(testInj.elaborate_node(testWire3, 0));
    }

    // Special case: faulty_gate_identifier = 10
    // Prepare function parameters.
    const verica::Wire* testWire0 = testEnv.getState()->m_netlist_model->get_wire(0);
    testEnv.getState()->m_netlist_model->set_faulty_gate_identifier(0, 10, 0);

    // Check the elaborate_node function.
    BOOST_REQUIRE_NO_THROW(testInj.elaborate_node(testWire0, 0));
}

// The elaborate_node function MUST throw an exception when given an unsupported faulty gate identifier.
BOOST_AUTO_TEST_CASE(Injector_Elaborate_Node_Exception_Test) {
    // Prepare check of the elaborate_node function.
    std::string conf_str(CONFIG_ARG_PARAM + trivialNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::COMPLETE};
    TestInjector testInj{testEnv.getLogger(), testEnv.getSettings(), testEnv.getState()};

    // Prepare function parameters.
    const verica::Wire* testWire3 = testEnv.getState()->m_netlist_model->get_wire(3);
    testEnv.getState()->m_netlist_model->set_faulty_gate_identifier(3, -1 , 0);

    // Check the elaborate_node function.
    BOOST_REQUIRE_THROW(testInj.elaborate_node(testWire3, 0), std::logic_error);
}

BOOST_AUTO_TEST_SUITE_END()
#endif 