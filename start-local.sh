#!/bin/bash

# 错误处理
set -e

# 检查必要的依赖
command -v hugo >/dev/null 2>&1 || { echo "需要安装 Hugo"; exit 1; }
command -v npx >/dev/null 2>&1 || { echo "需要安装 npx"; exit 1; }

# 启动服务
hugo server -D &
HUGO_PID=$!

npx @staticcms/proxy-server &
PROXY_PID=$!

# 清理函数
cleanup() {
    kill $HUGO_PID
    kill $PROXY_PID
    exit 0
}

# 注册清理函数
trap cleanup SIGINT SIGTERM

echo "服务已启动！"
echo "访问 http://localhost:1313 查看网站"
echo "访问 http://localhost:1313/admin/ 进入 CMS 管理界面"
echo "按 Ctrl+C 停止所有服务"

wait
