#!/usr/bin/env bash

MODULE_DIR="$HOME/.config/rofi/dmenu/modules/"

while true; do
    # Collect module files (strip .sh) and directories (as submodules)
    modules=$(
        find "$MODULE_DIR" -mindepth 1 -maxdepth 1 \( -type f -name "*.sh" -printf "%f\n" -o -type d -printf "%f\n" \) |
        sed 's/\.sh$//' |
        sort
    )

    chosen=$(echo "$modules" | rofi -dmenu -p "Modules" -show-icons)

    [ -z "$chosen" ] && exit

    if [ -f "$MODULE_DIR/$chosen.sh" ]; then
        "$MODULE_DIR/$chosen.sh"
        code=$?
    elif [ -d "$MODULE_DIR/$chosen" ]; then
        "$MODULE_DIR/$chosen/$chosen.sh"
        code=$?
    else
        continue
    fi

    [ "$code" -eq 10 ] && exit
done

