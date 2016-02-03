function filetype -d "Get the type and encoding of a file"
  file -I $argv | awk -F ":" '{ system("basename \""$1"\" | xargs echo -n"); print $2 }'
end
