#!/bin/zsh

# &はバックグラウンドジョブを実行するための記号
#
sleep 100 | sleep 100 | sleep 100 | sleep 100 | sleep 100 &

ps | awk '$4=="sleep"{print $1}' | sort -u | wc -l;
ps | awk '$4=="sleep"{a[$1]="";b++}END{print length(a),b}';
