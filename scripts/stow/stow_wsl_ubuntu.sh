#!/bin/bash

# prevent double inclusion
if [[ -n "${STOW_WSL_UBUNTU_FILE_INCLUDED:-}" ]]; then
    return 0
fi
STOW_WSL_UBUNTU_FILE_INCLUDED=1
# prevent double inclusion

DOTFILES_DIR=~/.dotfiles
SCRIPTS_DIR=$DOTFILES_DIR/scripts

wsl_ubuntu_stow() {
    username=$(get_windows_username)

    # setup alacritty
    sudo mkdir -p /mnt/c/Users/$username/AppData/Roaming/alacritty
    sudo cp alacritty/.config/alacritty/windows_alacritty.toml /mnt/c/Users/$username/AppData/Roaming/alacritty/alacritty.toml

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

    # setup GlazeWM
    mv /mnt/c/Users/$username/.glzr/glazewm/config.yaml /mnt/c/Users/$username/.glzr/glazewm/default_config.yaml
    cp glaze/config.yaml /mnt/c/Users/$username/.glzr/glazewm
}

wsl_ubuntu_unstow() {
    # remove alacritty
    username=$(get_windows_username)
    rm -r /mnt/c/Users/$username/AppData/Roaming/alacritty

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

    # remove GlazeWM
    rm /mnt/c/Users/$username/.glzr/glazewm/config.yaml
    mv /mnt/c/Users/$username/.glzr/glazewm/default_config.yaml /mnt/c/Users/$username/.glzr/glazewm/config.yaml
}
