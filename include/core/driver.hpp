#ifndef __DRIVER__H__
#define __DRIVER__H__

#include "include/core.hpp"

namespace core {
    struct Driver {
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

#endif  // !__DRIVER__H__