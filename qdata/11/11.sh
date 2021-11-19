# -n2オプションで、文字列を2つずつならべて出力
# xargsはコマンドを指定しないと、echoを呼び出す
#cat gijiroku.txt | xargs -n2

# 参加者名の変換。スペースをコロンに変換
#cat gijiroku.txt | xargs -n2 | sed 's/^すず/鈴木/;s/^さと/佐藤/;s/^やま/山田/;s/ /:/'

# 各行の後ろに改行を入れる
cat gijiroku.txt | xargs -n2 | sed 's/^すず/鈴木/;s/^さと/佐藤/;s/^やま/山田/;s/ /:/;s/$/\n/'
