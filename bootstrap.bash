#!/usr/bin/env bash

BASEDIR=$(dirname $0)
cd $BASEDIR

pushd scripts

./brew.bash
./cask.bash
./dock.bash
./dotfiles.bash
./macOS.bash

popd
