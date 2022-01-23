#!/bin/zsh
# mac OSでは動かない
sed -r 's/(<strong>)([^<]+)/\1\U\2/' iampen.txt

cat iampen.txt | perl -pe 's/(?<=<strong>)[^<]+/\U$&/'

vim -es iampen.txt +'let @a="vitUN"|norm /<strong>\zs[^<]\+^M9@a' +'%p|q!'
