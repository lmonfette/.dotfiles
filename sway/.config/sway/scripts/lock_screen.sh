#!/bin/sh

SWAY_CFG_DIR=~/.config/sway
SWAY_ASSETS_DIR=$SWAY_CFG_DIR/assets

# Credit to the following for coming up with this:
# https://code.krister.ee/lock-screen-in-sway/
# To Do: The fancier screen lock mentioned on that page might be cool to try.

# Times the screen off and puts it to background
swayidle \
    timeout 10 'swaymsg "output * dpms off"' \
    resume 'swaymsg "output * dpms on"' &

# Locks the screen immediately
swaylock --image "$SWAY_ASSETS_DIR/city_at_night.jpg"

# Kills last background task so idle timer doesn't keep running
kill %%
