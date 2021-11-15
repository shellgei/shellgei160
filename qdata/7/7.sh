cat kakeibo.txt | awk '{tax=($1<"20191001" || $2~/^\*/) ? 1.08:1.1; print $0, tax};' | awk '{print int($3 * $4)}' | awk '{a+=$1} END {print a}'

## $0は行全体を表す変数。$1,$2,$3と書いても良い

