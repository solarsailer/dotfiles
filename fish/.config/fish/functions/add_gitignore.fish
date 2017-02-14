function add_gitignore
  set name '.gitignore'

  if test -e $name
    set_color red
    echo "error: a `$name` file already exists"
    set_color normal

    return 1
  end

  touch $name
  printf "\
# Always-ignore.
*.diff
*.err
*.orig
*.log
*.rej
*.swo
*.swp
*.vi
*~
*.sass-cache
npm-debug.log

# OS/Editor.
.DS_Store
.cache
.project
.settings
.tmproj
nbproject
Thumbs.db

# Packages.
node_modules/
bower_components/
  " >> $name
end
