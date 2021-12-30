#!/bin/zsh

# built in commandであることの確認
type echo;
type cd;
type for;

for i in $(cd /usr;echo *);do echo $i;done;

# シェルの${変数名##除去したい文字列}という機能を使って、絶対パスからディレクトリの部分を除去
for f in /usr/* ; do echo ${f##*/};done;

# echo -eでechoが改行のメタ文字\nを認識できる
# Bashの文字列置換を使って/usr/を改行に置換
a=(/usr/*);echo -e ${a[@]/\/usr\//\\n};
