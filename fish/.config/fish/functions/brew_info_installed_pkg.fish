function brew_info_installed_pkg --description "Show info about an already installed package"
  argparse 'cask' 'no-cask' -- $argv

  if      set --query _flag_no_cask
    brew list --formula | gum filter | xargs brew info
  else if set --query _flag_cask
    brew list --cask    | gum filter | xargs brew info
  else
    brew list           | gum filter | xargs brew info
  end
end
