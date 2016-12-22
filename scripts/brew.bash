#!/usr/bin/env bash

# --------------------------------------------------------------
# Installation.
# --------------------------------------------------------------

echo "Brew> Installing…"

if which brew 2>/dev/null 1>/dev/null; then
  echo "Homebrew already installed."
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
fi

# -------------------------------------------------------
# Brewing.
# -------------------------------------------------------

echo "Brew> Installing environments…"

brew install node
brew install go

echo "Brew> Installing packages…"

brew install stow
brew install fish

# Image.
brew install imagemagick
brew install gifsicle
brew install apngasm

# Toolchain.
brew install cmake

# Ruby.
brew install rbenv
brew install ruby-build

# VCS, diff, merge.
brew install tig
brew install icdiff # better difftool

# Helpers.
brew install the_silver_searcher # ag
brew install httpie # http
brew install jq # json processor
brew install fzf # fuzzy finder
brew install cloc
brew install trash
brew install ranger # file browser
brew install multimarkdown
brew install wakeonlan
brew install hub
brew install ccat
brew install cheat # cheatsheet manager
brew install youtube-dl

# Databases.
brew install redis
brew install sqlite

# MacVim (installation via brew instead of cask because brew configure the mvim executable for shell use).
brew install macvim --with-lua --with-override-system-vim

echo "Brew> Done."
