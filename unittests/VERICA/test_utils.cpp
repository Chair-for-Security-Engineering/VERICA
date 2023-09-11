#include "unittest/test_utils.hpp"

#include <string>
#include <vector>
#include <filesystem>

namespace fs = std::filesystem;

bool is_file_accessable(std::string conf){
    fs::path current_path = fs::current_path();
    fs::path path{current_path};
    path += "/";
    path += conf;
    return fs::exists(path);
}

std::vector<std::string> generate_unittest_dataset(const std::string testBaseDir, const std::vector<std::string> tests, const std::string filter){
    std::vector<std::string> testvector{};
    if(!is_file_accessable(testBaseDir)){
        throw std::runtime_error("Directory " + testBaseDir + " does not exist!"); 
    }

    for(auto test : tests){
        if(!is_file_accessable(testBaseDir + "/" + test)){
            throw std::runtime_error("Directory " + testBaseDir + "/" + test + ") does not exist!"); 
        }
        testvector.push_back(testBaseDir + "/" + test + "/" + filter + ".json");
    }
    return testvector;
}