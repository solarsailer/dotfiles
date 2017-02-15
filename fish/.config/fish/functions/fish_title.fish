function fish_title -d "Terminal window's title"
  # Replace `$HOME` with `~`.
  echo -n (pwd | sed "s|$HOME|~|")

  echo " — "(whoami)"@"(hostname -s)
end
