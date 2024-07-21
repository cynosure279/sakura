#ifndef __ADAPTER_MANAGER__H__
#define __ADAPTER_MANAGER__H__

#include "include/utils.hpp"
#include "include/core/adapter.hpp"
#include "include/core/project.hpp"

namespace utils {
    class AdapterManager {
        public:
            AdapterManager();
            /// @brief 搜索适配器
            /// @param keyword 关键词
            /// @return Adapter 的 vector
            std::vector<core::Adpater> search(std::string keyword);
            /// @brief 安装适配器
            /// @param adapter Adapter
            int install(core::Adpater adapter);
            /// @brief 卸载适配器
            /// @param adapter  Adapter
            int uninstall(core::Adpater adapter);
            /// @brief 部署适配器
            /// @param  project Project 的引用
            void deploy(core::Project &project, core::Adpater adapter);
            /// @brief 移除适配器
            /// @param project 
            void remove(core::Project &project, core::Adpater adapter);
    
        private:
            std::vector<core::Adpater> adapters;
    };
} // utils

#endif  // !__ADAPTER_MANAGER__H__