#!/bin/bash

# prevent double inclusion
if [[ -n "${INSTALLS_FILE_INCLUDED:-}" ]]; then
    return 0
fi
INSTALLS_FILE_INCLUDED=1
# prevent double inclusion

DOTFILES_DIR=~/.dotfiles
SCRIPTS_DIR=$DOTFILES_DIR/scripts

source "${SCRIPTS_DIR}/utils/utils.sh"
source "${SCRIPTS_DIR}/installs/installs_macos.sh"
source "${SCRIPTS_DIR}/installs/installs_ubuntu.sh"
source "${SCRIPTS_DIR}/installs/installs_windows.sh"

install_openvpn_client() {
    exec_os_specific macos_install_openvpn_client ubuntu_install_openvpn_client windows_install_openvpn_client
}

install_saleae_logic_analyzer_app() {
    exec_os_specific macos_install_saleae_logic_analyzer_app ubuntu_install_saleae_logic_analyzer_app windows_install_saleae_logic_analyzer_app
}

install_obsidian() {
    exec_os_specific macos_install_obsidian ubuntu_install_obsidian windows_install_obsidian
}

install_inkscape() {
    exec_os_specific macos_install_inkscape ubuntu_install_inkscape windows_install_inkscape
}

install_all() {
    install_openvpn_client
    install_saleae_logic_analyzer_app
    install_obsidian
    install_inkscape
}
