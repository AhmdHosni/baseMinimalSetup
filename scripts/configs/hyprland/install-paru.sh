#!/usr/bin/env bash
#--------------------------------------------------------------------------------
# File:          install-paru.sh
# Created:       Sunday, 29 March 2026 - 02:16 AM
# Author:        AhmdHosni (ahmdhosny@gmail.com)
# Link:
# Description:
#--------------------------------------------------------------------------------

# Get the directory where this script is located
THIS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "$THIS_DIR/libs/lib_functions.sh"
start_tmux
cache_sudo

git_clone "https://aur.archlinux.org/paru.git" "~/Downloads/paru"

exit 0
