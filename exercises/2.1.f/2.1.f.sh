## 配列を初期化するときは、配列名=()の括弧内に文字列を並べる
a=( "$SHELL" "$LANG" "$USER")

## 連想配列は declare -Aで作る
declare -A b # bという連想配列を作る
b["SHELL"]="$SHELL"
b["LANG"]="$LANG"
b["USER"]="$USER"

echo ${a[1]}
echo ${b["SHELL"]}
echo ''

# 要素の全てを出力するには[@]あるいは[*]を使う
echo ${a[@]}
echo ''

# #を使って要素数を取得
echo ${#a[@]}
echo ''

# echo ${!b[@]}
echo ''
