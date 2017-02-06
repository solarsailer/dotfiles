#!/usr/bin/env bash

# --------------------------------------------------------------
# Atom.
# --------------------------------------------------------------

echo "Atom> Installing…"

# Enhance Atom.
apm install sort-lines
apm install toggle-quotes
apm install file-icons
apm install color-picker
apm install pigments
apm install merge-conflicts
apm install jumpy

# General purpose tool.
apm install atom-beautify
apm install linter

# Languages.
apm install language-fish-shell

# Webdev.
apm install emmet
apm install linter-js-standard
apm install standard-formatter

echo "Atom> Done."