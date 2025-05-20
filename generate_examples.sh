#!/bin/bash

# 创建examples目录（如果不存在）
mkdir -p examples

# 从README.md中提取所有链接路径
links=$(grep -o '\[.*\](./examples/[^)]*' README.md | grep -o './examples/[^)]*')

# 遍历所有链接
for link in $links; do
  # 提取目录路径（去掉文件名部分）
  dir_path=$(dirname "$link")
  
  # 创建目录（如果不存在）
  mkdir -p "$dir_path"
  
  # 提取文件名（不包含路径）
  file_name=$(basename "$link")
  
  # 提取目录编号（用于标题）
  dir_num=$(basename "$dir_path")
  
  # 提取链接文本（作为标题）
  title=$(grep -o "\[.*\]($link" README.md | sed 's/\[\(.*\)\](.*/\1/')
  
  # 创建README.md文件（如果不存在）
  if [ ! -f "$link" ]; then
    echo "# $title" > "$link"
    echo "" >> "$link"
    echo "本节内容将介绍$title相关知识。" >> "$link"
    echo "" >> "$link"
    echo "## 学习目标" >> "$link"
    echo "" >> "$link"
    echo "- 理解$title的基本概念" >> "$link"
    echo "- 掌握$title的实现方法" >> "$link"
    echo "- 能够应用$title到实际项目中" >> "$link"
    echo "" >> "$link"
    echo "## 内容概述" >> "$link"
    echo "" >> "$link"
    echo "待补充..." >> "$link"
    
    echo "创建了 $link"
  else
    echo "跳过已存在的文件: $link"
  fi
  
  # 创建app.js文件（如果不存在）
  app_js_path="${dir_path}/app.js"
  if [ ! -f "$app_js_path" ]; then
    echo "/**" > "$app_js_path"
    echo " * $title" >> "$app_js_path"
    echo " * " >> "$app_js_path"
    echo " * 这是${dir_num}章节的示例代码" >> "$app_js_path"
    echo " */" >> "$app_js_path"
    echo "" >> "$app_js_path"
    echo "// 引入依赖" >> "$app_js_path"
    echo "const express = require('express');" >> "$app_js_path"
    echo "const path = require('path');" >> "$app_js_path"
    echo "" >> "$app_js_path"
    echo "// 创建应用实例" >> "$app_js_path"
    echo "const app = express();" >> "$app_js_path"
    echo "" >> "$app_js_path"
    echo "// 设置视图引擎" >> "$app_js_path"
    echo "app.set('views', path.join(__dirname, 'views'));" >> "$app_js_path"
    echo "app.set('view engine', 'ejs');" >> "$app_js_path"
    echo "" >> "$app_js_path"
    echo "// 示例路由" >> "$app_js_path"
    echo "app.get('/', (req, res) => {" >> "$app_js_path"
    echo "  res.render('index', { title: '$title 示例' });" >> "$app_js_path"
    echo "});" >> "$app_js_path"
    echo "" >> "$app_js_path"
    echo "// 启动服务器" >> "$app_js_path"
    echo "const PORT = process.env.PORT || 3000;" >> "$app_js_path"
    echo "app.listen(PORT, () => {" >> "$app_js_path"
    echo "  console.log(\`服务器运行在 http://localhost:\${PORT}\`);" >> "$app_js_path"
    echo "});" >> "$app_js_path"
    
    echo "创建了 $app_js_path"
  else
    echo "跳过已存在的文件: $app_js_path"
  fi
done

echo "文件生成完成！"