#!/bin/zsh

#
seq 3 | python3 -c 'import sys;[print(int(a)*2) for a in sys.stdin]';

seq 3 | python3 -c 'import sys, math;[print(math.sqrt(int(a))) for a in sys.stdin]';

# strip, rstripを使って改行を除去
seq 3 | python3 -c 'import sys;[print("番号" + a.strip()) for a in sys.stdin]';
