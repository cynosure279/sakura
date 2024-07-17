#include <string>
#include <vector>
using namespace std;

namespace Project {
    class Project {
        public:
            Project(string path, string name, string tamp, vector<string> adapters, vector<string> drivers, vector<string> plugins);
            int create(void);
    
        private:
            string path; // 项目路径
            string name; // 项目名称
            string tamp; // 项目模板
            vector<string> adapters; // 适配器
            vector<string> drivers; // 驱动器
            vector<string> plugins; // 插件
    };
} // Project