# Clone a git repo via `hub`.
function clone --description 'Clone a Git repository.'
  set action hub
  set path (command -v $action)
  if [ ! $path ]
    echo "clone: '$action' is not installed"
    exit 1
  end

  hub clone $argv
end
