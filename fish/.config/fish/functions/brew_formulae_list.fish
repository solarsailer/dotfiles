function brew_formulae_list --description "List installed formuale"
  argparse 'user' 'deps' 'verbose' -- $argv

  if set --query _flag_user
    brew list --installed-on-request
  else if set --query _flag_deps
    brew list --installed-as-dependency
  else if set --query _flag_verbose
    brew list --installed-on-request --installed-as-dependency | awk '
      {gsub(/installed as dependency/, "\033[31m&\033[39m"); gsub(/installed on request/, "\033[32m&\033[39m"); print}
    '
  else
    brew list --installed-on-request --installed-as-dependency | awk -F ': ' '{
          if ($2 ~ /request/ && $2 ~ /dependency/) color="\033[34m";
          else if ($2 ~ /on request/) color="\033[32m";
          else color="\033[31m";

          print color $1 "\033[0m";
      }'
  end
end
