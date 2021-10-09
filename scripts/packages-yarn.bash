#!/usr/bin/env bash

# --------------------------------------------------------------
# Yarn.
# --------------------------------------------------------------

echo "Yarn> Installing global packages…"

yarn global add prettier
yarn global add serve

echo "Yarn> Done."

# -------------------------------------------------------------
# Archive.
# -------------------------------------------------------------

# Dev.
# yarn global add webpack
# yarn global add webpack-dev-server
# yarn global add brunch
# yarn global add gulp
# yarn global add parcel-bundler

# Tools.
# yarn global add jest
# yarn global add browser-sync
# yarn global add fkill-cli
# yarn global add speed-test
# yarn global add tagui     # visual automation
# yarn global add np        # npm publish, simplified
# yarn global add pkg       # node packager
# yarn global add @zeit/ncc # node compiler
