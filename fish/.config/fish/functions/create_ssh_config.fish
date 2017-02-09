# SSH config format:
#   Host $name
#   HostName $ip
#   User $user
#   IdentityFile $private_key_path # => Optional: will use the default one if not set.
#
# Then, use `ssh $name` to connect to the host directly.

set bold (set_color -o white)
set normal (set_color normal)

function create_ssh_config
  # SSH config file exists?
  if not test -e "$HOME/.ssh/config"
    __print_stop "The file `~/.ssh/config` does not exist."
    __separator

    if __show_bool_prompt 'Create `~/.ssh/config`?'
      touch $HOME/.ssh/config
    else
      echo 'Create it manually and execute this script again. ;)'
    end
  end

  __print_start

  # --------------------------------------------------------------
  # Get the values from the user.
  # --------------------------------------------------------------

  set config_name (__show_text_prompt "Configuration Name:" "(required, eg. 'awesome-site')" yellow)
  test -z $config_name; and __print_stop; and return 1

  set config_ip (__show_text_prompt "IP Address:" "(required, eg. '42.42.42.42')" yellow)
  test -z $config_ip; and __print_stop; and return 1 # Empty?

  # Is the IP correct?
  if test -z (string match -r '\d+\.\d+\.\d+\.\d+' "$config_ip")
    __print_stop "This value is invalid. Expected something like '42.42.42.42'. Stop."
    return 1
  end

  # Other fields:
  set config_user (__show_text_prompt "User Login:" "(optional, eg. 'root')" blue)
  set config_path (__show_text_prompt "Private Key Path:" "(optional, eg. '~/.ssh/my_private_key')" blue)
  set config_text (__show_text_prompt "Comment:" "(optional)" white)

  # --------------------------------------------------------------
  # Print the configuration and show warning.
  # --------------------------------------------------------------

  __separator
  __print_section 'New Configuration'
  __separator
  __print_config $config_name $config_ip $config_user $config_path $config_text
  __print_warning_if_not_file $config_path "Warning: the private key path `$config_path` might not exist."
  __separator

  # --------------------------------------------------------------
  # Append to file?
  # --------------------------------------------------------------

  if __show_bool_prompt 'Append to `~/.ssh/config?`'
    echo '' >> $HOME/.ssh/config
    __print_config $config_name $config_ip $config_user $config_path $config_text >> $HOME/.ssh/config
    echo '' >> $HOME/.ssh/config
    __print_end $config_name
  end
end

# --------------------------------------------------------------
# Printers.
# --------------------------------------------------------------

function __separator -d "Simple cosmetic newline."
  echo ''
end

function __print_stop -a text
  set_color red

  if test -z $text
    echo "This value cannot be empty. Stop."
  else
    echo $text
  end

  set_color normal
end

# Print header text.
function __print_start
  echo "This utility will walk you through creating a SSH configuration to append to your $bold`~/.ssh/config`$normal file. Obviously, it covers only the most sensible options available."
  __separator
  echo 'The configuration name and the IP address are required, otherwise the script will fail.'
  __separator
end

# Print footer text.
function __print_end -a config_name
  # TODO: in the last message, use the actual value of $configuration_name given by the user.
  __separator
  echo "Now, you can use $bold`ssh $config_name`$normal to connect automatically to the host, without having to set the user or the address. :)"
  __separator
  echo "If you need to edit the configuration later, just use $bold`$EDITOR ~/.ssh/config`$normal."
end

# Print a section separator.
function __print_section -a text
  echo '# -----------------------------'
  echo '#' $text
  echo '# -----------------------------'
end

function __print_config -a name ip user private_key_path comment
  if test -n "$comment"
    echo "# $comment"
  end

  # Join each word of the name in one string.
  set one_name (string split " " $name | string join "-")

  echo "Host $one_name"
  echo "HostName $ip"

  if test -n "$user"
    echo "User $user"
  else
    echo "User root"
  end

  if test -n "$private_key_path"
    echo "IdentityFile $private_key_path"
  end
end

function __print_warning_if_not_file -a path text
  # No path? We don't care.
  if test -z "$path"
    return
  end

  # Path but not a file? Show a warning.
  if not test -e $path
    __separator

    set_color magenta
    echo $text
    set_color normal
  end
end

# --------------------------------------------------------------
# Prompts.
# --------------------------------------------------------------

# Show a prompt which expects a yes/no answer.
function __show_bool_prompt -a text
  while read --prompt '__prompt $text "(yes/no)" red' --local input
    switch $input
      case Y y yes
        return 0
      case N n no
        return 1
    end
  end
end

# Show a prompt that accepts any value.
function __show_text_prompt -a text hint color
  read --prompt '__prompt $text $hint $color' --local input
  echo $input
end

# Print a prompt label.
function __prompt -a text hint color
  set_color $color
  echo -n $text
  set_color BBB
  echo -n " $hint "
  set_color normal
end
