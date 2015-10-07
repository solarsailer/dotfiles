function save
  set snippets $HOME/.shellsnippets
  if not test -e $snippets
    echo "Cannot find the `.shellsnippets` file (contains the path of shell snippets)."
  else
    set path (cat $snippets)
    set value (echo $argv)

    # Append to file if $value != empty string.
    if not test $value = ''
      echo $value >> $path
    end
  end
end
