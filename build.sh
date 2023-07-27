#!/bin/bash
set -e

code_path=$(dirname $(readlink -f "$0"))

cd $code_path
chmod +x docker_script.sh
docker run --rm -v $code_path:/frp golang:1 /frp/docker_script.sh
