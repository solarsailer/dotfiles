function upgrade_pkg_latest_npm
  # No npx? stop!
  if not which npx > /dev/null
    set_color red
    echo 'error: NPM–NPX are unavailable'
    set_color normal

    return 1
  end

  # Use [npm-check-updates][https://www.npmjs.com/package/npm-check-updates] module.
  npx ncu -u
end
