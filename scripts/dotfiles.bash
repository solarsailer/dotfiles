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

# Base links:
stow -R atom
stow -R bash
stow -R bin
stow -R browserrc
stow -R cheat
stow -R csscomb
stow -R hyper
stow -R fish
stow -R git
stow -R tig
stow -R vim
stow -R vscode

# Warning: `--no-folding` is mandatory for fisherman.
# fisherman **will not work** if the _whole folder_ is symlinked.
# We only need to link the `fishfile`. Everything else must be ignored.
stow -R fisherman --no-folding

echo "Stow> Necessary dotfiles linked. Add the others manually."

echo "Stow> Done."
