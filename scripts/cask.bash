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
brew cask install colorpicker-developer

echo "Cask> Installing packages…"

brew cask install vagrant
brew cask install dotnet-sdk
brew cask install docker

echo "Cask> Installing services…"

brew cask install markdown-service-tools

echo "Cask> Installing apps…"

# Essential.
brew cask install dropbox
brew cask install 1password
brew cask install alfred
brew cask install spotify

# Browsers.
brew cask install google-chrome
brew cask install firefox

# Code.
brew cask install visual-studio-code
brew cask install sublime-text
brew cask install dash
brew cask install gitup

# Terminal.
brew cask install iterm2
brew cask install hyper

# Design.
brew cask install sketch
brew cask install origami-studio
brew cask install principle

# Communication.
brew cask install slack
brew cask install caprine
brew cask install whatsapp
brew cask install skype
brew cask install discord

# Others.
brew cask install soulver
brew cask install taskpaper
brew cask install deckset
#brew cask install vlc
brew cask install iina
brew cask install bartender
brew cask install paparazzi
brew cask install hazel
brew cask install daisydisk
brew cask install imageoptim
brew cask install namechanger
brew cask install selfcontrol
brew cask install kap
brew cask install numi
brew cask install platypus # GUI for creating mac apps from scripts
brew cask install gifrocket
brew cask install hyperswitch
brew cask install phoenix
brew cask install turbo-boost-switcher
brew cask install customshortcuts

# Tools.
brew cask install fastlane

# Might fail with SIP.
brew cask install virtualbox

echo "Cask> Done."

# --------------------------------------------------------------
# Archive.
# --------------------------------------------------------------

# brew cask install choosy # I use my CustomBrowser now.
