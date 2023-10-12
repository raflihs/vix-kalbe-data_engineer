#!/bin/bash

#variables
path="hdfs/data/data1"
name_of_directory="data1"

#Conditions
if [ -d "$path/$name_of_directory"];
then
  echo "There is $name_of_directory Directory Exists!"
else
  echo "$name_of_directory Directory Not Exists!"
  mkdir -p "$path/$name_of_directory"
  echo "$name_of_directory Directory Has Been Created!"

fi

crontab -e
0 7 * * * /path/to/script1.sh