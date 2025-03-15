#!/bin/bash

TIME=1

while true; do
 CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
 CPU_MODEL=$(lscpu | grep "Model name" | cut -d ':' -f 2 | xargs)

 RECENT=$(date +"%Y-%m-%d %H:%M:%S")
 clear
     
 echo "CPU"
 echo "[$RECENT] – Core Usage [$CPU_USAGE%] – Terminal Model [$CPU_MODEL]"

 sleep $TIME
done
