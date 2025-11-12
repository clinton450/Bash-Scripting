#!/bin/bash



cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}' | sed 's/%//')

mem_used=$(free | grep Mem | awk '{print $3/$2 * 100.0}')


disk=$(df / | grep / | awk '{print $5}' | sed 's/%//')

echo " "
echo "CPU usage: $cpu%"

echo "Memory usage: $mem_used%"



echo "Disk usage: $disk%"


if (( ${cpu%.*} > 80 )); then
    echo "your  CPU usage  is high"
fi

if (( ${mem_used%.*} > 80 )); then
    echo "your  Memory usage is high"
fi

if (( disk > 80 )); then
    echo "Disk is becoming  too  full reduce "
fi
