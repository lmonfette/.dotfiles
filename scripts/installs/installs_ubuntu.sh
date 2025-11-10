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
    sudo apt install git
}

ubuntu_install_stow() {
    sudo apt install stow
}
