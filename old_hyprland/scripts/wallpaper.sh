#!/bin/bash

WALLPAPER_DIR="$HOME/Wallpaper"
INTERVAL=1800  # change every 30 mins, adjust as you like

while true; do
    WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.jpeg" \) | shuf -n 1)
    
    if [ -n "$WALLPAPER" ]; then
        hyprctl hyprpaper unload all
        hyprctl hyprpaper preload "$WALLPAPER"
        hyprctl hyprpaper wallpaper "eDP-1,$WALLPAPER"
    fi
    
    sleep $INTERVAL
done
