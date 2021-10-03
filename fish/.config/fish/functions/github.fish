function github -d "Open the current repository's github page"
  # Git is unavailable? Stop!
  if not which git > /dev/null
    set_color red
    echo 'error: Git is unavailable'
    set_color normal

    return 1
  end

  # Not a repository? Stop!
  set -l is_git_repository (command git rev-parse --is-inside-work-tree 2> /dev/null)
  if test -z "$is_git_repository"
    set_color red
    echo 'error: not in a Git repository'
    set_color normal

    return 1
  end

  # Open the repo on GitHub
  hub browse
end
