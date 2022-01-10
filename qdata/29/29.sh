#!/usr/bin/env zsh

# -nオプション　コマンドを読み込むが実行しない。
# シェルスクリプトの構文エラーをチェックできる
# cat ./fb.bash | bash -n

# 標準エラー出力を|&で渡す
bash -n fb.bash |& awk -F'[: ]' '!a[$4]++{print $4}'
