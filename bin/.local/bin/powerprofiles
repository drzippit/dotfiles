#!/usr/bin/env bash

# Get current power profile
current_profile=$(powerprofilesctl get)

# Define options
options=(
  "Power Save"
  "Balanced"
  "Performance"
)

# Append * to the currently active profile
for i in "${!options[@]}"; do
  case "${options[$i]}" in
    "Power Save")
      [[ $current_profile == "power-saver" ]] && options[$i]="${options[$i]} *"
      ;;
    "Balanced")
      [[ $current_profile == "balanced" ]] && options[$i]="${options[$i]} *"
      ;;
    "Performance")
      [[ $current_profile == "performance" ]] && options[$i]="${options[$i]} *"
      ;;
  esac
done

# Show menu with Walker
choice=$(printf "%s\n" "${options[@]}" | walker -d -p "Choose a Power Profile")

# Handle selection
case "$choice" in
  *Save*)
    powerprofilesctl set power-saver
    ;;
  *Balanced*)
    powerprofilesctl set balanced
    ;;
  *Performance*)
    powerprofilesctl set performance
    ;;
  *)
    echo "No valid choice."
    ;;
esac

