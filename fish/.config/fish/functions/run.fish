function run -d "Run package.json-defined scripts using Yarn or NPM"
  if not test -e package.json
    set_color red --bold
    echo 'No `package.json` file found.'
    return 1
  end

  if test -e yarn.lock
    yarn run $argv
  else
    npm run $argv
  end
end
