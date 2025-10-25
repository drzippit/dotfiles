#!/usr/bin/env bash
#
# Common helper functions for Rofi module system
#

# Path to the base modules folder
MODULE_DIR="$HOME/.config/rofi/dmenu/modules"

# --- Exit Codes ---
# 0 = return to previous menu
# 10 = terminate all menus
EXIT_RETURN=0
EXIT_QUIT=10


# --- Helper: show a menu and return selection ---
# Usage: menu "Title" "item1" "item2" "item3"
menu() {
    local prompt="$1"
    shift
    echo -e "$@" | rofi -dmenu -p "$prompt" -show-icons
}


# --- Helper: run a command in background and detach ---
run_bg() {
    "$@" & disown
}


# --- Helper: quit all menus ---
exit_all() {
    exit $EXIT_QUIT
}


# --- Helper: return to previous menu ---
back() {
    exit $EXIT_RETURN
}

