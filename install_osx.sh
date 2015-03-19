#!/usr/bin/env bash

#
# Filesystem layout.
#

cd ~
mkdir lib/
mkdir dev/

#
# Configure defaults.
#

# Set the save dialog to be in extended mode by default.
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Set the iCloud-using apps to not save to iCloud by default.
# Courtesy of @room34, http://blog.room34.com/archives/5098
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Open a new document in TextEdit (& other iCloud-backed app) directly,
# instead of presenting the document picker.
defaults write -g NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool false
