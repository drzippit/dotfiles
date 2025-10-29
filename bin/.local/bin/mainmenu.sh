#!/usr/bin/env bash

# Define options
options=(
    "Fan Profiles"
    "Power Profiles"
    "Screenshots"
)

# Show menu with Walker
choice=$(printf "%s\n" "${options[@]}" | walker -d -p "Which menu?")

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

