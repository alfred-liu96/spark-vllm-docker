#!/bin/bash
set -e

DEFAULT_TAG="vllm-node-b12x:20260928"

# 调用 run-recipe.sh，传入默认的 -t 参数、需要补充的环境变量，以及所有额外参数
./run-recipe.sh -t "$DEFAULT_TAG" \
  -e HF_ENDPOINT=https://hf-mirror.com \
  -e TZ=Asia/Shanghai \
  -e HF_TOKEN="" \
  -e HUGGING_FACE_HUB_TOKEN="" \
  -e HF_HUB_DISABLE_IMPLICIT_TOKEN=1 \
  "$@"
