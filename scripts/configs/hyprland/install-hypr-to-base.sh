#!/usr/bin/env bash
#--------------------------------------------------------------------------------
# File:          install-to-base.sh
# Created:       Thursday, 26 March 2026 - 05:12 PM
# Author:        AhmdHosni (ahmdhosny@gmail.com)
# Link:
# Description:
#--------------------------------------------------------------------------------

#######################
#### Initial Installs :
#######################

## Hyperland window manager
sudo pacman -S --needed --noconfirm hyprland

## Kitty Terminal
sudo pacman -S --needed --noconfirm kitty

## Notifications
sudo pacman -S --needed --noconfirm swaync

## Top Toolbar for hyprland
sudo pacman -S --needed --noconfirm waybar

## A window switcher, application launcher, run dialog, ssh-launcher and dmenu replacement
sudo pacman -S --needed --noconfirm rofi

## A tool for animated wallpapers (transition). An Answer to your Wayland Wallpaper Woes
sudo pacman -S --needed --noconfirm swww

## Grab images from a Wayland compositor. Works great with slurp  for Screen shots
sudo pacman -S --needed --noconfirm grim

## Authentication Agent from kde
## sudo pacman -S --needed --noconfirm polkit-kde-agent

## Authentication Agent from gnome
#sudo pacman -S --needed --noconfirm polkit-gnome

## Authentication Agent: Recommendation: hyprpolkitagent is specifically made for Hyprland
# Simple polkit authentication agent for Hyprland, written in QT/QML
# After installing the authentication agent, you must add exec-once = hyprpolkitagent
# to your hyprland.conf file to ensure it starts automatically with your session
sudo pacman -S --needed --noconfirm hyprpolkitagent

## QT for theming
sudo pacman -S --needed --noconfirm qt5-wayland qt6-wayland

## fSelect a region in a Wayland compositor and print it to the standard output. Works well wit grim fhor screen shots
sudo pacman -S --needed --noconfirm slurp

## Control and monitor S.M.A.R.T. enabled ATA and SCSI Hard Drives
sudo pacman -S --needed --noconfirm smartmontools

## Universal Wayland Session Manager - uwsm  A standalone Wayland session manager
# sudo pacman -S --needed --noconfirm uwsm

## A free software package for retrieving files using HTTP, HTTPS, FTP and FTPS
sudo pacman -S --needed --noconfirm wget

## Tools allowing to manipulate the Wireless Extensions
sudo pacman -S --needed --noconfirm wireless_tools

## xdg-desktop-portal backend for hyprland
# This handles screen sharing (OBS, Discord), file pickers, and opening links between apps.
sudo pacman -S --needed --noconfirm xdg-desktop-portal-hyprland

## xdg-desktop-portal-hyprland does not include a file picker.
# Recommendation: Install xdg-desktop-portal-gtk alongside it so that apps (like your browser) can open file selection windows.
sudo pacman -S --needed --noconfirm xdg-desktop-portal-gtk

## Command line tools that assist applications with a variety of desktop integration tasks
sudo pacman -S --needed --noconfirm xdg-utils

## Wayland version of xclip for copy and paste
sudo pacman -S --needed --noconfirm wl-clipboard

## Theme and Icon Manager
sudo pacman -S --needed --noconfirm nwg-look

## Applicaiton Dark theme
sudo pacman -S --needed --noconfirm adw-gtk-theme

## imagemagic (for pywal and works well with kitty)
sudo pacman -S --needed --noconfirm imagemagick

## install firefox
sudo pacman -S --needed --noconfirm firefox

exit 0
