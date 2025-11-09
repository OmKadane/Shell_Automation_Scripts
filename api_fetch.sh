#!/bin/bash
API_URL="https://api.open-meteo.com/v1/forecast?latitude=28.61&longitude=77.23&current_weather=true"

echo "Fetching weather data..."
curl -s "$API_URL" | grep -E '"temperature"|\"windspeed\"'
