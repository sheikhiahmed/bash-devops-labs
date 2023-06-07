#!/bin/bash
for host in $(cat hosts.txt); do
  echo "Deploying to $host..."
  scp deploy_script.sh vagrant@$host:/tmp/
  ssh vagrant@$host "bash /tmp/deploy_script.sh && rm /tmp/deploy_script.sh"
done
