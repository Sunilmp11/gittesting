#!/bin/bash

echo "menu"
echo -e "1) monday, create a file log1 and log2 \n2) Tuesday, rename files log1 to log_1 and log2 to log_2 \n3) wednesday, copy file log_1 to log1_backup and log_2 to log2_backup \n4) Thursday, redirect output of l-lrt to log-list \n5) friday, delete  log1_backup and log1_backup \n6) sat and sun, holiday"

num=$1
if [ $num -eq 1 ]; then
  echo "Creating log files"
  touch log1 log2
elif [ $num -eq 2 ]; then
  echo "Renaming logfiles"
   mv log1 log_1
   mv log2 log_2
elif [ $num -eq 3 ]; then
  echo "Creating a log Backup files"
  cp log_1 log1_backup
  cp log_2 log2_backup
elif [ $num -eq 4 ]; then
  echo "redirect output of l-lrt to log-list"
  ls -lrt > log-list
elif [ $num -eq 5 ]; then
  echo "rrmoving log backupfiles"
  rm -rf log1_backup log2_backup
else
   echo "holiday"
fi
#case $select in
#1) touch log1 log2
#      ;;
#2) mv log1 log_1
#   mv log2 log_2
#     ;;
#3) cp log_1 log1_backup 
#   cp log_2 log2_backup
#      ;;
#4) ls -lrt > log-list
#       ;;
#5) rm -rf log1_backup log2_backup
#      ;;
#6) echo "holiday"
#    ;;
#esac
