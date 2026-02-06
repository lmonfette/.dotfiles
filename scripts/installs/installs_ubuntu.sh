#!/bin/bash

# prevent double inclusion
if [[ -n "${INSTALLS_UBUNTU_FILE_INCLUDED:-}" ]]; then
    return 0
fi
INSTALLS_UBUNTU_FILE_INCLUDED=1
# prevent double inclusion

DOTFILES_DIR=~/.dotfiles
SCRIPTS_DIR=$DOTFILES_DIR/scripts

source "${SCRIPTS_DIR}/defines/defines.sh"

ubuntu_install_curl() {
    sudo apt install -y curl
}

ubuntu_install_cmake() {
    sudo apt install -y cmake
}

ubuntu_install_wget() {
    sudo apt install -y wget
}

ubuntu_install_unzip() {
    sudo apt install -y unzip
}

ubuntu_install_fuse() {
    sudo add-apt-repository universe
    sudo apt install -y libfuse2t64
}

ubuntu_install_openvpn_client() {
    # install required tools for installation
    sudo apt install -y apt-transport-https curl

    # make sure the directory to store the apt repository exists
    mkdir -p /etc/apt/keyrings
    # download the openvpn apt repository
    sudo curl -sSfL https://packages.openvpn.net/packages-repo.gpg | sudo tee /etc/apt/keyrings/openvpn.asc

    # determine the distribution to use
    DISTRIBUTION=$(lsb_release -a | grep Codename | cut --field 2)

    echo "Installing OpenVPN for ubuntu $DISTRIBUTION distribution."

    sudo echo "deb [signed-by=/etc/apt/keyrings/openvpn.asc] https://packages.openvpn.net/openvpn3/debian $DISTRIBUTION main" | sudo tee -a /etc/apt/sources.list.d/openvpn3.list

    sudo apt update -y

    sudo apt install -y openvpn3
}

ubuntu_install_saleae_logic_analyzer_app() {
    # create the application folder if it does not exists
    mkdir -p $APPS_DIR

    # download the saleae logic analyzer app image for ubuntu
    curl -o $APPS_DIR/SaleaeLogicAnalyzerApp.AppImage -LO "https://logic2api.saleae.com/download?os=linux&arch=x64"

    # add execution rights
    chmod +x $APPS_DIR/SaleaeLogicAnalyzerApp.AppImage
}

ubuntu_install_obsidian() {
    # create the application folder if it does not exists
    mkdir -p $APPS_DIR

    # download the obsidian app image for ubuntu
    curl -o $APPS_DIR/Obsidian.AppImage -LO "https://github.com/obsidianmd/obsidian-releases/releases/download/v1.9.14/Obsidian-1.9.14.AppImage"

    # add execution rights
    chmod +x $APPS_DIR/Obsidian.AppImage
}

ubuntu_install_inkscape() {
    # create the application folder if it does not exists
    mkdir -p $APPS_DIR

    # download the saleae logic analyzer app image for ubuntu
    curl -o $APPS_DIR/InkScape-1.4.2.AppImage -LO "https://inkscape.org/release/inkscape-1.4.2/gnulinux/appimage/dl/"

    # add execution rights
    chmod +x $APPS_DIR/InkScape-1.4.2.AppImage
}

ubuntu_install_treesitter_cli() {
    npm install -g tree-sitter-cli
}

ubuntu_install_git() {
    sudo apt install -y git
}

ubuntu_install_stow() {
    sudo apt install -y stow
}

ubuntu_install_treesitter_cli() {
    sudo apt install -y tree-sitter-cli
}

ubuntu_install_alacritty() {
    sudo apt install -y cmake g++ pkg-config libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
    sudo apt install -y rustup
    rustup install stable
    cargo install alacritty
}

ubuntu_install_neovim() {
    # 1. Download neovim
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
    chmod u+x nvim-linux-x86_64.appimage
    # 2. Move the app image out the current directory
    mkdir -p /opt/nvim
    mv nvim-linux-x86_64.appimage /opt/nvim/nvim
}

ubuntu_install_nerd_fonts() {
    mkdir -p ~/.local/share/fonts
    wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/JetBrainsMono.zip
    cd ~/.local/share/fonts || return
    unzip JetBrainsMono.zip
    rm JetBrainsMono.zip
    fc-cache -fv
}

ubuntu_install_vim() {
    sudo apt install -y vim
}

ubuntu_install_ruby() {
    sudo apt install -y ruby
}

ubuntu_install_luarocks() {
    sudo apt install -y luarocks
}

ubuntu_install_ripgrep() {
    sudo apt install -y ripgrep
}

ubuntu_install_fd_find() {
    sudo apt install -y fd-find

    #create a symlink for fd to be used
    sudo ln -sf "$(which fdfind)" /usr/bin/fd
}

ubuntu_install_python() {
    sudo apt install python3 python3-pip python3-venv
}

ubuntu_install_npm() {
    sudo apt install -y npm
}

ubuntu_install_node() {
    # Download and install nvm:
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

    # in lieu of restarting the shell
    \. "$HOME/.nvm/nvm.sh"

    # Download and install Node.js:
    nvm install 24

    # Verify the Node.js version:
    node -v # Should print "v24.13.0".

    # Verify npm version:
    npm -v # Should print "11.6.2".
}

ubuntu_install_python_venv() {
    sudo apt install -y python3-venv
}

ubuntu_install_golang() {
    sudo add-apt-repository ppa:longsleep/golang-backports
    sudo apt install -y golang-go
}

ubuntu_install_zsh() {
    sudo apt install -y zsh
}

ubuntu_install_jq() {
    sudo apt install -y jq
}

ubuntu_install_tmux() {
    sudo apt install -y tmux
}
