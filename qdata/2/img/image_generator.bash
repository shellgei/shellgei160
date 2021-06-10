#!/bin/bash
i=0
while read -r _color ; do
  i=$(( i + 1 ))
  fname="${i}_${_color}.png"
  echo "${fname}"
  convert -size 1024x1024 xc:"${_color}" "${fname}"
done < <( gshuf -n60 -er black grey white green yellow red blue tomato steelblue green purple orange brown )
