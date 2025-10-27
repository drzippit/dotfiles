#!/usr/bin/env bash

# Waypaper passes the wallpaper path as the first argument ($1)
WALLPAPER="$1"
DEST="$HOME/wallpapers/current.png"

# Make sure the destination folder exists
mkdir -p "$(dirname "$DEST")"

# Copy the current wallpaper to the destination
cp "$WALLPAPER" "$DEST"
