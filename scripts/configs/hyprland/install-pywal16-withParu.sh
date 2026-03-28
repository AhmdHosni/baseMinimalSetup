#!/usr/bin/env bash
#--------------------------------------------------------------------------------
# File:          install-pywal16-withParu.sh
# Created:       Saturday, 28 March 2026 - 05:13 AM
# Author:        AhmdHosni (ahmdhosny@gmail.com)
# Link:
# Description:
#--------------------------------------------------------------------------------

# Detect OS
if [ -f /etc/arch-release ]; then
    echo "Arch Linux detected. Installing with paru..."
    sudo pacman -S --needed --noconfirm imagemagick
    paru -S python-pywal16
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
