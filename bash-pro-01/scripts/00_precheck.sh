#!/bin/bash

echo "Running predeployment checks..."

# ───────────────────────────────
# 1. Check hosts.txt
# ───────────────────────────────
HOST_FILE="hosts.txt"

if [[ ! -f $HOST_FILE ]]; then
  echo "ERROR: $HOST_FILE not found in $(pwd)"
  exit 1
fi

if [[ ! -s $HOST_FILE ]]; then
  echo " ERROR: $HOST_FILE is empty."
  exit 1
fi

echo " hosts.txt found with $(wc -l < $HOST_FILE) hosts."

# ───────────────────────────────
# 2. Check SSH connectivity
# ───────────────────────────────
echo " Checking SSH connectivity to all hosts..."

while IFS= read -r host; do
  echo -n "$host: "
  ssh -o BatchMode=yes -o ConnectTimeout=3 vagrant@$host "echo OK" 2>/dev/null
  if [[ $? -ne 0 ]]; then
    echo " SSH failed (check keys or host availability)"
  else
    echo " SSH OK"
  fi
done < "$HOST_FILE"

# ───────────────────────────────
#  3. Check required commands
# ───────────────────────────────
echo " Checking required commands..."

for cmd in ssh scp chmod; do
  if ! command -v $cmd &>/dev/null; then
    echo " $cmd not found. Please install it."
    exit 1
  else
    echo " $cmd found"
  fi
done

# ───────────────────────────────
#  4. Check script permissions
# ───────────────────────────────
echo " Making scripts executable..."
chmod +x 01_bulk_user_creator.sh 02_ssh_remote_exec.sh 03_scp_deploy_exec.sh deploy_script.sh

# ───────────────────────────────
#  5. Ensure logs/ folder exists
# ───────────────────────────────
mkdir -p logs
echo " logs/ directory ensured."

