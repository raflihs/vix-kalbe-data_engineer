#!/bin/bash

#variables
path="hdfs/data/data1"
name_of_directory="data1"
filename_excel="daily_market_price.xlsx"
source_dir="/local/data/market"
target_dir="$path/$name_of_d
irectory"

#Conditions
if [ -d "$path/$name_of_directory"];
then
    #copy file
    cp $source_dir/$filename_excel $target_dir/

    echo "File Moved Successfully"
else
  echo "$name_of_directory Directory Not Exists!"
  mkdir -p "$path/$name_of_directory"
  echo "$name_of_directory Directory Has Been Created!"

fi

crontab -e
0 7 * * * /path/to/script2.sh