function add_pkg
  set name 'package.json'

  if test -e $name
    set_color red
    echo "error: a `$name` file already exists"
    set_color normal

    return 1
  end

  touch $name

  echo '{'                                                       >> $name
  echo '  "name": "",'                                           >> $name
  echo '  "version": "0.0.0",'                                   >> $name
  echo '  "description": "A description.",'                      >> $name
  echo '  "license": "MIT",'                                     >> $name
  echo '  "repository": "https://github.com/solarsailer/repo/",' >> $name
  echo '  "author": {'                                           >> $name
  echo '    "name": "Matthieu Oger",'                            >> $name
  echo '    "url": "https://solarsailer.net/"'                   >> $name
  echo '  },'                                                    >> $name
  echo '  "scripts": {'                                          >> $name
  echo '    "start": "",'                                        >> $name
  echo '    "test": ""'                                          >> $name
  echo '  },'                                                    >> $name
  echo '  "dependencies": {},'                                   >> $name
  echo '  "devDependencies": {}'                                 >> $name
  echo '}'                                                       >> $name
end
