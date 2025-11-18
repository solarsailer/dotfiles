#!/bin/bash

# @raycast.schemaVersion 1
# @raycast.title Helix
# @raycast.mode silent
# @raycast.packageName Custom
# @raycast.argument1 { "type": "text", "placeholder": "path", "optional": true }

# @raycast.icon images/helix.png
# @raycast.description Open Helix editor
# @raycast.author Matthieu Oger
# @raycast.authorURL matthieuoger.com

if [[ -n "$1" ]]; then
  target="$1"
  open -na Ghostty --args --quit-after-last-window-closed=true --shell-integration=detect -e /opt/homebrew/bin/hx "$target"
else
  open -na Ghostty --args --quit-after-last-window-closed=true --shell-integration=detect -e /opt/homebrew/bin/hx
fi

