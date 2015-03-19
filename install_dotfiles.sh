#!/usr/bin/env bash

# Note:
# `stow` target the parent dir by default.
# In my case, I usually put my dotfiles into a lib/ folder inside my $HOME.
# Moreover, I also have a `.stow-global-ignore` for stow.
# So, first thing first: restow stow.
# Restow means `DELETE` the stow package, then `STOW` (install) it.

echo "Configuring stow..."
stow --target=$HOME -R stow

# echo "Restowing all apps..."
# for dir in */
# do
#     echo Unstowing $dir
#     stow -D $dir
#     echo Restowing $dir
#     stow $dir
# done
