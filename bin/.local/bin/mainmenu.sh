#!/usr/bin/env bash

# Hyprland screenshot script using grim, slurp, and satty
# Menu via walker -d

# Define options
options=(
    "Fan Profiles"
    "Power Profiles"
    "Screenshots"
)

# Show menu with Walker
choice=$(printf "%s\n" "${options[@]}" | walker -d -p "What menu")

# Handle selection
case "$choice" in
  *Fan*)
    $HOME/.local/bin/fanprofiles.sh
    ;;
  *Power*)
    $HOME/.local/bin/powerprofiles.sh
    ;;
  *Screenshots*)
    $HOME/.local/bin/screenshotdmenu.sh
    ;;
  *)
    echo "No valid choice."
    exit 1
    ;;
esac

