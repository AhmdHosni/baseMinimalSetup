#!/usr/bin/env bash
#--------------------------------------------------------------------------------
# File:          install-with-HyDE-script.sh
# Created:       Saturday, 28 March 2026 - 10:34 PM
# Author:        AhmdHosni (ahmdhosny@gmail.com)
# Link:
# Description:
#--------------------------------------------------------------------------------

sudo pacman -S --needed git base-devel
git clone --depth 1 https://github.com/HyDE-Project/HyDE ~/Downloads/HyDE
cd ~/Downloads/HyDE/Scripts
./install.sh
