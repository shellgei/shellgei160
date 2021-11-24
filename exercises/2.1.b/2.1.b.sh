# Bashの変数を定義する
a=hogehoge

# 変数の値を出力する
echo $SHELL
# 変数の値を出力する(ヒアストリング)
echo <<< $SHELL

# ダメな例
# シェルはこれをaがコマンドで=とhogehogeが引数と解釈してしまう
a = hogehogw
