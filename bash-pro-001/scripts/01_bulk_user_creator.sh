#!/bin/bash
for user in "$@"; do
id "$user" &>/dev/null || sudo  useradd "$user"
echo "$user created"
