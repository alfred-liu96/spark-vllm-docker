#!/bin/bash
set -e

DEFAULT_TAG="vllm-node-b12x:20260803"

# 调用 run-recipe.sh，优先传入默认的 -t 参数，并附带所有传入该脚本的额外参数
./run-recipe.sh -t "$DEFAULT_TAG" "$@"