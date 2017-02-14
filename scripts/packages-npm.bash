#!/usr/bin/env bash

# -------------------------------------------------------
# NPM (installed via Node).
# -------------------------------------------------------

echo "Node> Configuring NPM…"

# Check if `npm config get prefix` returns `/usr/local`.
# https://docs.npmjs.com/getting-started/fixing-npm-permissions
if [ "$(npm config get prefix)" == "/usr/local" ]; then
  sudo chown -R $(whoami) $(npm config get prefix)/{lib/node_modules,bin,share}
fi

echo "NPM> Done."
