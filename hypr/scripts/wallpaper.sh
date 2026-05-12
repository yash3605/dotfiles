#!/bin/bash

WALLPAPER_DIR="$HOME/Wallpaper"

# Find a random wallpaper with priority for high-quality images
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \) -size +500k 2>/dev/null | shuf -n 1)

# Fallback if no wallpaper found
if [ -z "$WALLPAPER" ]; then
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \) 2>/dev/null | shuf -n 1)
fi

if [ -n "$WALLPAPER" ]; then
    hyprctl hyprpaper unload all
    hyprctl hyprpaper preload "$WALLPAPER"
    hyprctl hyprpaper wallpaper "eDP-1,$WALLPAPER"
fi
