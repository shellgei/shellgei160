#!/bin/bash

num=${1:-$(cat)};
# num=${1};
# num=$(cat);
echo $((num*2));


