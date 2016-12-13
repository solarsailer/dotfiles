function serve --description 'Start a server that syncs automatically whenever a change is made.'
  browser-sync start --start . -files . --no-ui --no-open
end
