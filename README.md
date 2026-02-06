# .dotfiles

Tools used:

## Alacritty

OpenGL powered cross-platform terminal emulator.

## Neovim

Code editor.

## Tiling window manager

### Sway (Linux)

Sway is a window manager that uses the Wayland backend.

### Aerospace (MacOS)

Aerospace is a window manager

## ZSH

Z shell is a unix shell, a command line interpreter.

## Setup

1. Create an SSH key and add it to your Github account

```bash
ssh-keygen -t ed25519 -C "<key_name>"
```

2. Clone this repository

```bash
git clone git@github.com:lmonfette/.dotfiles.git ~/.dotfiles
```

3. Run the install script

> [!WARNING]
> Many applications will be installed on your computer. These apps represent my personal setup. Be careful when running these scripts.

```bash
cd ~/.dotfiles
./scripts/install.sh
```

4. Run the setup script

```bash
cd ~/.dotfiles
./scripts/setup.sh
```

5. Use stow to propagate all the configs

```bash
cd ~/.dotfiles
./scripts/stow.sh
```
