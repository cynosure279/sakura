#ifndef __CORE__H__
#define __CORE__H__

#include <string>
#include <vector>

using std::string;
using std::vector;

namespace core {
    struct Adapter {
        string name;
    }; // 适配器

    struct Driver {
        string name;
    }; // 驱动

    struct Plugin {
        string name;
    }; // 插件

    struct Project {
        string name;
    }; // 项目

} // core

#endif  // !__CORE__H__