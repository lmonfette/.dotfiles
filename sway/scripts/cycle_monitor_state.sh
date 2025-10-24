#!/bin/bash

SWAY_CFG_DIR=~/.config/sway
SWAY_STATE_DIR=$SWAY_CFG_DIR/state

INTEGRATED_MONITOR_ID="eDP-1"
SPARK_CENTER_MONITOR="DP-1"
HOME_CENTER_MONITOR="HDMI-A-1"

# parameter 1: monitor ID
# parameter 2: state
set_monitor_state() {
    MONITOR_ID=$1
    STATE=$2

    if [ "$STATE" = false ]; then
        swaymsg output "$MONITOR_ID" disable
        return;
    fi

    swaymsg output "$MONITOR_ID" enable
}

# get_next_state() { cat $SWAY_STATE_DIR/next_monitor_state.txt; }
get_next_state() {  cat ${SWAY_STATE_DIR}/next_monitor_state.txt; }

# parameter 1: value to save
set_next_state() {
    STATE_TO_SAVE=$1

    echo "$STATE_TO_SAVE" > ${SWAY_STATE_DIR}/next_monitor_state.txt
}

cycle_monitors() {
    NEXT_MONITOR_STATE=$(get_next_state)

    if [ "$NEXT_MONITOR_STATE" = "laptop_monitor" ]; then
        set_monitor_state $INTEGRATED_MONITOR_ID true
        set_monitor_state $SPARK_CENTER_MONITOR false
        set_monitor_state $HOME_CENTER_MONITOR false

        set_next_state "spark_monitor"
    elif [ "$NEXT_MONITOR_STATE" = "spark_monitor" ]; then
        set_monitor_state $INTEGRATED_MONITOR_ID false
        set_monitor_state $SPARK_CENTER_MONITOR true
        set_monitor_state $HOME_CENTER_MONITOR false

        set_next_state "home_monitor"
    elif [ "$NEXT_MONITOR_STATE" = "home_monitor" ]; then
        set_monitor_state $INTEGRATED_MONITOR_ID false
        set_monitor_state $SPARK_CENTER_MONITOR false
        set_monitor_state $HOME_CENTER_MONITOR true

        set_next_state "laptop_monitor"
    else # default
        set_monitor_state $INTEGRATED_MONITOR_ID true
        set_monitor_state $SPARK_CENTER_MONITOR false
        set_monitor_state $HOME_CENTER_MONITOR false

        set_next_state "spark_monitor"
    fi
}

cycle_monitors
