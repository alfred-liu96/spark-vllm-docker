#!/bin/bash
set -e

# 动态获取当前日期（格式：YYYYMMDD）
TODAY=$(date +%Y%m%d)
DEFAULT_TAG="vllm-node-bx12:${TODAY}"

# 调用底层构建脚本，指定默认参数，
# 同时透传所有追加的命令行参数（$@）
./build-and-copy.sh \
  -t "$DEFAULT_TAG" \
  --exp-b12x \
  -c \
  "$@"
