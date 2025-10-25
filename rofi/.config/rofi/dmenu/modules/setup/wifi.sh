#!/usr/bin/env bash

while true; do
    choice=$(echo -e "󰤨  Enable Wi-Fi\n󰤭  Disable Wi-Fi\n󰤧  Scan Networks" | rofi -dmenu -p "Wi-Fi" -show-icons)

    [ -z "$choice" ] && break  # Escape = go back to Setup menu

    case "$choice" in
        *Enable*)
            nmcli radio wifi on & disown ;;
        *Disable*)
            nmcli radio wifi off & disown ;;
        *Scan*)
            nmcli device wifi rescan & disown ;;
    esac
done

exit 0

