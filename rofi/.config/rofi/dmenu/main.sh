#!/usr/bin/env bash
MODULE_DIR="$HOME/.config/rofi/dmenu/modules/"

while true; do
    modules=$(find "$MODULE_DIR" -type f -name "*.sh" -exec basename {} .sh \; | sort)
    chosen=$(echo "$modules" | rofi -dmenu -p "Modules")

    # If user cancels, exit the whole system
    [ -z "$chosen" ] && exit

    # Run chosen module
    "$MODULE_DIR/$chosen.sh"
    code=$?

    # If module exits with 10, stop everything
    [ "$code" -eq 10 ] && exit
done

