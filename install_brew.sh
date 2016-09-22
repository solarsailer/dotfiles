#!/usr/bin/env bash

echo "Installing Homebrew..."

# Install homebrew if necessary.
if which brew 2>/dev/null 1>/dev/null; then
  echo "Homebrew already installed."
else
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Installing Homebrew Cask..."

# Install Caskroom.
brew tap caskroom/cask

# -------------------------------------------------------
# Environments.
# -------------------------------------------------------

echo "Installing environments..."

brew cask install go

echo "Installing environments with Cask..."

brew cask install node

# -------------------------------------------------------
# Packages.
# -------------------------------------------------------

echo "Installing Homebrew packages..."

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

echo "Installing Homebrew Cask plugins..."

brew cask install qlmarkdown
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json

echo "Install Homebrew Cask packages..."

brew cask install vagrant

echo "Installing Homebrew Cask apps..."

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
# brew cask install virtualbox

echo "Homebrew done."
