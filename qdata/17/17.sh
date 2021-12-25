#!/bin/zsh

# Bashではループ全体に対してリダイレクト操作をすることができる
while read ln ; do echo $ln ; done < /etc/passwd> ./a;

# $(<ファイル名)はコマンド置換の拡張的な機能
echo "$(</etc/passwd)" > ./a;

