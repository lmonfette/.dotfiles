#!/bin/bash

# prevent double inclusion
if [[ -n "${ROOT_UNSTOW_FILE_INCLUDED:-}" ]]; then
    return 0
fi
ROOT_UNSTOW_FILE_INCLUDED=1
# prevent double inclusion

DOTFILES_DIR=~/.dotfiles
SCRIPTS_DIR=$DOTFILES_DIR/scripts

source "${SCRIPTS_DIR}/include.sh"

# remove the computer setup
unstow