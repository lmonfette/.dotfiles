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
    return 1
    echo "'windows_install_wget' not implemented."
}

windows_install_unzip() {
    return 1
    echo "'windows_install_unzip' not implemented."
}

windows_install_fuse() {
    return 1
    echo "'windows_install_fuse' not needed, skipping ..."
}

windows_install_openvpn_client() {
    return 1
    echo "'windows_install_openvpn_client' not implemented."
}

windows_install_saleae_logic_analyzer_app() {
    return 1
    echo "'windows_install_saleae_logic_analyzer_app' not implemented."
}

windows_install_obsidian() {
    return 1
    echo "'windows_install_obsidian' not implemented."
}

windows_install_obsidian() {
    echo "'windows_install_obsidian' not implemented."
    return 1
}

windows_install_treesitter_cli() {
    echo "'windows_install_git' not implemented."
    return 1
}

windows_install_stow() {
    echo "'windows_install_stow' not implemented."
    return 1
}

windows_install_treesitter_cli() {
    echo "'windows_install_treesitter_cli' not implemented."
    return 1
}

windows_install_alacritty() {
    echo "'windows_install_alacritty' not implemented."
    return 1
}

windows_install_nerd_fonts() {
    echo "'windows_install_nerd_fonts' not implemented."
    return 1
}

windows_install_vim() {
    echo "'windows_install_vim' not implemented."
    return 1
}

windows_install_ruby() {
    echo "'windows_install_ruby' not implemented."
    return 1
}

windows_install_luarocks() {
    echo "'windows_install_luarocks' not implemented."
    return 1
}

windows_install_ripgrep() {
    echo "'windows_install_ripgrep' not implemented."
    return 1
}

windows_install_fd_find() {
    echo "'windows_install_fd_find' not implemented."
    return 1
}

windows_install_python() {
    echo "'windows_install_python' not implemented."
    return 1
}

windows_install_node() {
    echo "'windows_install_node' not implemented."
    return 1
}

windows_install_golang() {
    echo "'windows_install_golang' not implemented."
    return 1
}

windows_install_zsh() {
    echo "'windows_install_zsh' not implemented."
    return 1
}

windows_install_jq() {
    echo "'windows_install_jq' not implemented."
    return 1
}

windows_install_tmux() {
    echo "'windows_install_tmux' not implemented."
    return 1
}

windows_install_google_chrome() {
    echo "Please install Google Chrome manually from the internet."
    return 1
}

windows_install_spotify() {
    echo "'windows_install_spotify' not implemented."
    return 1
}

windows_configure_package_manager() {
    echo "'windows_configure_package_manager' not implemented."
    return 1
}
