#!/bin/bash

# prevent double inclusion
if [[ -n "${INCLUDE_FILE_INCLUDED:-}" ]]; then
    return 0
fi
INCLUDE_FILE_INCLUDED=1
# prevent double inclusion

DOTFILES_DIR=~/.dotfiles
SCRIPTS_DIR=$DOTFILES_DIR/scripts

source "${SCRIPTS_DIR}/defines/defines.sh"
source "${SCRIPTS_DIR}/installs/installs.sh"
source "${SCRIPTS_DIR}/setup/setup.sh"
source "${SCRIPTS_DIR}/utils/utils.sh"
source "${SCRIPTS_DIR}/stow/stow.sh"