# 連想配列xを作る
declare -A x;
# シェルの入出力行をフィールドに区切るセパレータを/etc/passwdに合わせてコロン(:)にする処理
IFS=:;
# コロンで区切られた１列目から７列目までの文字列を各変数にセット
# 連想配列xの変数gの値をキーにする要素をさしていて、+=.で.を1つ連結
while read {a..g}; do x[$g]+=.; done </etc/passwd;

# xの各キーを変数sにセット、文字列長さを出力
# どのシェルがいつくあったか表示される
for s in ${!x[@]};do echo $s ${#x[$s]};done;
unset x;

# declare -A x ; IFS=: ; while read {a..g} ; do [[ "$g" = "" ]] || x[$g]+=. ; done </etc/passwd ; for s in ${!x[@]} ; do echo $s ${#x[$s]} ; done ; unset x;
