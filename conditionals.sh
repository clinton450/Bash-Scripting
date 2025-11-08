#!/bin/bash

#case 1  if
echo "============ if statement ============"
num=8
if [ $num -gt 5 ]; then
    echo "$num is  greater than 5"
fi


#case 2 if else statements
echo "============if else statement ============"
age=17

if [ $age -ge 18 ]; then
    echo "you  are an aldult"
else
    echo "you are too young"
fi


#case 3 if elif else statements
echo "============if elif else============"
score=85
if [ $score -ge 90 ]; then
    echo "Grade A"
elif [ $score -ge 80 ]; then
    echo "Grade B"
elif [ $score -ge 70 ]; then
    echo "Grade C"
else
    echo "sorry you have failed "
fi


#case 4 using && and ||   in conditionals
echo "============ and / or when dealing in conditionals============"
temp=25
if [ $temp -ge 20 ] && [ $temp -le 30 ]; then
    echo "temperature is normal"
else
    echo "temperature out of range"
fi
