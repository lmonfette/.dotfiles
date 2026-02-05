#!/bin/bash

# prevent double inclusion
if [[ -n "${INSTALLS_WINDOWS_FILE_INCLUDED:-}" ]]; then
    return 0
fi
INSTALLS_WINDOWS_FILE_INCLUDED=1
# prevent double inclusion

windows_install_cmake() {
    echo "'windows_install_cmake' not implemented."
}

windows_install_wget() {
    echo "'windows_install_wget' not implemented."
}

windows_install_unzip() {
    echo "'windows_install_unzip' not implemented."
}
windows_install_fuse() {
    echo "'windows_install_fuse' not needed, skipping ..."
}

windows_install_openvpn_client() {
    echo "'windows_install_openvpn_client' not implemented."
}

windows_install_saleae_logic_analyzer_app() {
    echo "'windows_install_saleae_logic_analyzer_app' not implemented."
}

windows_install_obsidian() {
    echo "'windows_install_obsidian' not implemented."
}

windows_install_obsidian() {
    echo "'windows_install_obsidian' not implemented."
}

windows_install_treesitter_cli() {
    echo "'windows_install_git' not implemented."
}

windows_install_stow() {
    echo "'windows_install_stow' not implemented."
}

windows_install_treesitter_cli() {
    echo "'windows_install_treesitter_cli' not implemented."
}

windows_install_alacritty() {
    echo "'windows_install_alacritty' not implemented."
}

windows_install_nerd_fonts() {
    echo "'windows_install_nerd_fonts' not implemented."
}

windows_install_vim() {
    echo "'windows_install_vim' not implemented."
}

windows_install_ruby() {
    echo "'windows_install_ruby' not implemented."
}

windows_install_luarocks() {
    echo "'windows_install_luarocks' not implemented."
}

windows_install_ripgrep() {
    echo "'windows_install_ripgrep' not implemented."
}

windows_install_fd_find() {
    echo "'windows_install_fd_find' not implemented."
}

windows_install_python() {
    echo "'windows_install_python' not implemented."
}

windows_install_node() {
    echo "'windows_install_node' not implemented."
}

windows_install_golang() {
    echo "'windows_install_golang' not implemented."
}

windows_install_zsh() {
    echo "'windows_install_zsh' not implemented."
}

windows_install_jq() {
    echo "'windows_install_jq' not implemented."
}

windows_install_tmux() {
    echo "'windows_install_tmux' not implemented."
}
