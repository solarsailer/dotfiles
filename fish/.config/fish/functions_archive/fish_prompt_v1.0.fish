# Prompt :
# name@machine ~/path/to/dir [(git branch if in a repo)] $
function fish_prompt
  # Parse git branch
  function parse_git_branch
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
  end

  set_color -o green
  echo -n (whoami)"@"(hostname -s)' '

  set_color -o blue
  echo -n (pwd|sed "s=$HOME=~=")' '

  set_color -o yellow
  echo -n (parse_git_branch)' '

  set_color purple
  echo -n '$ '

  set_color normal
end
