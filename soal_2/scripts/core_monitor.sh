<<<<<<< HEAD
#!/bin/bash

while true; do
clear
echo "CPU OVERALL :" 
grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}'
lscpu | grep "Model name" | sed "s/Model name:/CPU Model :/"
sleep 1
done
=======
LOG_DIR="$(dirname "$0")/../logs"
LOG_FILE="$LOG_DIR/core.log"

mkdir -p "$LOG_DIR"

TIMESTAMP=$(date +"%Y-%m-%d %H:%M:%S")

CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')
CPU_MODEL=$(grep -m1 "model name" /proc/cpuinfo | cut -d ':' -f2 | sed 's/^ //')

echo "[$TIMESTAMP] - Core Usage [$CPU_USAGE%] - Terminal Model [$CPU_MODEL]" >> "$LOG_FILE"
>>>>>>> cac64ee (Final Perbaikan soal_2)
