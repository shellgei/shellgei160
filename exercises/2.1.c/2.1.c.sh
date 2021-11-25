a=私は
b=俳優よ

# 小問1
c=$a$b;echo $c;

# 小問2
a+=$b; echo $c;

# 小問3
b=${a:0:1}${b:0:2};echo $b;

# 小問4
c=${a/俳優/排骨麺};echo $c;