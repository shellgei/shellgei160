set aa bb cc;
# echo $2;

for x in "$1" "$2" "$3";
do echo $x ;
done;

seq 3 | while read x;
        do printf "%s " $x;
        done;