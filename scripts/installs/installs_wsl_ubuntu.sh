#!/bin/bash

# prevent double inclusion
if [[ -n "${INSTALLS_WSL_UBUNTU_FILE_INCLUDED:-}" ]]; then
    return 0
fi
INSTALLS_WSL_UBUNTU_FILE_INCLUDED=1
# prevent double inclusion

DOTFILES_DIR=~/.dotfiles
SCRIPTS_DIR=$DOTFILES_DIR/scripts

source "${SCRIPTS_DIR}/defines/defines.sh"

wsl_ubuntu_install_curl() {
    sudo apt install -y curl
}

wsl_ubuntu_install_cmake() {
    sudo apt install -y cmake
}

wsl_ubuntu_install_wget() {
    sudo apt install -y wget
}

wsl_ubuntu_install_unzip() {
    eho
    sudo apt install -y unzip
}

wsl_ubuntu_install_fuse() {
    echo "'wsl_ubuntu_install_fuse' not needed, skipping ..."
    return 1
}

wsl_ubuntu_install_openvpn_client() {
    sudo apt install -y openvpn
}

wsl_ubuntu_install_saleae_logic_analyzer_app() {
    echo "Please download the Saleae Logic Analyzer app manually from: https://www.saleae.com/downloads"
    return 1
}

wsl_ubuntu_install_obsidian() {
    echo "'wsl_ubuntu_install_obsidian' not needed, skipping ..."
    return 1
}

wsl_ubuntu_install_inkscape() {
    echo "'wsl_ubuntu_install_inkscape' not needed, skipping ..."
    return 1
}

wsl_ubuntu_install_git() {
    sudo apt install -y git
}

wsl_ubuntu_install_stow() {
    sudo apt install -y stow
}

wsl_ubuntu_install_treesitter_cli() {
    sudo apt install -y tree-sitter-cli
}

wsl_ubuntu_install_alacritty() {
    pwsh.exe -Command "winget install -e --id Alacritty.Alacritty"
}

wsl_ubuntu_install_neovim() {
    # 1. Download neovim
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
    chmod u+x nvim-linux-x86_64.appimage
    # 2. Move the app image out the current directory
    sudo mkdir -p /opt/nvim
    sudo mv nvim-linux-x86_64.appimage /opt/nvim/nvim
}

wsl_ubuntu_install_nerd_fonts() {
    echo "Please install nerd fonts manually from: https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip"
    return 1
}

wsl_ubuntu_install_vim() {
    sudo apt install -y vim
}

wsl_ubuntu_install_ruby() {
    sudo apt install -y ruby
}

wsl_ubuntu_install_luarocks() {
    sudo apt install -y luarocks
}

wsl_ubuntu_install_ripgrep() {
    sudo apt install -y ripgrep
}

wsl_ubuntu_install_fd_find() {
    sudo apt install -y fd-find

    #create a symlink for fd to be used
    sudo ln -sf "$(which fdfind)" /usr/bin/fd
}

wsl_ubuntu_install_python() {
    sudo apt install -y python3 python3-pip python3-venv
}

wsl_ubuntu_install_npm() {
    sudo apt install -y npm
}

wsl_ubuntu_install_node() {
    # Download and install nvm:
    curl https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

    # in lieu of restarting the shell
    \. "$HOME/.nvm/nvm.sh"

    # Download and install Node.js:
    nvm install 24

    # Verify the Node.js version:
    node -v # Should print "v24.13.0".

    # Verify npm version:
    npm -v # Should print "11.6.2".
}

wsl_ubuntu_install_python_venv() {
    sudo apt install -y python3-venv
}

wsl_ubuntu_install_golang() {
    sudo add-apt-repository ppa:longsleep/golang-backports
    sudo apt install -y golang-go
}

wsl_ubuntu_install_zsh() {
    sudo apt install -y zsh
}

wsl_ubuntu_install_jq() {
    sudo apt install -y jq
}

wsl_ubuntu_install_tmux() {
    sudo apt install -y tmux
}

wsl_ubuntu_install_google_chrome() {
    pwsh.exe -Command "winget install --id Google.Chrome"
}

wsl_ubuntu_install_spotify() {
    # ID: 9NCBCSZSJRSB = Spotify
    pwsh.exe -Command "store install 9NCBCSZSJRSB"
}

wsl_ubuntu_install_vscode() {
    # ID: XP9KHM4BK9FZ7Q = Visual Studio Code
    pwsh.exe -Command "store install XP9KHM4BK9FZ7Q"
}

wsl_ubuntu_install_tree() {
    sudo apt install -y tree
}

wsl_ubuntu_install_sox() {
    sudo apt install -y sox
}

wsl_ubuntu_configure_package_manager() {
    # prepare apt package manager
    sudo apt update -y
    sudo apt upgrade -y

    # prepare dpkg
    sudo dpkg --configure -a
}
