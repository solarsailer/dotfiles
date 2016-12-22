#!/usr/bin/env bash

# --------------------------------------------------------------
# Installation.
# --------------------------------------------------------------

echo "Tapping Cask…"

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

echo "Cask> Done."
