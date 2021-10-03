# Made by Steve Losh:
# https://bitbucket.org/sjl/dotfiles/src/0f635ab417a76971eb7533be22d2cde41140667a/fish/functions/quietly.fish

function quietly -d "Run a command and hide the output"
  eval $argv &> /dev/null
end
