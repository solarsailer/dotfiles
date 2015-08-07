function words
  if test (count $argv) -gt 0
    echo -n "Number of words: "
    # Only print the result of the last line (the sum).
    wc -w $argv | awk 'END{print $1}'
  else
    echo "Nothing to count."
  end
end
