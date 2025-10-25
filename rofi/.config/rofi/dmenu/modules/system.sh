#!/usr/bin/env bash
while true; do
    # choice=$(echo -e "  Lock\n󰍃  Logout\n󰜉  Reboot\n  Shutdown" | rofi -dmenu -p "System" -show-icons -theme-str 'listview { lines: 4; }')
    choice=$(echo -e "Lock\nReboot\nShutdown" | rofi -dmenu -p "System")

    # If Escape pressed (nothing selected), go back to previous menu
    [ -z "$choice" ] && break

    case "$choice" in
        Lock)
            hyprlock & disown
            exit 10 ;;
        Reboot)
            systemctl reboot & disown
            exit 10 ;;
        Shutdown)
            systemctl poweroff & disown
            exit 10;;
        *)
            break ;;
    esac
done

