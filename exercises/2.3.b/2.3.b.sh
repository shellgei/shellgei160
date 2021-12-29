#!/bin/zsh

mkdir tmp
cd tmp
touch {1..100}.{txt,bash}
rm 5.txt 25.bash

# ?:任意の１文字
# *:0文字以上の文字列
# []:内側に書いた文字のいずれか

# 小門1
ls [1-9].txt
ls ?.txt

# 小門2
ls [126][5].*

# 小門3
# ^:括弧内の文字を含まない１文字
ls [1345678].*
ls [13-8].*
ls [^29].*


