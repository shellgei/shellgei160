#!/bin/bash -e
# パイプにつながったコマンドのどれかが終了ステータス1以上を返した時にその場でスクリプトを止める設定
set -o pipefail
trap 'rm .tmp.top10' EXIT

sort | head > .tmp.top10 || true

echo "+++++TOP 10+++++"
cat .tmp.top10
