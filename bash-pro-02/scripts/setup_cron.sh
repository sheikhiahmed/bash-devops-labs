#!/bin/bash

(crontab -l 2>/dev/null; echo "*/1 * * * * /opt/scripts/apache_monitor.sh") | crontab -

