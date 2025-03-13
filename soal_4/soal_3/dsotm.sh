#!/bin/bash

#untuk membuat command --play=”<Track>” dapat dibaca
for arg in "$@"
do
 case $arg in
  --play=*)
  TRACK="${arg#*=}"
  ;;
  *)
  ;;
 esac
done
#untuk Speak to me
if [ "$TRACK" = "Speak to Me" ]
then
 while true; do
  curl -H "Accept: application/json" "https://www.affirmations.dev"
  echo ""
  sleep 1
 done
#untuk On the Run
elif [ "$TRACK" = "On the Run" ]
then
 # 1. Create ProgressBar function
 # 1.1 Input is currentState($1) and totalState($2)
 function ProgressBar {
 # Process data
        let _progress=(${1}*100/${2}*100)/100
        let _done=(${_progress}*4)/10
        let _left=40-$_done
 # Build progressbar string lengths
        _done=$(printf "%${_done}s")
        _left=$(printf "%${_left}s")

 # 1.2 Build progressbar strings and print the ProgressBar line
 printf "\rProgress : [${_done// /+}${_left// /-}] ${_progress}%%"

 }

 # Variables
 _start=1
 _end=100

 # Proof of concept
 for number in $(seq ${_start} ${_end})
 do
        sleep $(awk -v min=0.1 -v max=1 'BEGIN{srand(); print min+rand()*(max-min)}')
        ProgressBar ${number} ${_end}
 done
  printf '\nAlhamdulillah lagu ke 2 selesai\n'
#untuk time
elif [ "$TRACK" = "Time" ]
then
 while true
 do clear
  date
  sleep 1
 done 
#untuk money
elif [ "$TRACK" = "Money" ]
then 
 echo -e "\e[1;40m" 
clear 
while :
 do 
  echo $LINES $COLUMNS $(( $RANDOM % $COLUMNS)) $(( $RANDOM % 72 )) 
  sleep 0.05
 done| awk '{ letters="$ € £ ¥ ¢ ₹ ₩ ₿ ₣"
              c=$4
              letter=substr(letters,c,1)
              a[$3]=0;for (x in a) {o=a[x];a[x]=a[x]+1
              printf "\033[%s;%sH\033[2;32m%s",o,x,letter
              printf "\033[%s;%sH\033[1;37m%s\033[0;0H",a[x],x,letter
              if (a[x] >= $1) { a[x]=0; } }}'
#untuk brain damage
elif [ "$TRACK" = "Brain Damage" ]
then 
 watch -n 1 ps -eo 'pid,user,ppid,cmd,%mem,%cpu,start,time,command --sort=-%cpu | head -11'

else
  echo "gaada command nya"
fi
