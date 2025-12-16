#!/bin/bash

echo "🔍 验证DoIt主题配置..."

# 检查必要文件
echo "1. 检查配置文件..."
if [ -f "config.toml" ] || [ -f "hugo.toml" ]; then
    echo "✅ 配置文件存在"
else
    echo "❌ 配置文件不存在"
fi

# 检查主题
echo "2. 检查DoIt主题..."
if [ -d "themes/DoIt" ]; then
    echo "✅ DoIt主题已安装"
    
    # 检查主题版本
    if [ -f "themes/DoIt/theme.toml" ]; then
        echo "📦 主题版本: $(grep -i version themes/DoIt/theme.toml | head -1)"
    fi
else
    echo "❌ DoIt主题未安装"
fi

# 检查Hugo版本
echo "3. 检查Hugo版本..."
hugo version

# 检查目录结构
echo "4. 检查目录结构..."
if [ -d "content/posts" ]; then
    echo "✅ 内容目录结构正确"
else
    echo "⚠️  内容目录可能需要创建"
fi

echo ""
echo "🎉 检查完成！"