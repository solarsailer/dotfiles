function add_pkg
  # Create file.
  set name 'package.json'

  if test -e $name
    set_color red
    echo "error: a `$name` file already exists"
    set_color normal

    return 1
  end

  touch $name

  # Find repository URL if possible.
  set repo 'https://github.com/solarsailer/repo'

  if test -d '.git'
    set found_repo (gh browse --no-browser 2> /dev/null)

    if test $status -eq 0
      set repo $found_repo
    end
  end

  # Add content.
  echo '{'                                      >> $name
  echo '  "name": "",'                          >> $name
  echo '  "version": "0.1.0",'                  >> $name
  echo '  "description": "A description.",'     >> $name
  echo '  "license": "MIT",'                    >> $name
  echo "  \"repository\": \"$repo\","           >> $name
  echo '  "author": {'                          >> $name
  echo '    "name": "Matthieu Oger",'           >> $name
  echo '    "url": "https://matthieuoger.com/"' >> $name
  echo '  },'                                   >> $name
  echo '  "scripts": {'                         >> $name
  echo '    "start": "",'                       >> $name
  echo '    "test": ""'                         >> $name
  echo '  },'                                   >> $name
  echo '  "dependencies": {},'                  >> $name
  echo '  "devDependencies": {}'                >> $name
  echo '}'                                      >> $name
end
