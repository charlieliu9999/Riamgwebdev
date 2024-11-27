#!/bin/bash

# 安装依赖（如果需要）
if ! command -v convert &> /dev/null; then
    echo "ImageMagick not found. Please install it first:"
    echo "brew install imagemagick"
    exit 1
fi

# 图片目录
IMG_DIR="/Users/charlieliu/git_project_vscode/quickstart/static/images/news/2024/01"

# 生成医学影像标准图片
convert -size 800x400 xc:white \
    -gravity center \
    -pointsize 40 \
    -annotate 0 "医学影像标准化" \
    -pointsize 20 \
    -annotate +0+50 "Medical Imaging Standards" \
    "$IMG_DIR/medical-imaging.jpg"

# 生成AI技术图片
convert -size 800x400 xc:lightblue \
    -gravity center \
    -pointsize 40 \
    -annotate 0 "AI 医学影像" \
    -pointsize 20 \
    -annotate +0+50 "AI Medical Imaging" \
    "$IMG_DIR/ai-imaging.jpg"

# 生成国际合作图片
convert -size 800x400 xc:lightgreen \
    -gravity center \
    -pointsize 40 \
    -annotate 0 "国际标准合作" \
    -pointsize 20 \
    -annotate +0+50 "International Cooperation" \
    "$IMG_DIR/international.jpg"

echo "示例图片已生成在 $IMG_DIR"
