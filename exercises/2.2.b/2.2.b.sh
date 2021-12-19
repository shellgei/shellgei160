#!/bin/zsh
sleep 100 | sleep 100 | sleep 100 | sleep 100 | sleep 100 &

pstree | grep -A5 bash
