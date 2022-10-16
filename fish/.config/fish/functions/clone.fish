# Clone a git repo via `hub`.
function clone --description 'Clone a Git repository.'
  set action gh
  set path (command -v $action)
  if [ ! $path ]
    set_color red
    echo "error: '$action' is not installed"
    set_color normal

    return 1
  end

  gh repo clone $argv
end
