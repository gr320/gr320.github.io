#!/bin/bash

echo "🚀 启动DoIt主题博客..."

# 1. 清理缓存
echo "🧹 清理缓存..."
rm -rf public resources

# 2. 启动开发服务器
echo "🌐 启动本地服务器..."
hugo server -D --disableFastRender

# Windows用户可以使用：
# hugo server -D --disableFastRender