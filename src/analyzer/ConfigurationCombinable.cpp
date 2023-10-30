#include "analyzer/ConfigurationCombinable.hpp"

void
ConfigurationCombinable::insert(const ConfigurationCombinable* configuration) {
    for (auto combination : configuration->failing_probes()){
        if (std::find(this->m_failing_probes.begin(), this->m_failing_probes.end(), combination) ==
            this->m_failing_probes.end()){
            this->m_failing_probes.push_back(combination);
        }
    }

    for(auto combination : configuration->leaking_combinations())
        this->m_leaking_combinations.push_back(combination);

}


