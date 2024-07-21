#ifndef __PLUGIN__H__
#define __PLUGIN__H__

#include "include/core.hpp"

namespace core {
    struct plugin {
        std::string module_name;
        std::string project_link;
        std::string name;
        std::string desc;
        std::string author;
        std::string homepage;
        std::vector<tag> tags;
        bool is_official;
        std::string type;
        std::vector<std::string> supported_adapters;
        bool valid;
        std::string version;
        std::string time;
        bool skip_test;
    };
} // core

#endif  // !__PLUGIN__H__