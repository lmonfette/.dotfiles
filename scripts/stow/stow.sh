#!/bin/bash

# prevent double inclusion
if [[ -n "${STOW_FILE_INCLUDED:-}" ]]; then
    return 0
fi
STOW_FILE_INCLUDED=1
# prevent double inclusion

DOTFILES_DIR=~/.dotfiles
SCRIPTS_DIR=$DOTFILES_DIR/scripts

source "${SCRIPTS_DIR}/utils/utils.sh"
source "${SCRIPTS_DIR}/stow/stow_macos.sh"
source "${SCRIPTS_DIR}/stow/stow_ubuntu.sh"
source "${SCRIPTS_DIR}/stow/stow_windows.sh"

_stow() {
    exec_os_specific macos_stow ubuntu_stow windows_stow
}

unstow() {
    exec_os_specific macos_unstow ubuntu_unstow windows_unstow
}