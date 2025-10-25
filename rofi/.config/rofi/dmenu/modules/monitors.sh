#!/usr/bin/env bash
source "$HOME/.config/rofi/dmenu/common.sh"

while true; do
    choice=$(menu "Monitors" \
        "Laptop Only\n" \
        "External Only\n" \
        "Both\n"\
        "Configure\n"\
    )

    [ -z "$choice" ] && back

    case "$choice" in
        *Laptop*)
            run_bg 
            exit_all ;;
        *External*)
            run_bg 
            exit_all ;;
        *Both*)
            run_bg 
            exit_all ;;
        *Configure*)
            run_bg kitty -e hyprdynamicmonitors tui
            exit_all ;;
    esac
done

