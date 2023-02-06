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

# OS/Editor.
.DS_Store
.cache
.project
.settings
.tmproj
.env*
*.sass-cache
nbproject
Thumbs.db

# Packages.
npm-debug.log*
yarn-debug.log*
yarn-error.log*
node_modules/
bower_components/
.next/
next-env.d.ts
  " >> $name
end
