#!/bin/bash

ARTICLE_DIR="/Users/charlieliu/git_project_vscode/quickstart/content/news/2024/01/ai-application"

# 创建封面图
magick -size 800x400 xc:lightblue \
    -gravity center \
    -pointsize 40 \
    -annotate 0 "AI 医学影像" \
    -pointsize 20 \
    -annotate +0+50 "AI Medical Imaging" \
    "$ARTICLE_DIR/cover.jpg"

# 创建AI诊断系统图
magick -size 600x400 xc:lightcyan \
    -gravity center \
    -pointsize 30 \
    -annotate 0 "AI诊断系统" \
    -pointsize 20 \
    -annotate +0+50 "AI Diagnosis System" \
    "$ARTICLE_DIR/ai-diagnosis.jpg"

# 创建临床应用图
magick -size 600x400 xc:lightpink \
    -gravity center \
    -pointsize 30 \
    -annotate 0 "临床应用" \
    -pointsize 20 \
    -annotate +0+50 "Clinical Application" \
    "$ARTICLE_DIR/clinical-application.jpg"

# 创建未来展望图
magick -size 600x400 xc:lavender \
    -gravity center \
    -pointsize 30 \
    -annotate 0 "未来展望" \
    -pointsize 20 \
    -annotate +0+50 "Future Prospects" \
    "$ARTICLE_DIR/future.jpg"

echo "AI文章的图片已生成"
