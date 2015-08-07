function search_files_with
  if test (count $argv) -gt 0
    # -l = only print filename
    # -i = ignore case
    ag -l -i $argv
  else
    echo "No pattern provided."
  end
end
