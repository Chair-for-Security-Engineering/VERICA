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
#include "preprocessor/ConfigurationElaborate.hpp"

BOOST_AUTO_TEST_SUITE(Elaboration_Test_Suite)

/************************ CONFIGURATIONS ************************/
const int argc = 2;
char UNITTEST_EXEC[] = "bin/test/verica";
std::string CONFIG_ARG_PARAM = "--config=";
std::string trivialNetlistConfig = "unittests/VERICA/config/NetlistParser/trivialNetlist.json";
/****************************************************************/

/***************** AUXILIARY CLASS DEFINITIONS *****************/
class TestConfigurationElaborate : public ConfigurationElaborate {
    public:
        TestConfigurationElaborate(): ConfigurationElaborate("TEST_ELABORATION") {}
};
/***************************************************************/

// The elaboration of a trivial design MUST NOT throw any exception.
BOOST_FIXTURE_TEST_CASE(Elaboration_Trivial_Netlist_Test, TestConfigurationElaborate) {
    // Prepare check of the elaborate function.
    std::string conf_str(CONFIG_ARG_PARAM + trivialNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment* testEnv = new TestEnvironment(argc, argv, TestEnvironment::execPhases::MULTI_THREADING);
    for(auto w : testEnv->getState()->m_netlist_model->module_under_test()->wires()) {
        testEnv->getState()->m_netlist_model->resize_bdd_vectors(w->uid(), 1);
    }

    // Check the elaborate function.
    BOOST_REQUIRE_NO_THROW(elaborate(testEnv->getState()->m_netlist_model, testEnv->getState()->m_managers[0], 0, testEnv->getSettings()->getMasking()));
}

// The gate_store functions MUST throw an exception when given a model without any input pins.
BOOST_FIXTURE_TEST_CASE(Elaboration_No_Input_Pin_Exception_Test, TestConfigurationElaborate) {
    // Prepare check of the gate_store functions.
    std::string conf_str(CONFIG_ARG_PARAM + trivialNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment* testEnv = new TestEnvironment(argc, argv, TestEnvironment::execPhases::MODEL_POSTPROCESSING);

    testEnv->getState()->m_netlist_model = new verica::Netlist("CLEAN_NETLIST_FOR_TEST");   // Use a clean netlist.

    verica::Netlist* testModel = testEnv->getState()->m_netlist_model;
    verica::Module* testModule = testModel->add_module("TEST_MODULE");
    verica::Pin* testPin = testModel->add_pin("TEST_PIN", testModule, false);
    verica::Wire* testWire = testModel->add_wire("TEST_WIRE", testModule);
    testModel->set_wire_source(0, 0);
    testModel->set_module_under_test(testModule);
    
    Cudd_Manager manager = (testEnv->getState()->m_managers)[0];
    std::map<int, BDD> secrets = booleanMasking(manager, netlistToMap(testModel, manager));

    // Check the gate_store_functions function.
    BOOST_REQUIRE_THROW(gate_store_functions(testModel, testWire, manager, 0), std::logic_error);

    // Check the gate_store_variables function.
    BOOST_REQUIRE_THROW(gate_store_variables(testModel, testWire, 0), std::logic_error);

    // Check the gate_store_registers function.
    BOOST_REQUIRE_THROW(gate_store_registers(testModel, testWire, 0), std::logic_error);

    // Check the gate_store_secrets function.
    BOOST_REQUIRE_THROW(gate_store_secrets(testModel, testWire, secrets, manager, 0), std::logic_error);
}

// The gate_store_functions function MUST throw an exception when given a pin with an unsupported gate identifier.
BOOST_FIXTURE_TEST_CASE(Elaboration_Unsupported_Gate_Identifier_Exception_Test, TestConfigurationElaborate) {
    // Prepare check of the gate_store_functions function.
    std::string conf_str(CONFIG_ARG_PARAM + trivialNetlistConfig);
    char* CONFIG_ARG = &conf_str[0]; 
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment* testEnv = new TestEnvironment(argc, argv, TestEnvironment::execPhases::MODEL_POSTPROCESSING);

    testEnv->getState()->m_netlist_model = new verica::Netlist("CLEAN_NETLIST_FOR_TEST");   // Use a clean netlist.

    verica::Netlist* testModel = testEnv->getState()->m_netlist_model;
    verica::Module* testModule = testModel->add_module("TEST_MODULE");
    /* Get highest gate identifier */
    int highest_identifier = -1;
    const std::map<std::string, CellTemplate*> gate_types = testEnv->getState()->m_cell_library->gate_types();
    for (std::pair<std::string, CellTemplate*> gate_type : gate_types) {
        for (int i = 0; i < ((gate_type.second)->m_identifier).size(); i++) {
            if (((gate_type.second)->m_identifier)[i] > highest_identifier) { highest_identifier = ((gate_type.second)->m_identifier)[i]; }
        }
    }
    /*******************************/
    verica::Pin* testPin = testModel->add_pin("TEST_PIN", testModule, true, ++highest_identifier);
    verica::Wire* testWire = testModel->add_wire("TEST_WIRE", testModule);
    testModel->set_wire_source(0, 0);
    testModel->set_module_under_test(testModule);

    Cudd_Manager manager = (testEnv->getState()->m_managers)[0];

    // Check the gate_store_functions function.
    BOOST_REQUIRE_THROW(gate_store_functions(testModel, testWire, manager, 0), std::logic_error);
}

BOOST_AUTO_TEST_SUITE_END()
#endif 