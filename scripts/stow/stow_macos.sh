#!/bin/bash

# prevent double inclusion
if [[ -n "${STOW_MACOS_FILE_INCLUDED:-}" ]]; then
    return 0
fi
STOW_MACOS_FILE_INCLUDED=1
# prevent double inclusion

macos_stow() {
    # setup alacritty
    stow alacritty

    # # setup neovim
    stow nvim

    # # setup tmux
    stow tmux

    # # setup zsh
    stow zsh
}

macos_unstow() {
    # remove alacritty
    stow -D alacritty

    # remove neovim
    stow -D nvim

    # remove tmux
    stow -D tmux

    # remove zsh
    stow -D zsh
}