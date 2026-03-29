#!/usr/bin/env bash
#--------------------------------------------------------------------------------
# File:          install-paru-to-arch.sh
# Created:       Friday, 27 March 2026 - 08:06 AM
# Author:        AhmdHosni (ahmdhosny@gmail.com)
# Link:
# Description:
#--------------------------------------------------------------------------------

if command -v pacman &>/dev/null; then
    # Build paru from github
    sudo pacman -S --needed base-devel
    mkdir -p ~/Downloads/paru && cd paru
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si

    # paru --gendb
fi
