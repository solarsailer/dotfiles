function upgrade_pkg_latest_yarn
  # No yarn? stop!
  if not which yarn > /dev/null
    set_color red
    echo 'error: Yarn is unavailable'
    set_color normal

    return 1
  end

  yarn upgrade --latest
end
