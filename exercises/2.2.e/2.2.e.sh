#!/bin/zsh

a=きたうらわ;
# revというコマンドを使うと入力の各業を反転して出力できる
echo ${a}を逆さにすると$(echo $a | rev);

# catは引数にファイル名が複数並ぶと、それらの中身を順番に出力
cat <(echo $a) <(echo を逆さにすると) <(echo $a | rev);