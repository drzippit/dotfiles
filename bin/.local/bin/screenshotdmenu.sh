#!/usr/bin/env bash

# Hyprland screenshot script using grim, slurp, and satty
# Menu via walker -d

# Define options
options=(
    "Screen"
    "Region or Window"
    "Active Window"
)

# Show menu with Walker
choice=$(printf "%s\n" "${options[@]}" | walker -d -p "What to screenshot")

# Temporary file
tmpfile="$HOME/Pictures/Screenshots/$(date +'%Y-%m-%d_%H-%M-%S').png"

# Handle selection
case "$choice" in
  *Screen*)
    grimblast save screen "$tmpfile"
    ;;
  *Region*)
    grimblast save area "$tmpfile"
    ;;
  *Active*)
    grimblast save active "$tmpfile"
    ;;
  *)
    echo "No valid choice."
    exit 1
    ;;
esac

# Open screenshot in Satty for annotation
satty --filename "$tmpfile" --copy-command "wl-copy < {}"

# Clean up
rm -f "$tmpfile"

