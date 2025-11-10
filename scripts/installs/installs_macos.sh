#!/bin/bash

# prevent double inclusion
if [[ -n "${INSTALLS_MACOS_FILE_INCLUDED:-}" ]]; then
    return 0
fi
INSTALLS_MACOS_FILE_INCLUDED=1
# prevent double inclusion

macos_install_openvpn_client() {
    echo "'macos_install_openvpn_client' not implemented."
}

macos_install_saleae_logic_analyzer_app() {
    echo "'macos_install_saleae_logic_analyzer_app' not implemented."
}

macos_install_obsidian() {
    echo "'macos_install_obsidian' not implemented."
}

macos_install_inkscape() {
    echo "'macos_install_inkscape' not implemented."
}

macos_install_treesitter_cli() {
    brew install tree-sitter-cli
}

macos_install_git() {
    brew install git
}
