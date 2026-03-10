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

    # setup tmux
    stow tmux

    # setup zsh
    stow zsh

    # setup oh-my-zsh
    stow oh-my-zsh

    # setup dracula theme
    stow dracula

    # setup niri and DMS
    stow niri
}

ubuntu_unstow() {
    # remove alacritty
    stow -D alacritty

    # remove neovim
    stow -D nvim

    # remove tmux
    stow -D tmux

    # remove zsh
    stow -D zsh

    # remove oh-my-zsh
    stow -D oh-my-zsh

    # remove dracula
    stow -D dracula

    # remove niri and DMS
    stow -D niri
}
