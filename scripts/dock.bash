#!/usr/bin/env bash

# --------------------------------------------------------------
# Dock.
# --------------------------------------------------------------

echo "Dock> Configuring…"

dockutil --remove all

# Re-add things.
dockutil --add "/Applications/Safari.app"
dockutil --add "/Applications/Google Chrome.app"
dockutil --add "/Applications/Spotify.app"
dockutil --add "/Applications/Fantastical 2.app"
dockutil --add "/Applications/Messages.app"
dockutil --add "/Applications/Things3.app"
dockutil --add "/Applications/iTerm.app"

dockutil --add '~/Downloads' --sort datemodified --view auto --display stack

echo "Dock> Done."
