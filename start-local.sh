#!/bin/bash

# 启动 Hugo 服务器
hugo server -D &

# 启动 CMS 代理服务器
netlify-cms-proxy-server &

# 等待用户输入
echo "服务已启动！"
echo "访问 http://localhost:1313 查看网站"
echo "访问 http://localhost:1313/admin/ 进入 CMS 管理界面"
echo "按 Ctrl+C 停止所有服务"

# 等待用户中断
wait
