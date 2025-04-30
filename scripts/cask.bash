#!/usr/bin/env bash

# --------------------------------------------------------------
# Casks.
# --------------------------------------------------------------

echo "Cask> Installing apps…"

# `--cask` is not needed anymore, but as this script is a reference, we'll keep it for clarity.

# Fonts.
brew install font-jetbrains-mono
brew install font-fira-code

# Essentials.
brew install --cask dropbox
brew install --cask 1password
brew install 1password-cli
brew install --cask alfred
brew install --cask spotify
brew install --cask google-chrome
brew install --cask firefox
brew install --cask cleanshot

# Utilities
brew install --cask hyperkey

# Code.
brew install --cask visual-studio-code
brew install --cask ghostty
brew install --cask gitup
brew install --cask dash
brew install --cask utm

# Design.
brew install --cask figma
brew install --cask sketch

# Others.
brew install --cask obsidian
brew install --cask soulver
brew install --cask iina
brew install --cask daisydisk
brew install --cask imageoptim
brew install --cask namechanger
brew install --cask carbon-copy-cloner
brew install --cask platypus
brew install --cask retrobatch

# Developers.
# brew install --cask vagrant
# brew install --cask docker
brew install --cask orbstack

brew install --cask chatgpt
brew install --cask adobe-creative-cloud

# Plugins.
brew install --cask quicklook-json

echo "Cask> Done."

# --------------------------------------------------------------
# Optional.
# --------------------------------------------------------------

# brew install --cask hammerspoon
# brew install --cask swiftbar

# -------------------------------------------------------------
# Archive.
# -------------------------------------------------------------

# brew install --cask alt-tab
# brew install --cask virtualbox
# brew install --cask slack
# brew install --cask caprine
# brew install --cask skype
# brew install --cask discord
# brew install --cask fastlane
# brew install --cask dotnet-sdk
# brew install --cask taskpaper
# brew install --cask hazel
# brew install --cask bunch
# brew install --cask paparazzi
# brew install --cask kap
# brew install --cask hyperswitch
# brew install --cask phoenix
# brew install --cask choosy
# brew install --cask vanilla
# brew install --cask selfcontrol
# brew install --cask deckset
# brew install --cask bartender
# brew install --cask customshortcuts
# brew install --cask turbo-boost-switcher
# brew install --cask vlc
# brew install --cask numi
# brew install --cask platypus
# brew install --cask gifrocket
# brew install --cask origami-studio
# brew install --cask iterm2
# brew install --cask principle
# brew install --cask wkhtmltopdf
# brew install --cask quicklook-csv
# brew install --cask markdown-service-tools
# brew install --cask qlmarkdown             # Does not work anymore
# brew install --cask ttscoff-mmd-quicklook  # Does not work anymore
# brew install --cask qlcolorcode            # Does not work anymore
# brew install --cask qlstephen              # Does not work anymore
# brew install --cask colorpicker-developer  # Does not work anymore
