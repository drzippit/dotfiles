#!/usr/bin/env bash
source "$HOME/.config/rofi/dmenu/common.sh"

while true; do
    options=$(find "$MODULE_DIR/setup" -maxdepth 1 -type f -name "*.sh" -exec basename {} .sh \; | grep -v "^setup$" | sort)
    choice=$(echo "$options" | rofi -dmenu -p "Setup" -show-icons)

    [ -z "$choice" ] && back

    "$MODULE_DIR/setup/$choice.sh"
    code=$?

    [ "$code" -eq $EXIT_QUIT ] && exit_all
done

