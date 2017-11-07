#!/usr/bin/env bash

BASEDIR=$(dirname $0)
cd $BASEDIR

# --------------------------------------------------------------
# Bootstrap.
# --------------------------------------------------------------

echo "Bootstrap> Starting…"

pushd scripts

./brew.bash
./cask.bash
./mas.bash
./dock.bash
./dotfiles.bash
./macOS.bash

./markdown-spotlight-importer.bash

popd

echo "Bootstrap> Done."

echo ""
echo "You should restart your computer now!"
