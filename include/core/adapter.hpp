#ifndef __ADAPTER__H__
#define __ADAPTER__H__

#include "include/core.hpp"

namespace core {
    struct Adpater {
        std::string module_name;
        std::string project_link;
        std::string name;
        std::string desc;
        std::string author;
        std::string homepage;
        std::vector<tag> tags;
        bool is_official;
    };
} // core

#endif  // !__ADAPTER__H__