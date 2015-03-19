#!/usr/bin/env bash

# 
# Install command-line packages.
# 

brew install stow
brew install fish

# Image.
brew install imagemagick
brew install gifsicle

# Ruby.
brew install rbenv
brew install ruby-build

# Helpers.
brew install the_silver_searcher # ag
brew install httpie # http
brew install cloc

# MacVim.
# (Installation via brew and not cask because brew configure the mvim executable for shell use.)
brew install macvim

#
# Install binaries (full-fledged app).
#

# Install Caskroom.
brew install caskroom/cask/brew-cask

# Install apps.
brew cask install google-chrome
brew cask install dropbox
brew cask install 1password
brew cask install iterm2
brew cask install alfred
brew cask install droplr
brew cask install spotify
brew cask install bartender
brew cask install vlc

