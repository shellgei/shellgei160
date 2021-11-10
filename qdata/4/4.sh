mkdir tmp
cd tmp
seq 100 | sed 's/^/echo $RANDOM > /' | bash
