#!/bin/bash
PROCESS="python"
LOG_FILE="process_log.txt"

if pgrep "$PROCESS" > /dev/null; then
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $PROCESS is running." >> "$LOG_FILE"
    echo "$PROCESS is running."
else
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $PROCESS not found." >> "$LOG_FILE"
    echo "$PROCESS not found."
fi
