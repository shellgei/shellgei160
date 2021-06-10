#!/bin/bash

( sleep 100 && echo a ) > $$                &
( sleep 100 && echo b ) > $(mktemp)         &
( sleep 100 && echo c ) > $(date +%s.%N)    &
echo $$
wait
