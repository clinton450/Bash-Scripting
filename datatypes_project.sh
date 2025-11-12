#!/bin/bash


echo -n "Enter  your  name: "
read name

echo -n "Enter your hours worked: "

read hours

echo -n "Enter your  hourly rate : "
read rate

echo -n "Enter bonus hours worked : "

read bonus


total=$(scale=2; ($hours * $rate) + $bonus | bc)


echo "you are called: $name"
echo "Hours Worked: $hours"
echo "Hourly Rate: $rate"
echo "Bonus: $bonus"
echo "  "
echo "Total Salary: $total USD"

