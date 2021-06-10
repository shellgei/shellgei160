#!/bin/bash -e
set -o pipefail
trap 'rm .tmp.top10' EXIT

sort | head > .tmp.top10

echo "+++++TOP 10+++++"
cat .tmp.top10
