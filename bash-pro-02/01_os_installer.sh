#!/bin/bash

echo "[INFO] Starting Apache installation..."

if [ -f /etc/redhat-release ]; then
  echo "[INFO] Detected CentOS/RHEL"
  sudo yum install -y httpd
  sudo systemctl enable httpd
  sudo systemctl start httpd

elif [ -f /etc/lsb-release ] || grep -qi ubuntu /etc/os-release; then
  echo "[INFO] Detected Ubuntu/Debian"
  sudo apt update
  sudo apt install -y apache2
  sudo systemctl enable apache2
  sudo systemctl start apache2

else
  echo "[ERROR] Unsupported OS"
  exit 1
fi

