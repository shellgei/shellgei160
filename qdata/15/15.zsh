#!/bin/bash

echo I am a perfect human | while read a; do echo $a; done
# echo I am a perfect human | read a; echo $a;
# echo I am a perfect human | (read a; echo ${a^^});
# echo I am a perfect human | (read a; echo ${a^^});

echo pen-pineapple-apple-pen | (IFS=-; read -a w; echo "${w[*]^}");

