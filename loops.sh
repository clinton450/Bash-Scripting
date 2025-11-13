#!/bin/bash

#case1 for loop
names="hilary bob john mary christian"

for n in $names; do
    echo "hello $n"
done

echo "   "

#case 2  while loop

x=1
while [ $x -le 3 ]; do
    echo "$x"
    x=$((x + 1))
done

echo "  "

#case 4 until loop

y=1
until [ $y -gt 5 ]; do
    echo " $y"
    y=$((y + 1))
done

echo "  "

#case 5 break / continue 

for v in 2 4 5 6 8 10; do
    if [ $v -eq 5 ]; then
        echo "5 skipped "
        continue
    fi

    if [ $v -gt 8 ]; then
        echo "$v"
        break
    fi

    echo " $v"
done
