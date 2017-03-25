function sub -d "Download subtitles"
  set_color red

  if test (count $argv) -eq 0
    echo "No file provided"
    return
  end

  set -l file $argv[1]

  if not test -e $file
    echo "The file `$file` does not exist"
    return
  end

  set_color normal

  subliminal download -l en -l fr $file
end
