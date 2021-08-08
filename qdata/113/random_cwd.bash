#!/bin/bash

cd "$(dirname $(find /etc 2>/dev/null | head -n 1000 | shuf | head -n 1))"
sleep 1000 &
echo "pid:$!"
