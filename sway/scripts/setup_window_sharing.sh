#!/bin/bash

echo "#### Wayland display ####"

env | grep '^WAYLAND_DISPLAY='

compositor_name="sway"

# Import the WAYLAND_DISPLAY env var from sway into the systemd user session.
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=$compositor_name

# Stop any services that are running, so that they receive the new env var when they restart.
systemctl --user stop pipewire wireplumber xdg-desktop-portal xdg-desktop-portal-wlr
systemctl --user start pipewire wireplumber xdg-desktop-portal xdg-desktop-portal-wlr

echo "#### Window manager ####"

< "/proc/$(pidof xdg-desktop-portal)/environ" tr '\0' '\n' | grep '^XDG_CURRENT_DESKTOP='
