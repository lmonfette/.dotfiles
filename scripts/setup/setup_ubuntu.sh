#!/bin/bash

# prevent double inclusion
if [[ -n "${SETUP_UBUNTU_FILE_INCLUDED:-}" ]]; then
    return 0
fi
SETUP_UBUNTU_FILE_INCLUDED=1
# prevent double inclusion

ubuntu_setup() {
    # request sudo privileges
    sudo -v

    # prompt to install the tmux plugins
    echo "Run <prefix+shift+i> and <prefix+shift+u> now to install the tmux plugins."
    read input

    # make neovim the git commit ediot by default
    git config --global core.editor "nvim"

    # install required
    sudo luarocks --lua-version=5.1 install dkjson

    # create the SSH folder
    SSH_FOLDER_PATH="~/.ssh/"
    mkdir -p "$SSH_FOLDER_PATH"
    chmod 700 "$SSH_FOLDER_PATH"

    # start the ssh-agent
    eval $(ssh-agent -s)

    # install Niri window manager
    sudo add-apt-repository ppa:avengemedia/danklinux
    sudo apt update
    sudo apt install niri

    # install Dank Material Shell and all other dependencies
    curl -fsSL https://install.danklinux.com | sh
}
