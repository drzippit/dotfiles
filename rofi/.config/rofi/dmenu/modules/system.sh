#!/usr/bin/env bash
source "$HOME/.config/rofi/dmenu/common.sh"

while true; do
    choice=$(menu "System" \
        "  Lock\n" \
        "󰜉  Reboot\n" \
        "  Shutdown\n")

    [ -z "$choice" ] && back

    case "$choice" in
        *Lock)
            run_bg hyprlock
            exit_all ;;
        *Reboot)
            run_bg systemctl reboot
            exit_all ;;
        *Shutdown)
            run_bg systemctl poweroff
            exit_all ;;
    esac
done

