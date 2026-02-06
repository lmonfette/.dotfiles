#!/bin/bash

# prevent double inclusion
if [[ -n "${INSTALLS_MACOS_FILE_INCLUDED:-}" ]]; then
    return 0
fi
INSTALLS_MACOS_FILE_INCLUDED=1
# prevent double inclusion

macos_install_curl() {
    sudo apt install -y curl
}

macos_install_cmake() {
    brew install cmake
}

macos_install_wget() {
    brew install wget
}

macos_install_unzip() {
    echo "'macos_install_unzip' already installed, skipping ..."
}

macos_install_unzip() {
    echo "'macos_install_fuse' not needed, skipping ..."
}

macos_install_fuse() {
    echo "'macos_install_fuse' not needed, skipping ..."
}

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

macos_install_stow() {
    brew install stow
}

macos_install_treesitter_cli() {
    brew install tree-sitter-cli
}

macos_install_alacritty() {
    brew install --cask alacritty
}

macos_install_neovim() {
    brew install neovim
}

macos_install_nerd_fonts() {
    brew install --cask font-hack-nerd-font
}

macos_install_vim() {
    brew install vim
}

macos_install_ruby() {
    brew install ruby
}

macos_install_luarocks() {
    brew install luarocks
}

macos_install_ripgrep() {
    brew install ripgrep
}

macos_install_fd_find() {
    brew install fd
}

macos_install_python() {
    echo "'macos_install_python' not implemented."
}

macos_install_node() {
    # Download and install nvm:
    curl -o https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

    # in lieu of restarting the shell
    \. "$HOME/.nvm/nvm.sh"

    # Download and install Node.js:
    nvm install 24

    # Verify the Node.js version:
    node -v # Should print "v24.13.0".

    # Verify npm version:
    npm -v # Should print "11.6.2".
}

macos_install_golang() {
    brew install go
}

macos_install_zsh() {
    brew install zsh
}

macos_install_jq() {
    brew install jq
}

macos_install_tmux() {
    brew install tmux
}

macos_install_google_chrome() {
    echo "Please install Google Chrome manually from the internet."
    return 1
}

macos_configure_package_manager() {
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew update
    brew upgrade
}
