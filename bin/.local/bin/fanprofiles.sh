#!/usr/bin/env bash

# Get current power profile
current_profile=$(powerprofilesctl get)

# Define options
options=(
  "Laziest"
  "Lazy"
  "Medium"
  "Agile"
  "Very Agile"
  "Deaf"
  "Aeolus"
)

# Show menu with Walker
choice=$(printf "%s\n" "${options[@]}" | walker -d -p "Choose a Fan Profile")

# Handle selection
case "$choice" in
  *Laziest*)
    fw-fanctrl use laziest
    ;;
  *Lazy*)
    fw-fanctrl use lazy
    ;;
  *Medium*)
    fw-fanctrl use medium
    ;;
  *Agile*)
    fw-fanctrl use agile
    ;;
  *Very*)
    fw-fanctrl use very-agile
    ;;
  *Deaf*)
    fw-fanctrl use deaf
    ;;
  *Aeolus*)
    fw-fanctrl use aeolus
    ;;
  *)
    echo "No valid choice."
    ;;
esac

