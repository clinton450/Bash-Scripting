#!/bin/bash


#case 1 the for loop
echo "============the for loop case =========="

names="hilary bob john mary christian"

for n in $names; do
    echo "hello $n"
done



#case 2 for the while loop case
echo "============the while loop case ==================="
x=1
while [ $x -le 3 ]; do
    echo "$x"
    x=$((x + 1))
done



#case 4 until loop
echo "===============the until loop now===================" 
y=1
until [ $y -gt 5 ]; do
    echo " $y"
    y=$((y + 1))
done



#case 5 break / continue 
echo "================break/continue================================================"
for v in 2 4 6 8 10; do
    if [ $v -eq 5 ]; then
        echo "6 skipped "
        continue
    fi

    if [ $v -gt 8 ]; then
        echo "$v (stop)"
        break
    fi

    echo " $v"
done
