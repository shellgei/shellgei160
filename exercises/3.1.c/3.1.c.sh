#!/bin/zsh


# grepは
# 「基本」正規表現(BRE) -G
# 「拡張」正規表現(ERE) -E
# 「Perlの」正規表現(PCRE) -P
# という３種類の正規表現文法を扱うことができる

# 1
echo '(bash|nologin)' | grep -G '^(bash|nologin)$'

# 2
# ERE,PCREの場合{数字}で直前の文字の繰り返し回数を表す
echo 'ああああああ！！' | grep -E '！{2}'

# 3
# ERE,PCREの場合、?は「直前の文字が0個か1個存在する」という意味
echo '処す?処す?' | grep -0 -G '処す?'

# 4
# BREは、c.+は「Cと何か１文字と+」を表す
# ERE、PCREは+は「直前の文字の１文字以上の繰り返し」
echo 'C/C++' | grep -o -E 'C.+'

# 5
echo 36 | grep -P '\N'
echo 36 | grep -E '[0-9]'

# 6
echo とまとまとまと | grep -o -P 'と(?=まと)' | uniq -c

# 7
echo 123abcあいう-45deえお | grep -P '(\d+\w+[あ-お]+)-\g<1>'