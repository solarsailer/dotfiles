#!/usr/bin/env bash

# -------------------------------------------------------
# Node.
# -------------------------------------------------------

# Check if `npm config get prefix` returns `/usr/local`.
# https://docs.npmjs.com/getting-started/fixing-npm-permissions
sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}

npm install -g npm # The latest version of NPM is not included in the node package, so update it.
npm install -g tldr

# -------------------------------------------------------
# Ruby.
# -------------------------------------------------------

# TODO rbenv

# -------------------------------------------------------
# Go.
# -------------------------------------------------------

# REPL.
go get -u github.com/motemen/gore

# Autocomplete daemon.
go get -u github.com/nsf/gocode

# Colorizer.
go get -u github.com/k0kubun/pp

# Gox.
go get -u github.com/mitchellh/gox
