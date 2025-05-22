# Created by: https://github.com/alexwlchan/scripts/blob/main/fish_functions/tmpdir.fish
function tmpdir --description "Create and switch into a temporary directory"
  cd (mktemp -d)
end
