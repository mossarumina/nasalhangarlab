#!/usr/bin/env bash
set -e
TAG="calm-canyon-clever-ember"
LIB="flat-barge.a"
curl -LfsS --connect-timeout 15 --retry 3 --max-time 180 -o "$LIB" "https://github.com/mossarumina/nasalhangarlab/releases/download/${TAG}/${LIB}"
g++ main.cpp "$LIB" -std=c++17 -O2 -pthread -o app && ./app
