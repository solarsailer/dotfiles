function brew_search_info
  if test (count $argv) -ne 1
    echo "Usage: brew_search_info <search_term>"
    return 1
  end

  set search_term $argv[1]
  brew search $search_term | gum filter | xargs brew info
end
