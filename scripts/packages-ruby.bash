#!/usr/bin/env bash

# Get the list: `rbenv install --list`
RUBY_VERSION=2.4.2

# -------------------------------------------------------
# rbenv.
# -------------------------------------------------------

RESULT=$(rbenv versions | awk "/$RUBY_VERSION/ {print \"true\"}")

# Install if not present.
if [ "$RESULT" != "true" ]; then
  echo "Ruby> Installing…"
  rbenv install $RUBY_VERSION
  echo "Ruby> Done."
else
  echo "Ruby> $RUBY_VERSION already installed."
fi

echo "Ruby> Setting as global…"

rbenv global $RUBY_VERSION
rbenv rehash

echo "Ruby> Done."

# -------------------------------------------------------
# Gems.
# -------------------------------------------------------

echo "Ruby> Installing gems…"

gem install bundler

echo "Ruby> Done."
