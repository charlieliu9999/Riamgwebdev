#!/bin/bash

# 获取当前年月
YEAR=$(date +"%Y")
MONTH=$(date +"%m")

# 确保目录存在
mkdir -p "content/news/$YEAR/$MONTH"
mkdir -p "content/news/images/$YEAR/$MONTH"

# 获取文章标题
echo "请输入文章标题："
read TITLE

# 创建文件名（将标题转换为URL友好的格式）
FILENAME=$(echo "$TITLE" | tr '[:upper:]' '[:lower:]' | tr ' ' '-')
FILEPATH="content/news/$YEAR/$MONTH/$FILENAME.md"

# 创建文章
cat > "$FILEPATH" << EOF
---
title: "$TITLE"
date: $(date +"%Y-%m-%dT%H:%M:%S%z")
author: ""
categories: []
tags: []
thumbnail: ""
description: ""
featured: false
draft: true
---

在此处输入文章内容...
EOF

echo "文章已创建：$FILEPATH"
