#!/usr/bin/env bash
#--------------------------------------------------------------------------------
# File:          install-pywal16.sh
# Created:       Sunday, 29 March 2026 - 02:21 AM
# Author:        AhmdHosni (ahmdhosny@gmail.com)
# Link:
# Description:
#--------------------------------------------------------------------------------

# Get the directory where this script is located
THIS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$THIS_DIR/libs/lib_functions.sh"
start_tmux
cache_sudo

# Detect OS
if [ -f /etc/arch-release ]; then
    echo "Arch Linux detected. Installing with paru..."
    install_package "imagemagick" "imagemagick is required for pywal16 to work"
    # paru -S python-pywal16
    install_from_aur "python-pywal16" "Installing pywal from AUR" "cleanup"
elif [ -f /etc/debian_version ]; then
    echo "Debian detected. Installing via pip (using venv)..."
    sudo apt update && sudo apt install -y python3-pip python3-venv imagemagick
    python3 -m venv ~/.local/share/pywal-venv
    ~/.local/share/pywal-venv/bin/pip install pywal16
    # Link binary to local bin for easy access
    mkdir -p ~/.local/bin
    ln -sf ~/.local/share/pywal-venv/bin/wal ~/.local/bin/wal
    echo 'export PATH="$HOME/.local/bin:$PATH"' >>~/.bashrc
else
    echo "Unsupported OS."
    exit 1
fi

echo "Installation complete. Restart your terminal or source your config."

################
# Require Reboot
################

# sudo touch /var/run/reboot-required

exit 0
