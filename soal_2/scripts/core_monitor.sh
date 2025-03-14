#!/bin/bash

echo "CPU OVERALL :"
grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}'
lscpu | grep "Model name" | sed "s/Model name:/CPU Model :/"
