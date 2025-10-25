#!/usr/bin/env bash
source "$HOME/.config/rofi/dmenu/common.sh"

while true; do
    choice=$(menu "Power Profiles" \
        "Power Save\n" \
        "Balanced\n" \
        "Performance\n")

    [ -z "$choice" ] && back

    case "$choice" in
        *Save*)
            run_bg powerprofilesctl set power-saver
            exit_all ;;
        *Balanced*)
            run_bg powerprofilesctl set balanced
            exit_all ;;
        *Performance*)
            run_bg powerprofilesctl set performance
            exit_all ;;
    esac
done


