#!/usr/bin/env sh

set -e

BASEDIR=$(dirname $0) && cd $BASEDIR

# -------------------------------------------------------
# Markdown spotlight importer.
# -------------------------------------------------------

# Problem: by default, OS X doesn't index the content of markdown files.
# Which is kind of unfortunate, because that's really useful with Alfred.
# So, let's add an importer.
#
# A Markdown file is just a text file, after all. We just re-use the RichText
# importer and customize it for Markdown (ie., recognize Markdown format).
# Bonus: this method does not require to bypass SIP.

# Source: https://gist.github.com/breiter/1d3d7db645fd4a6e5c57

# Create a copy of the system `RichText.mdimporter`.
cp -r /System/Library/Spotlight/RichText.mdimporter .

# Change it to only index markdown files.
patch -p2 RichText.mdimporter/Contents/Info.plist < @patches/Markdown.mdimporter.patch

# Move it into `/Library/Spotlight` as `Markdown.mdimporter`.
sudo mv RichText.mdimporter /Library/Spotlight/Markdown.mdimporter

# Re-index with the new importer.
mdimport -r /Library/Spotlight/Markdown.mdimporter
