#!/bin/bash
set -e
rm -f "$0"
for i in {1..100}; do
  printf "%d " "$i"
  if [[ $(( i % 3 )) == 0 ]; then
    printf "%s" "Fizz"
  fi
  ! (( i % 5 )) && printf "%s" "Buzz"
  echo
done
