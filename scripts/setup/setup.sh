#!/bin/bash

# prevent double inclusion
if [[ -n "${SETUP_FILE_INCLUDED:-}" ]]; then
    return 0
fi
SETUP_FILE_INCLUDED=1
# prevent double inclusion

DOTFILES_DIR=~/.dotfiles
SCRIPTS_DIR=$DOTFILES_DIR/scripts

source "${SCRIPTS_DIR}/utils/utils.sh"
source "${SCRIPTS_DIR}/setup/setup_macos.sh"
source "${SCRIPTS_DIR}/setup/setup_ubuntu.sh"
source "${SCRIPTS_DIR}/setup/setup_windows.sh"

setup() {
    # submodules
    git submodule update --init --recursive

    exec_os_specific macos_setup ubuntu_setup windows_setup
}
