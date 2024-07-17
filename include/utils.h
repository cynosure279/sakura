#ifndef __UTILS__H__
#define __UTILS__H__

#include <string>
#include <vector>
#include "include/core.h"

namespace utils {
    using std::string;
    using std::vector;
    using core::Adapter;
    using core::Driver;
    using core::Plugin;
    using core::Project;
    
    class AdapterManager {
        public:
            AdapterManager(vector<Adapter> adapters);
    
        private:
            
    };

    class DriverManager {
        public:
            DriverManager(vector<Driver> drivers);
    
        private:
            
    };

    class PluginManager {
        public:
            PluginManager(vector<Plugin> plugins);
    
        private:
            
    };

    class ProjectManager {
        public:
            ProjectManager(Project project);
    
        private:
            
    };
} // utils

#endif  // !__UTILS__H__