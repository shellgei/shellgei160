brew install rename
mkdir tmp
cd tmp

seq 100 | xargs -P2 touch
#seq 100 | xargs -I@ touch @

ls -U | xargs -P2 rename 's/^/000/;s/0*([0-9]{3})/$1/'
#ls -U | xargs rename 's/^/000/;s/0*([0-9]{3})/$1/'
## lsの-Uオプションをつけることによってソートを省略し処理時間を短縮できる
## xargsの-P2は並列処理
##  s/^/0000000/ ではいったんファイル名の先頭に一律で3個のゼロ(000)を付与
## s/0*([0-9]{3})/$1/　で後ろ3桁の数字を抽出。[0-9]{3}が数字３個の並びという意味を持つ正規表現でここだけ後方参照$1で残し、その前につけた余計な0(正規表現で0*)を除去

## delete file
ls -U | xargs -P2 rm
#ls -U | xargs -I@ rm @