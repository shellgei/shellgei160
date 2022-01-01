#!/bin/zsh
# {}：ブレース展開
# trで改行に変換
# sort -Rでランダムに並び替える
# head -n 100で100行取り出す
echo {mail,web,api,auth,b,c,}.{1,2,3}.{A,B,C}.{docomo,au,softbank}.{jp,com} | tr ' ' '\n' | sort -R | head -n 100 | sed 's/^\.//'

