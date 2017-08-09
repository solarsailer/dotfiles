function trello -d "Open the current repository's Trello board"
  # Find the `.trello` file near the closest `.git/` dir.
  set -l boards (git rev-parse --show-toplevel)/.trello

  # Exist?
  if test -e $boards
    cat $boards | string split \n | string match -r "^https?://.*" | xargs open
  else
    print_error 'no `.trello` file found'
  end
end

function print_error
  set_color --bold red
  echo $argv[1]
  set_color normal
end
