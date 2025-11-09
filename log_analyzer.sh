#!/bin/bash
LOG_FILE="test_log.txt"

ERROR_COUNT=$(grep -i "error" "$LOG_FILE" | wc -l)
WARNING_COUNT=$(grep -i "warning" "$LOG_FILE" | wc -l)

echo "Summary:"
echo "Errors  : $ERROR_COUNT"
echo "Warnings: $WARNING_COUNT"
