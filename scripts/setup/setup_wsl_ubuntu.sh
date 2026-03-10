#!/bin/bash

# prevent double inclusion
if [[ -n "${SETUP_WSL_UBUNTU_FILE_INCLUDED:-}" ]]; then
    return 0
fi
SETUP_WSL_UBUNTU_FILE_INCLUDED=1
# prevent double inclusion

wsl_ubuntu_setup() {
    # request sudo privileges
    sudo -v

    # prompt to install the tmux plugins
    echo "Run <prefix+shift+i> and <prefix+shift+u> now to install the tmux plugins."
    read input

    # make neovim the git commit ediot by default
    git config --global core.editor "nvim"

    # install required
    sudo luarocks --lua-version=5.1 install dkjson

    # start the ssh-agent
    eval $(ssh-agent -s)

    # install GlazeWM and Zebar (tiling window manager)
    pwsh.exe -Command "winget install glazewm"
    pwsh.exe -Command "winget install zebar"
}
