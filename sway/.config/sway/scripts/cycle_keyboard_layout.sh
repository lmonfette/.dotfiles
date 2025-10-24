#!/bin/bash

SWAY_CFG_DIR=~/.config/sway
SWAY_STATE_DIR=$SWAY_CFG_DIR/state

# parameter 1: keyboard layout
set_keyboard_layout() {
    KEYBOARD_LAYOUT=$1

    sway input type:keyboard xkb_layout $KEYBOARD_LAYOUT
}

get_next_keyboard_layout() { cat $SWAY_STATE_DIR/next_keyboard_layout.txt; }

# parameter 1: value to save
set_next_keyboard_layout() {
    KEYBOARD_LAYOUT_TO_SAVE=$1

    echo "$KEYBOARD_LAYOUT_TO_SAVE" > $SWAY_STATE_DIR/next_keyboard_layout.txt
}

cycle_keyboard_layout() {
    NEXT_KEYBOARD_LAYOUT=$(get_next_keyboard_layout)

    if [ "$NEXT_KEYBOARD_LAYOUT" = "us" ]; then
        set_keyboard_layout $NEXT_KEYBOARD_LAYOUT

        set_next_keyboard_layout "ca"
    elif [ "$NEXT_KEYBOARD_LAYOUT" = "ca" ]; then
        set_keyboard_layout $NEXT_KEYBOARD_LAYOUT

        set_next_keyboard_layout "us"
    fi
}

cycle_keyboard_layout
