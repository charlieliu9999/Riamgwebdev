#!/bin/bash

IMAGE_DIR="/Users/charlieliu/git_project_vscode/quickstart/static/images/news/equipment"

# 创建封面图
magick -size 800x400 xc:lightblue \
    -gravity center \
    -pointsize 40 \
    -annotate 0 "医学影像设备标准化" \
    -pointsize 20 \
    -annotate +0+50 "Medical Equipment Standards" \
    "$IMAGE_DIR/cover.jpg"

# 创建进展图
magick -size 600x400 xc:lightgreen \
    -gravity center \
    -pointsize 30 \
    -annotate 0 "标准化进展" \
    -pointsize 20 \
    -annotate +0+50 "Standardization Progress" \
    "$IMAGE_DIR/progress.jpg"

# 创建性能图
magick -size 600x400 xc:lightyellow \
    -gravity center \
    -pointsize 30 \
    -annotate 0 "性能指标" \
    -pointsize 20 \
    -annotate +0+50 "Performance Metrics" \
    "$IMAGE_DIR/performance.jpg"

# 创建安全图
magick -size 600x400 xc:lightpink \
    -gravity center \
    -pointsize 30 \
    -annotate 0 "安全规范" \
    -pointsize 20 \
    -annotate +0+50 "Safety Standards" \
    "$IMAGE_DIR/safety.jpg"

# 创建影响图
magick -size 600x400 xc:lavender \
    -gravity center \
    -pointsize 30 \
    -annotate 0 "预期效果" \
    -pointsize 20 \
    -annotate +0+50 "Expected Impact" \
    "$IMAGE_DIR/impact.jpg"

echo "设备标准化文章的图片已生成"
