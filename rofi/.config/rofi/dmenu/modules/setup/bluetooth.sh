#!/usr/bin/env bash

while true; do
    choice=$(echo -e "󰂯  Enable Bluetooth\n󰂲  Disable Bluetooth\n󰂱  List Devices" | rofi -dmenu -p "Bluetooth" -show-icons)

    [ -z "$choice" ] && break

    case "$choice" in
        *Enable*)
            rfkill unblock bluetooth & disown ;;
        *Disable*)
            rfkill block bluetooth & disown ;;
        *List*)
            bluetoothctl devices | rofi -dmenu -p "Paired Devices" ;;
    esac
done

exit 0

