seq 5 | awk '{
for(i=5;i>$1;i--){
  printf(" ");
};
print("x");
}'
## printfは改行なし、printは改行あり

# 行番号取得
#seq 5 | awk '{print NR}'

# 変数をインクリメント
#seq 5 | awk '{a++;print a;}'

# 数を増やしていく
#seq 5 | awk '{print $1;}'

# 数を減らしていく
#seq 5 -1 1 | awk '{print $1;}'
