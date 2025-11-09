#!/bin/bash
THRESHOLD=80
LOG_FILE="disk_alert_log.txt"

USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

if [ "$USAGE" -ge "$THRESHOLD" ]; then
  echo "$(date '+%Y-%m-%d %H:%M:%S') - Disk usage at ${USAGE}%! ALERT!" >> "$LOG_FILE"
  echo "Disk usage exceeded threshold!"
else
  echo "$(date '+%Y-%m-%d %H:%M:%S') - Disk usage normal at ${USAGE}%." >> "$LOG_FILE"
  echo "Disk usage normal: ${USAGE}%"
fi
