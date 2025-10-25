#!/bin/bash

# prevent double inclusion
if [[ -n "${ROOT_STOW_FILE_INCLUDED:-}" ]]; then
    return 0
fi
ROOT_STOW_FILE_INCLUDED=1
# prevent double inclusion

DOTFILES_DIR=~/.dotfiles
SCRIPTS_DIR=$DOTFILES_DIR/scripts

source "${SCRIPTS_DIR}/include.sh"

# stow the computer setup
_stow
