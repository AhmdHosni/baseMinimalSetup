#!/usr/bin/env bash
#--------------------------------------------------------------------------------
# File:          copy-config-files.sh
# Created:       Saturday, 28 March 2026 - 10:40 PM
# Author:        AhmdHosni (ahmdhosny@gmail.com)
# Link:
# Description:
#--------------------------------------------------------------------------------

# start-hyprland

############################
### Copying Config folders :
############################

# Get the directory where this script is located
THIS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOCAL_CONFIG_DIR="/media/ahmdhosni/Storage/Settings/gitRepos"
TARGET_CONFIG_DIR="$HOME/.config"

cp -vfr $THIS_DIR/configVersion2/waybar $TARGET_CONFIG_DIR
cp -vfr $THIS_DIR/configVersion2/rofi $TARGET_CONFIG_DIR
cp -vfr $THIS_DIR/configVersion2/hypr $TARGET_CONFIG_DIR
cp -vfr $THIS_DIR/configVersion2/kitty $TARGET_CONFIG_DIR
cp -vfr $LOCAL_CONFIG_DIR/mozilla $TARGET_CONFIG_DIR
cp -vfr $LOCAL_CONFIG_DIR/git $TARGET_CONFIG_DIR

#################################
### make the scripts executable :
#################################
find $TARGET_CONFIG_DIR/waybar -type f -name "*.sh" -exec chmod +x {} +
find $TARGET_CONFIG_DIR/hypr -type f -name "*.sh" -exec chmod +x {} +
find $TARGET_CONFIG_DIR/rofi -type f -name "*.sh" -exec chmod +x {} +

###############################
### run cycle-wallpaper once  :
###############################
awww-daemon &
~/.config/hypr/cycle-wallpapers.sh
exit 0
