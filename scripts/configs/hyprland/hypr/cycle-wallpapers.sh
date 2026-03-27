#!/usr/bin/env bash
#--------------------------------------------------------------------------------
# File:          cycleWallpaper.sh
# Created:       Friday, 27 March 2026 - 03:28 AM
# Author:        AhmdHosni (ahmdhosny@gmail.com)
# Link:
# Description:
#--------------------------------------------------------------------------------

# DIR="$HOME/Pictures/Wallpapers" # Change to your folder
DIR="/media/ahmdhosni/Storage/Pictures/wallpapers" # Wallpaper bank folder
INDEX_FILE="/tmp/wallpaper_index"

# Get all images in an array
FILES=($(find "$DIR" -type f \( -name "*.jpg" -o -name "*.png" -o -name "*.webp" \) | sort))

# Read or initialize index
if [ -f "$INDEX_FILE" ]; then
    INDEX=$(cat "$INDEX_FILE")
else
    INDEX=0
fi

# Increment index and loop back if at the end
NEXT_INDEX=$(((INDEX + 1) % ${#FILES[@]}))
echo "$NEXT_INDEX" >"$INDEX_FILE"

# Set the wallpaper (Example using swww)
awww img "${FILES[$NEXT_INDEX]}" --transition-fps 60 --transition-type center
# awww img "${FILES[$NEXT_INDEX]}" --transition-type simple
# awww img "${FILES[$NEXT_INDEX]}" --transition-fps 60 --transition-type center
