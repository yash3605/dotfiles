# Change the wallpaper to a random one
waypaper --random

# Extract the path to the current wallpaper
path_to_wallpaper=$(swww query | grep -Po "/.*")

# Use pywal to apply theme according to the wallpaper
wal -i $path_to_wallpaper
