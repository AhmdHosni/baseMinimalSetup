#!/usr/bin/env bash
#--------------------------------------------------------------------------------
# File:          make-it-accessable.sh
# Created:       Thursday, 19 February 2026 - 01:40 AM
# Author:        AhmdHosni (ahmdhosny@gmail.com)
# Link:
# Description:   A script to make gimp accessable from commandline
#--------------------------------------------------------------------------------

GIMP_DIR="/media/ahmdhosni/Storage/Apps/gimp"
VSCODIUM_DIR="/media/ahmdhosni/Storage/Apps/vsCodium"
NVIM_DIR="/media/ahmdhosni/Storage/Apps/neovim/nvim"

GLOBAL_BIN_FOLDER="/usr/local/bin/"

sudo ln -s $GIMP_DIR/GIMP.AppImage $GLOBAL_BIN_FOLDER/gimp
sudo ln -s $VSCODIUM_DIR/VSCodium.AppImage $GLOBAL_BIN_FOLDER/vsCodium
sudo ln -s $NVIM_DIR/nvim-linux.appimage $GLOBAL_BIN_FOLDER/nvim

exit 0
