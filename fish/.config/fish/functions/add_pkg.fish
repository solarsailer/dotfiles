function add_pkg
  set name 'package.json'

  if test -e $name
    set_color red
    echo "error: a `$name` file already exists"
    set_color normal

    return 1
  end

  touch $name

  echo '{'                                   >> $name
  echo '  "name": "",'                       >> $name
  echo '  "version": "0.0.0",'               >> $name
  echo '  "description": "",'                >> $name
  echo '  "license": "MIT",'                 >> $name
  echo '  "repository": "solarsailer/repo",' >> $name
  echo '  "author": {'                       >> $name
  echo '    "name": "Matthieu Oger",'        >> $name
  echo '    "url": "solarsailer.net"'        >> $name
  echo '  },'                                >> $name
  echo '  "keywords": [],'                   >> $name
  echo '  "scripts": {'                      >> $name
  echo '    "start": "",'                    >> $name
  echo '    "test": "standard | snazzy"'     >> $name
  echo '  },'                                >> $name
  echo '  "dependencies": {},'               >> $name
  echo '  "devDependencies": {}'             >> $name
  echo '}'                                   >> $name
end
