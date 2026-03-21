#!/bin/bash

# 设置文件大小阈值（单位：字节），例如 100KB = 102400
MAX_SIZE=102400

# 获取当前文件路径
file="$1"

# 获取文件大小（适用于 Linux 和 macOS）
if [[ "$OSTYPE" == "darwin"* ]]; then
    size=$(du -b "$file" | awk '{print $1}')
else
    size=$(stat -c "%s" "$file")
fi

# 如果文件大小超过阈值，则不进行预览
if [[ "$size" -gt "$MAX_SIZE" ]]; then
    echo "File too large to preview"
    exit 0
fi

# 否则调用默认的预览命令（如 less、bat 等）
less -R "$file"

