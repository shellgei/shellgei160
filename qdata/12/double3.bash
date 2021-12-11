#!/bin/bash

[ "$1" = "" ] && read n || n="$1";
echo $((n*2))

