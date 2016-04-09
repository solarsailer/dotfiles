function fd
  # TODO: pass $args to ag to search in another directly.
  # If nothing is passed, search in the current directory as it it now.

  # Find with ag and pipe into fzf to select a result.
  ag --hidden --ignore ".git" --ignore "node_modules" -g "" | \
    fzf --no-sort --tac > /tmp/fzf

  # Store path.
  set path (cat /tmp/fzf)

  # If directory, cd directly into it.
  # If file, get dirname and cd into it.
  if test -d $path
    cd $path
  else
    cd (dirname $path)
  end
end
