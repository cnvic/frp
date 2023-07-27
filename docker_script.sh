#!/bin/bash
set -e

# export HTTP_PROXY="http://192.168.56.123:21080"
# export HTTPS_PROXY="http://192.168.56.123:21080"

cd /frp

# GOPROXY=https://goproxy.cn CGO_ENABLED=0 go mod tidy

GOPROXY=https://goproxy.cn CGO_ENABLED=0 go build -trimpath -a -ldflags '-s -w -extldflags "-static"' -o bin/frpc ./cmd/frpc

# env CGO_ENABLED=0 go build -trimpath -ldflags "$(LDFLAGS)" -o bin/frpc ./cmd/frpc

