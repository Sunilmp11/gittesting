#!/bin/bash

while true; do
echo -e "1) Search word\n2) Check name\n3) Find file\n4) Create a link\n5) Edit file\n6) Exit"
echo "Select the menu"
read sl

case $sl in
1)echo "please type the word you want to search" 
  read word
   grep -l -R -i "$word" *
    ;;


2)echo "Please type the file name"
  read name
  if [ -f $name ]; then
   echo "its a file"
  elif [ -d $name ]; then
   echo "its a directory"
  elif [ -L $name ]; then
   echo "its a link"
  else 
   echo "file dose not exist"
  fi
    ;;

3) echo "Pleae type the file name to serch the location"
   read file
   find . -type f -name "$file"
    ;;

4) echo "Creating a link, please type the n ame of the file to create a link"
   read filename
   ln -s $filename /home/ec2-user/dir1/linkfile
    ;;

5) echo "To edit file please provide the file name to edit"
   read name
   vi $name
     ;;
6) echo -e "you have selected to exit\nthankyou"
   exit 0
     ;;
esac
done

