#!/usr/bin/env bash

# We are in the scripts/ folder, so move one level up.
BASEDIR=$(dirname $0)
cd $BASEDIR/..

# --------------------------------------------------------------
# Stow.
# --------------------------------------------------------------

echo "Stow> Linking dotfiles…"

# Note:
# `stow` targets the parent dir by default.
#
# In my case, I usually put my dotfiles into a subfolder (lib/, dev/, etc.)
# inside my $HOME.
#
# I also have a `.stow-global-ignore` for `stow`, which needs a re-link.
#
# So, first thing first: `restow stow`
#.
# Restow means `DELETE` the link, then `STOW` (lin) it again.
stow --target=$HOME -R stow

# Must:
stow -R fish
stow -R bash
stow -R bin
stow -R git
stow -R vscode
stow -R ghostty
stow -R starship
stow -R tig
stow -R vim
stow -R nvim
stow -R tldr
stow -R cheat
stow -R taskpaper

echo "Stow> Done."

# -------------------------------------------------------------
# Archive.
# -------------------------------------------------------------
