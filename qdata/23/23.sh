#!/bin/zsh

# ロック状態を発生
echo $$
kill -s STOP $$

# ロック状態を解除
kill -s CONT 67622
