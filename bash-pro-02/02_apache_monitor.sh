#!/bin/bash

LOG_FILE="./apache_monitor.log"

TIMESTAMP=$(date '+%F %T')

if pidof apache2 > /dev/null 2>&1 || pidof httpd > /dev/null 2>&1; then
  echo "$TIMESTAMP  Apache is running" >> "$LOG_FILE"
else
  echo "$TIMESTAMP  Apache is down. Attempting restart..." >> "$LOG_FILE"
  systemctl start apache2 2>/dev/null || systemctl start httpd 2>/dev/null
  if [ $? -eq 0 ]; then
    echo "$TIMESTAMP  Apache restarted successfully." >> "$LOG_FILE"
  else
    echo "$TIMESTAMP  Failed to restart Apache." >> "$LOG_FILE"
  fi
fi

