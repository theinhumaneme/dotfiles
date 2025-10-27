#!/bin/bash

# Specify the directory where your wallpapers are located
WALLPAPER_DIR="/home//kalyanm/dotfiles/wallpapers/"

# Find all files in the directory, shuffle them, and select one
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Set the selected wallpaper using swww
swww img "$RANDOM_WALLPAPER" --transition-type outer --transition-fps 60
