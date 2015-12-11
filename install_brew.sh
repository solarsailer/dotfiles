#!/usr/bin/env bash

echo "Installing Homebrew..."

# Install homebrew if necessary.
if which brew 2>/dev/null 1>/dev/null; then
  echo "Homebrew already installed."
else
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

#
# Install command-line packages.
#

echo "Installing Homebrew packages..."

brew install stow
brew install fish

# Image.
brew install imagemagick
brew install gifsicle

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
brew install cloc
brew install trash
brew install multimarkdown
brew install wakeonlan
brew install hub
brew install ccat

# Databases.
brew install redis
brew install sqlite

# MacVim (installation via brew instead of cask because brew configure the mvim executable for shell use).
brew install macvim --with-lua --with-override-system-vim

#
# Install binaries (full-fledged app).
#

echo "Installing Homebrew casks..."

# Install Caskroom.
brew install caskroom/cask/brew-cask

# Install packages.
brew cask install node
brew cask install go

# Install apps.
# brew cask install google-chrome
# brew cask install dropbox
# brew cask install 1password
# brew cask install iterm2
# brew cask install slack
# brew cask install alfred
# brew cask install droplr
# brew cask install spotify
# brew cask install bartender
# brew cask install vlc
# brew cask install imageoptim
# brew cask install paparazzi!

echo "Homebrew done."
