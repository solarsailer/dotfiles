#!/usr/bin/env bash

BASEDIR=$(dirname $0)
cd $BASEDIR

# THIS SCRIPT IS NOT FINISHED. DO NOT USE IT.

# --------------------------------------------------------------
# Bootstrap.
# --------------------------------------------------------------

echo "Bootstrap> Starting…"

pushd scripts

./folders.bash
./brew.bash
./cask.bash
./mas.bash
./dock.bash
./dotfiles.bash
./macOS.bash

./markdown-spotlight-importer.bash

# Packages.
./packages-code.bash
./packages-npm.bash
./packages-yarn.bash
./packages-ruby.bash

popd

echo "Bootstrap> Done."

echo ""
echo "You should restart your computer now!"
