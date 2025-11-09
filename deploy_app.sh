#!/bin/bash
PROJECT_DIR="my_web_app"
LOG_FILE="deploy_log.txt"

mkdir -p "$PROJECT_DIR"
cd "$PROJECT_DIR" || exit

echo "Pulling latest code..."
echo "[Simulated] git pull completed successfully."

echo "Installing dependencies..."
echo "[Simulated] npm install completed."

echo "Restarting app..."
echo "[Simulated] Application restarted."

cd ..
echo "$(date '+%Y-%m-%d %H:%M:%S') - Deployment completed successfully." >> "$LOG_FILE"
echo "Deployment simulation complete."
