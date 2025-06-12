function github_last -d "Get last commit's GitHub URL"
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

  # Get URL:
  set url (gh api repos/:owner/:repo/commits -q '.[0].html_url')
  echo $url
  echo $url | pbcopy
end
