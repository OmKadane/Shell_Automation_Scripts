#!/bin/bash
SOURCE_DIR="projects"
BACKUP_DIR="backup"
LOG_FILE="backup_log.txt"

mkdir -p "$BACKUP_DIR"
cp -r "$SOURCE_DIR" "$BACKUP_DIR/projects_$(date +%Y%m%d_%H%M%S)"

echo "Backup completed at $(date '+%Y-%m-%d %H:%M:%S')" >> "$LOG_FILE"
echo "Backup successful!"
