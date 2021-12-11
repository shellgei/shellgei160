#!/bin/zsh

a=1;

if echo $a | grep '[02468]$'; then echo 偶数 ;
elif echo $a | grep '[13579]$'; then echo 奇数 ;
else echo その他; fi;

if grep '[0246$]' <<< "$a"; then
  echo 偶数
elif grep '[13579]$' <<< "$a" ; then
  echo 奇数
else
  echo その他
fi

# awk
echo $a | awk '{print /[0-9]/ ? ($1%2 ? "奇数":"偶数"):"その他"}';
echo $a | awk '/[0-9]/ {print $1%2 ? "奇数":"偶数";exit}{print "その他"}';

# bash
bash -c "grep '[02468]' <<< $a && echo 偶数" || bash -c "grep '[13579]' <<< $a && echo 奇数" || echo その他;
