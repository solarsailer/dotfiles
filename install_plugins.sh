#!/usr/bin/env sh

set -e

BASEDIR=$(dirname $0) && cd $BASEDIR

# -------------------------------------------------------
# Markdown spotlight importer.
# -------------------------------------------------------

# See: https://gist.github.com/solarsailer/0ebfd8366e3f3c8d9e82

# Create a copy of the system `RichText.mdimporter`.
cp -r /System/Library/Spotlight/RichText.mdimporter .

# Change it to only index markdown files.
patch -p2 RichText.mdimporter/Contents/Info.plist < @patches/Markdown.mdimporter.patch

# Move it into `/Library/Spotlight` as `Markdown.mdimporter`.
sudo mv RichText.mdimporter /Library/Spotlight/Markdown.mdimporter

# Re-index with the new importer.
mdimport -r /Library/Spotlight/Markdown.mdimporter
