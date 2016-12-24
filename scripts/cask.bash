#!/usr/bin/env bash

# --------------------------------------------------------------
# Installation.
# --------------------------------------------------------------

echo "Cask> Tapping…"

if [[ `brew tap` == *"caskroom/cask"* ]]; then
  echo "Cask already tapped."
else
  brew tap caskroom/cask
fi

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

echo "Cask> Installing packages…"

brew cask install vagrant

echo "Cask> Installing services…"

brew cask install markdown-service-tools

echo "Cask> Installing apps…"

brew cask install dropbox
brew cask install google-chrome
brew cask install firefox
brew cask install 1password
brew cask install atom
brew cask install iterm2
brew cask install sketch
brew cask install origami
brew cask install slack
brew cask install alfred
brew cask install spotify
brew cask install taskpaper
brew cask install dash
brew cask install vlc
brew cask install bartender
brew cask install paparazzi
# brew cask install moom
brew cask install hazel
brew cask install choosy
brew cask install daisydisk
brew cask install imageoptim
brew cask install namechanger
brew cask install virtualbox

echo "Cask> Done."
