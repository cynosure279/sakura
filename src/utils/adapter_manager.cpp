#include <string.h>
#include <algorithm>
#include <functional>

#include "include/utils/adapter_manager.hpp"

namespace utils {
    std::vector<core::Adpater> AdapterManager::search(std::string keyword) {
        std::vector<core::Adpater> result;
        for (auto &adapter : adapters) {
            if (adapter.name.find(keyword)) {
                result.push_back(adapter);
            }
        }
        return result;
    }

    int AdapterManager::install(core::Adpater adapter) {
        char *cmd = strcat("pipx install", adapter.project_link.c_str());
        int status = system(cmd);
        return status;
    }

    int AdapterManager::uninstall(core::Adpater adapter) {
        char *cmd = strcat("pipx uninstall", adapter.project_link.c_str());
        int status = system(cmd);
        return status;
    }

    void utils::AdapterManager::deploy(core::Project &project, core::Adpater adapter) {
        project.adapters.push_back(adapter);
    }

    void utils::AdapterManager::remove(core::Project &project, core::Adpater adapter) {
        std::vector<core::Adpater> &adas = project.adapters;
        std::string project_link = adapter.project_link;
        for (std::vector<core::Adpater>::iterator it = adas.begin(); it != adas.end(); ) {
            if (it->project_link.compare(project_link) == 0) {
                it = adas.erase(it);
            } else {
                ++it;
            }
        }
    }
} // utils