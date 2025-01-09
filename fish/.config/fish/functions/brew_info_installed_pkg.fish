function brew_info_installed_pkg --description "Show info about an already installed package"
  brew list | gum filter | xargs brew info
end
