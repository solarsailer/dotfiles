function fish_title -d "Terminal window's title"
  # Replace `$HOME` with `~`.
  echo (pwd | sed "s|$HOME|~|")
end
