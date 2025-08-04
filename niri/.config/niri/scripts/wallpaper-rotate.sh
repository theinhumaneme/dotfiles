#!/bin/bash

# Specify the directory where your wallpapers are located
WALLPAPER_DIR="/home//kalyanm/dotfiles/wallpapers/"

# Set the interval in seconds (5 minutes = 300 seconds)
INTERVAL=3
# ---------------------

# Check if the directory exists
if [ ! -d "$WALLPAPER_DIR" ]; then
  echo "Error: Wallpaper directory '$WALLPAPER_DIR' not found."
  exit 1
fi

while true; do
  # Find all image files in the directory
  # You can add more extensions if needed, e.g., "*.jpg" "*.jpeg" "*.png" "*.gif"
  RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
  # Set the wallpaper if a file was found
  if [ -n "$RANDOM_WALLPAPER" ]; then
    swww img "$RANDOM_WALLPAPER" \
      --transition-type any \
      --transition-fps 60 \
  fi

  # Wait for the specified interval
  sleep $INTERVAL
done
