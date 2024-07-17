#ifndef __CORE__H__
#define __CORE__H__

#include <string>
#include <vector>

namespace core {
    using std::string;
    using std::vector;
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
        string path;
        string name;
        string desciption;
        vector<Adapter> adapters;
        vector<Driver> drivers;
        vector<Plugin> plugins;
    }; // 项目

} // core

#endif  // !__CORE__H__