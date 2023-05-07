#!/bin/bash

HOST_FILE="hosts.txt" 

# Check if file exists
if [[ ! -f $HOST_FILE ]]; then
  echo "$HOST_FILE not found"
  exit 1
fi

# Loop through each hostname in hosts.txt
while IFS= read -r host; do
  echo " Connecting to $host..."
  ssh -F ~/.ssh/vagrant_ssh_config "$host" "uptime && df -h" >> logs/$host.log 2>&1

  if [[ $? -eq 0 ]]; then
    echo " Success [$host]"
  else
    echo " SSH failed [$host] — see logs/$host.log"
  fi
done < "$HOST_FILE"
