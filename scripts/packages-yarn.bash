#!/usr/bin/env bash

# --------------------------------------------------------------
# Yarn (installed via Brew).
# --------------------------------------------------------------

echo "Yarn> Installing global packages…"

yarn global add create-react-app

yarn global add webpack
yarn global add webpack-dev-server
yarn global add brunch
yarn global add gulp
yarn global add parcel-bundler

yarn global add jest

# Tools.
yarn global add serve
yarn global add browser-sync
yarn global add prettier
yarn global add tldr
yarn global add fkill-cli
yarn global add pkg # node packager
yarn global add np # npm publish, simplified
yarn global add matcher-cli
yarn global add emma-cli
yarn global add speed-test

echo "Yarn> Done."
