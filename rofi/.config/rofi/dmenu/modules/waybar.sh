#!/usr/bin/env bash
while true; do
    choice=$(echo -e "Restart\nHide" | rofi -dmenu -p "Waybar")

    # If Escape pressed (nothing selected), go back to previous menu
    [ -z "$choice" ] && break

    case "$choice" in
        Restart)
            hyprlock & disown
            exit 10 ;;
        Hide)
            killall waybar & disown
            exit 10 ;;
        *)
            break ;;
    esac
done

