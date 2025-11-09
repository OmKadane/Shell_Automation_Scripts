#!/bin/bash
TARGET_DIR="."
find "$TARGET_DIR" \( -name "*.tmp" -o -name "*.log" \) -type f -mtime +7 -exec rm -f {} \;
echo "Old .tmp and .log files deleted successfully."
