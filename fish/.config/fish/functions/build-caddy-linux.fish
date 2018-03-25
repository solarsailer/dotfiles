# Caddy is a cool replacement for nginx (easier to configure, at least),
# but the license is not great for most projects.
#
# With this script, we get the source and build the latest release.
# Building from source is not subjected to the restricted EULA.
function build-caddy-linux -d "Build Caddy from source for Linux"
  # --------------------------------------------------------------
  # Preconditions.
  # --------------------------------------------------------------

  set -l path (command -v "go")
  if [ ! $path ]
    echo "error: 'go' is not installed"
    return 1
  end

  if not test -e $GOPATH
    echo "error: no 'GOPATH' env variable found"
    return 1
  end

  # --------------------------------------------------------------
  # Constants.
  # --------------------------------------------------------------

  set -l CADDY_REPO    "https://api.github.com/repos/mholt/caddy/releases/latest"
  set -l CADDY_GO_PATH "$GOPATH/src/github.com/mholt/caddy"

  # --------------------------------------------------------------
  # Build.
  # --------------------------------------------------------------

  # Get latest release tag.
  echo "Looking for latest Caddy release…"
  set -l CADDY_LATEST_RELEASE (curl --silent $CADDY_REPO | jq .tag_name -r)

  echo "Found $CADDY_LATEST_RELEASE!"
  echo ""

  # If the caddy package does not exist yet, it's safe to get it now.
  if not test -e $CADDY_GO_PATH
    echo "Installing Caddy…"
    go get -u github.com/mholt/caddy
  end

  pushd $CADDY_GO_PATH

  # Make sure we are on the master before doing a new go get.
  git co master -q

  # Update packages.
  echo "Updating Caddy…"
  go get -u github.com/mholt/caddy
  go get -u github.com/caddyserver/builds

  # Go to the latest release.
  git co $CADDY_LATEST_RELEASE -q

  # The build script is in the `caddy/` folder.
  cd $CADDY_GO_PATH/caddy

  # Build for Linux 64.
  echo "Building binary…"
  go run build.go -goos=linux -goarch=amd64

  # Back to latest commit.
  git co master -q

  popd

  # Move binary to current folder.
  mv $CADDY_GO_PATH/caddy/caddy .

  echo "Done."
end
