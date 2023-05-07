#!/bin/bash
echo "Running deployment tasks..."
if ! scp deploy_script.sh vagrant@$host:/tmp/; then
  echo " Failed to SCP to $host"
  continue
fi
date >> /tmp/deployment.log
touch /tmp/app.config
