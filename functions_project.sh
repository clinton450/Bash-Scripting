#!/bin/bash

function cpu_usage() {

echo "calculating  you usage...... "

cpu=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}' | sed 's/%//')

echo "cpu usage : $cpu%"

if (( ${cpu%.*} > 80 )); then

    echo "your  CPU usage  is high"
else 
	echo "OK"
fi

}
function memory_usage() {

echo "calculating memory usage ....."

mem_used=$(free | grep Mem | awk '{print $3/$2 * 100.0}')

echo "Memory usage: ${mem_used}%"

if (( ${mem_used%.*} > 80 )); then
    echo "your  Memory usage is high"


else 
	echo "OK"
fi
}


cpu_usage
memory_usage
