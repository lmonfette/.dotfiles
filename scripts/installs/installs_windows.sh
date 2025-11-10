#!/bin/bash

# prevent double inclusion
if [[ -n "${INSTALLS_WINDOWS_FILE_INCLUDED:-}" ]]; then
    return 0
fi
INSTALLS_WINDOWS_FILE_INCLUDED=1
# prevent double inclusion

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
