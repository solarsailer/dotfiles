#!/usr/bin/env bash

#
# Filesystem layout.
#

cd ~
mkdir lib/
mkdir dev/

# -------------------------------------------------------
# Globals.
# -------------------------------------------------------

# Set the Save & Print dialogs to be in extended mode by default.
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint    -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2   -bool true

# Set the iCloud-using apps to not save to iCloud by default.
# Courtesy of @room34, http://blog.room34.com/archives/5098
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud  -bool false

# Open a new document in TextEdit (& other iCloud-backed app) directly,
# instead of presenting the document picker.
defaults write -g NSShowAppCentricOpenPanelInsteadOfUntitledFile -bool false

# Quit the Printer app when the print jobs are done.
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# -------------------------------------------------------
# Keyboard.
# -------------------------------------------------------

# Full Keyboard Access: change the tab behavior to work on every field.
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Deactivate smart quotes and dash.
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled  -bool false

# -------------------------------------------------------
# Finder.
# -------------------------------------------------------

# Show all extensions by default.
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Set the default view mode of the Finder to Column.
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Search in the current folder instead of a global search.
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Disable the warning after changing an extension.
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Change default location.
# New window target:
# Computer     : `PfCm`
# Volume       : `PfVo`
# $HOME        : `PfHm`
# Desktop      : `PfDe`
# Documents    : `PfDo`
# All My Files : `PfAF`
# Other…       : `PfLo`
defaults write com.apple.finder NewWindowTarget     -string "PfHm"
# defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

# Hide everything on the Desktop.
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop         -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop     -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop     -bool false

# -------------------------------------------------------
# Dock.
# -------------------------------------------------------

# Auto-hide.
defaults write com.apple.dock autohide -bool true

# Set to left.
defaults write com.apple.dock orientation -string left

# Set magnification.
defaults write com.apple.dock magnification -bool true

# Set icons size.
defaults write com.apple.dock tilesize  -int 56
defaults write com.apple.dock largesize -int 72

# Hide dot indicators.
defaults write com.apple.dock "show-process-indicators" -bool false

# -------------------------------------------------------
# Dashboard.
# -------------------------------------------------------

# Deactivate dashboard.
defaults write com.apple.dashboard "dashboard-enabled-state" -int 1

# -------------------------------------------------------
# Messages.
# -------------------------------------------------------

# Do not convert text-emojis to real images.
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "automaticEmojiSubstitutionEnablediMessage" -bool false

# -------------------------------------------------------
# TextEdit.
# -------------------------------------------------------

# Set to Plain Text by default.
defaults write com.apple.TextEdit RichText -int 0

# Set font to Menlo-14.
defaults write com.apple.TextEdit NSFixedPitchFont     -string "Menlo-Regular"
defaults write com.apple.TextEdit NSFixedPitchFontSize -int 14

defaults write com.apple.TextEdit NSFont     -string Helvetica
defaults write com.apple.TextEdit NSFontSize -int 14