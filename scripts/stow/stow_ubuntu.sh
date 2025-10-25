#!/bin/bash

# prevent double inclusion
if [[ -n "${STOW_UBUNTU_FILE_INCLUDED:-}" ]]; then
    return 0
fi
STOW_UBUNTU_FILE_INCLUDED=1
# prevent double inclusion

DOTFILES_DIR=~/.dotfiles
SCRIPTS_DIR=$DOTFILES_DIR/scripts

ubuntu_stow() {
    # setup alacritty
    stow alacritty

    # setup neovim
    stow nvim

    # setup sway
    stow sway

    # setup tmux
    stow tmux

    # setup zsh
    stow zsh
}

ubuntu_unstow() {
    # remove alacritty
    stow -D alacritty

    # remove neovim
    stow -D nvim

    # remove sway
    stow -D sway

    # remove tmux
    stow -D tmux

    # remove zsh
    stow -D zsh
}