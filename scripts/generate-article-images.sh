#!/bin/bash

# 检查参数
if [ -z "$1" ]; then
    echo "请提供文章目录路径"
    exit 1
fi

ARTICLE_DIR="$1"

# 创建封面图
magick -size 800x400 xc:white \
    -gravity center \
    -pointsize 40 \
    -annotate 0 "医学影像标准化" \
    -pointsize 20 \
    -annotate +0+50 "Medical Imaging Standards" \
    "$ARTICLE_DIR/cover.jpg"

# 创建类型细分图
magick -size 600x400 xc:lightblue \
    -gravity center \
    -pointsize 30 \
    -annotate 0 "检查类型细分" \
    -pointsize 20 \
    -annotate +0+50 "Examination Types" \
    "$ARTICLE_DIR/types.jpg"

# 创建编码系统图
magick -size 600x400 xc:lightgreen \
    -gravity center \
    -pointsize 30 \
    -annotate 0 "编码体系" \
    -pointsize 20 \
    -annotate +0+50 "Coding System" \
    "$ARTICLE_DIR/coding-system.jpg"

# 创建影响图
magick -size 600x400 xc:lightyellow \
    -gravity center \
    -pointsize 30 \
    -annotate 0 "实施影响" \
    -pointsize 20 \
    -annotate +0+50 "Implementation Impact" \
    "$ARTICLE_DIR/impact.jpg"

echo "图片已生成在 $ARTICLE_DIR"
