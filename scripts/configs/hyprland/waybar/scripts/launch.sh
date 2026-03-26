#!/usr/bin/env bash
#--------------------------------------------------------------------------------
# File:          launch.sh
# Created:       Tuesday, 24 March 2026 - 04:48 PM
# Author:        AhmdHosni (ahmdhosny@gmail.com)
# Link:
# Description:    This script is for reloading way bar whenever we press a button
#--------------------------------------------------------------------------------

killall -9 waybar
waybar &
