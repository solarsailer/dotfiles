#!/usr/bin/env bash

# Remove everything.
dockutil --remove all

# Re-add things.
dockutil --add "/Applications/Google Chrome.app"
dockutil --add "/Applications/Slack.app"
dockutil --add "/Applications/Messages.app"
dockutil --add "/Applications/Fantastical 2.app"
dockutil --add "/Applications/Notes.app"
dockutil --add "/Applications/iTerm.app"

dockutil --add '~/Downloads' --view grid --display stack
