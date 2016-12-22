#!/usr/bin/env bash

# --------------------------------------------------------------
# Installation.
# --------------------------------------------------------------

echo "Installing Homebrew Cask..."

brew tap caskroom/cask

# --------------------------------------------------------------
# Casks.
# --------------------------------------------------------------

echo "Cask> Installing plugins…"

brew cask install ttscoff-mmd-quicklook # Alternative: qlmarkdown
brew cask install qlcolorcode
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install wkhtmltopdf

echo "Cask> Install packages…"

brew cask install vagrant

echo "Cask> Install services…"

brew cask install markdown-service-tools

echo "Cask> Installing apps…"

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
