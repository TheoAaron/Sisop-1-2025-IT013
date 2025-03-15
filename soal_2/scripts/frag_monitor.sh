#!/bin/bash

DETIK=1

while true; do
  RAM_USG=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
  RAM_TOTAL=$(free -m | grep Mem | awk '{print $2}')
  RAM_AVAILABLE=$(free -m | grep Mem | awk '{print $7}')
  RAM_FRAGMENT=$(vmstat -s | grep "pages paged out" | awk '{print $1}')

  TIME=$(date +"%Y-%m-%d %H:%M:%S")

  clear

  echo "RAM"
  echo "[$TIME] - Fragment Usage [$RAM_USG%] - Fragment Count [$RAM_FRAGMENT MB] - Details [Total: $RAM_TOTAL MB, Avaliable: $RAM_AVAILABLE MB]"

  sleep $DETIK
done
