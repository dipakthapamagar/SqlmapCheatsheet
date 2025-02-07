#!/bin/bash

filename="formatted_ips.txt"
date_time=$(date +%Y-%m-%d_%H-%M-%S)
folder_name="ping_results_$date_time"
alive_output_file="$folder_name/alive_ping_results.txt"
dead_output_file="$folder_name/dead_ping_results.txt"

mkdir $folder_name

while read -r line; do
  ping -c 1 "$line" > /dev/null 2>&1
  if [ $? -ne 0 ]; then
    echo "$line" >> $dead_output_file
  else
    echo "$line" >> $alive_output_file
  fi
done < "$filename"