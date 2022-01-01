#!/bin/zsh

# grep -vを使うと検索条件を反転させることができる
find . -type f | grep -v "\./dir_b/d" | sort
