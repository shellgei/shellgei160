# コマンドの出力をファイルに保存
ls 1> a

# コマンドにファイルの中身を入力。入力のリダイレクト記号
wc -l < a
# catとパイプを使う方法
cat a | wc -l

# 0 標準入力
# 1 標準出力
# 2 標準エラー出力

sed -help 2> a
sed 2> wc -l

sed -help 2>&1 | wc -l
sed -help |& wc -l
