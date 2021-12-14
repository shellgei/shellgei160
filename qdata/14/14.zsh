#!/bin/zsh

n=1;
# 変数nが100以下(less than or equal)の時に終了ステータス0を返す
while [ $n -le 100 ]
do
  echo "羊が$n匹";
  n=$((n+1));
  sleep 1;
done;

#
seq 100 | while read n;do echo '羊が'$n'匹';sleep 1;done;
for n in $(seq 100); do echo 羊が$n匹; sleep 1;done;
for n in {1..100};do echo 羊が$n匹; sleep 1;done;
seq 1 100 | xargs -I@ bash -c 'echo 羊が@匹; sleep 1';

# seq -fオプションを使うと、引数で与えた文字列の中に数字を順に埋め込んで出力できます
seq -f 'echo 羊が%g匹; sleep 1' 100 | bash;
