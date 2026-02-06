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

install_curl() {
    echo "##### Installing curl ######"
    captured_run exec_os_specific macos_install_curl ubuntu_install_curl windows_install_curl
}

install_cmake() {
    echo "##### Installing CMake #####"
    captured_run exec_os_specific macos_install_cmake ubuntu_install_cmake windows_install_cmake
}

install_wget() {
    echo "##### Installing wget ######"
    captured_run exec_os_specific macos_install_wget ubuntu_install_wget windows_install_wget
}

install_unzip() {
    echo "##### Installing unzip #####"
    captured_run exec_os_specific macos_install_unzip ubuntu_install_unzip windows_install_unzip
}

install_fuse() {
    echo "##### Installing FUSE ######"
    set_stdin "\r\n"
    captured_run exec_os_specific macos_install_fuse ubuntu_install_fuse windows_install_fuse
}

install_openvpn_client() {
    echo "##### Installing OpenVPN Client #####"
    captured_run exec_os_specific macos_install_openvpn_client ubuntu_install_openvpn_client windows_install_openvpn_client
}

install_saleae_logic_analyzer_app() {
    echo "##### Installing Saleae Logic Analyzer #####"
    captured_run exec_os_specific macos_install_saleae_logic_analyzer_app ubuntu_install_saleae_logic_analyzer_app windows_install_saleae_logic_analyzer_app
}

install_obsidian() {
    echo "##### Installing Obsidian #####"
    captured_run exec_os_specific macos_install_obsidian ubuntu_install_obsidian windows_install_obsidian
}

install_inkscape() {
    echo "##### Installing InkScape #####"
    captured_run exec_os_specific macos_install_inkscape ubuntu_install_inkscape windows_install_inkscape
}

install_git() {
    echo "##### Installing git #####"
    captured_run exec_os_specific macos_install_git ubuntu_install_git windows_install_git
}

install_stow() {
    echo "##### Installing stow #####"
    captured_run exec_os_specific macos_install_stow ubuntu_install_stow windows_install_stow
}

install_treesitter_cli() {
    echo "##### Installing treesitter-cli #####"
    captured_run exec_os_specific macos_install_treesitter_cli ubuntu_install_treesitter_cli windows_install_treesitter_cli
}

install_alacritty() {
    echo "##### Installing alacritty #####"
    captured_run exec_os_specific macos_install_alacritty ubuntu_install_alacritty windows_install_alacritty
}

install_neovim() {
    echo "##### Installing neovim #####"
    captured_run exec_os_specific macos_install_neovim ubuntu_install_neovim windows_install_neovim
}

install_nerd_fonts() {
    echo "##### Installing Nerd Fonts #####"
    set_stdin "A\r\n" # enter
    captured_run exec_os_specific macos_install_nerd_fonts ubuntu_install_nerd_fonts windows_install_nerd_fonts
}

install_vim() {
    echo "##### Installing vim #####"
    captured_run exec_os_specific macos_install_vim ubuntu_install_vim windows_install_vim
}

install_ruby() {
    echo "##### Installing Ruby #####"
    captured_run exec_os_specific macos_install_ruby ubuntu_install_ruby windows_install_ruby
}

install_luarocks() {
    echo "##### Installing LuaRocks #####"
    captured_run exec_os_specific macos_install_luarocks ubuntu_install_luarocks windows_install_luarocks
}

install_ripgrep() {
    echo "##### Installing ripgrep #####"
    captured_run exec_os_specific macos_install_ripgrep ubuntu_install_ripgrep windows_install_ripgrep
}

install_fd_find() {
    echo "##### Installing fd-find #####"
    captured_run exec_os_specific macos_install_fd_find ubuntu_install_fd_find windows_install_fd_find
}

install_python() {
    echo "##### Installing python #####"
    captured_run exec_os_specific macos_install_python ubuntu_install_python windows_install_python
}

install_node() {
    echo "##### Installing node #####"
    captured_run exec_os_specific macos_install_node ubuntu_install_node windows_install_node
}

install_golang() {
    echo "##### Installing golang #####"
    set_stdin "\r\n" # enter
    captured_run exec_os_specific macos_install_golang ubuntu_install_golang windows_install_golang
}

install_zsh() {
    echo "##### Installing zsh #####"
    captured_run exec_os_specific macos_install_zsh ubuntu_install_zsh windows_install_zsh
}

install_jq() {
    echo "##### Installing jq #####"
    captured_run exec_os_specific macos_install_jq ubuntu_install_jq windows_install_jq
}

install_tmux() {
    echo "##### Installing tmux #####"
    captured_run exec_os_specific macos_install_tmux ubuntu_install_tmux windows_install_tmux
}

install_all() {
    install_curl
    install_cmake
    install_wget
    install_unzip
    install_fuse
    install_openvpn_client
    install_saleae_logic_analyzer_app
    install_obsidian
    install_inkscape
    install_git
    install_stow
    install_treesitter_cli
    install_alacritty
    install_nerd_fonts
    install_vim
    install_ruby
    install_luarocks
    install_ripgrep
    install_fd_find
    install_python
    install_node
    install_golang
    install_zsh
    install_jq
    install_tmux
}
