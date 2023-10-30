
#include "unittest/test_utils.hpp"

#include <memory>
#include <string>
#include <vector>
#include <filesystem>
#include "unittest/TestEnvironment.hpp"

namespace fs = std::filesystem;
using namespace test_utils;

bool test_utils::is_file_accessable(const std::string &conf){
    fs::path current_path = fs::current_path();
    fs::path path{current_path};
    path += "/";
    path += conf;
    return fs::exists(path);
}

std::vector<std::string> test_utils::generate_unittest_dataset(const std::string &testBaseDir,
                                                               const std::vector<std::string> &tests,
                                                               const std::string &filter){
    std::vector<std::string> testvector{};
    if(!test_utils::is_file_accessable(testBaseDir)){
        throw std::runtime_error("Directory " + testBaseDir + " does not exist!");
    }

    for(auto test : tests){
        if(!test_utils::is_file_accessable(testBaseDir + "/" + test)){
            throw std::runtime_error("Directory " + testBaseDir + "/" + test + ") does not exist!");
        }
        testvector.push_back(testBaseDir + "/" + test + "/" + filter + ".json");
    }
    return testvector;
}

TestEnvironment test_utils::generate_test_environment(const std::string &conf){
    // TODO: exclude parameter definitions to header file?
    const int argc = 2;
    char UNITTEST_EXEC[16]{"bin/test/verica"};
    const std::string CONFIG_ARG_PARAM{"--config="};

    std::string conf_str{CONFIG_ARG_PARAM + conf};
    char* CONFIG_ARG = &conf_str[0];
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    TestEnvironment testEnv{argc, argv, TestEnvironment::execPhases::COMPLETE};
    return testEnv;
}

std::unique_ptr<TestEnvironment> test_utils::generateTestEnvironmentOnHeap(const std::string &conf){
    const int argc = 2;
    char UNITTEST_EXEC[16]{"bin/test/verica"};
    const std::string CONFIG_ARG_PARAM{"--config="};

    std::string conf_str{CONFIG_ARG_PARAM + conf};
    char* CONFIG_ARG = &conf_str[0];
    char* argv[2] = {UNITTEST_EXEC, CONFIG_ARG};
    std::unique_ptr<TestEnvironment> testEnv = std::make_unique<TestEnvironment>(argc, argv, TestEnvironment::execPhases::COMPLETE);
    return testEnv;
}
