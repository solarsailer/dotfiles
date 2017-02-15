# Store the theme in universal variables,
# which means that it only needs to be run once.
function fish_theme_classic -d 'Change fish theme'

  # The default color.
  set --universal fish_color_normal normal

  # The color for commands.
  set --universal fish_color_command 005fd7 # Blueish.

  # The color for quoted blocks of text.
  set --universal fish_color_quote brown

  # The color for IO redirections.
  set --universal fish_color_redirection normal

  # The color for process separators like ';' and '&'.
  set --universal fish_color_end brmagenta

  # The color used to highlight potential errors.
  set --universal fish_color_error red --bold

  # The color for regular command parameters.
  set --universal fish_color_param 00afff # Blueish.

  # The color used for code comments.
  set --universal fish_color_comment red

  # The color used to highlight matching parenthesis.
  set --universal fish_color_match cyan

  # The color used to highlight history search matches.
  set --universal fish_color_search_match --background=purple

  # The color for parameter expansion operators like '*' and '~'.
  set --universal fish_color_operator cyan

  # The color used to highlight character escapes like '\n' and '\x70'.
  set --universal fish_color_escape cyan

  # The color used for the current working directory in the default prompt.
  set --universal fish_color_cwd green
  set --universal fish_color_cwd_root red

  # The color used for autosuggestions.
  set --universal fish_color_autosuggestion 555 # Gray.

  # The color used to print the current username in some of fish default prompts.
  set --universal fish_color_user brgreen

  # The color used to print the current host system in some of fish default prompts.
  set --universal fish_color_host normal

  # --------------------------------------------------------------
  # Not documented.
  # --------------------------------------------------------------

  set --universal fish_color_valid_path --underline
  set --universal fish_color_status red
  set --universal fish_color_history_current cyan
  set --universal fish_color_selection white --bold --background=brblack

  # --------------------------------------------------------------
  # Pager.
  # --------------------------------------------------------------

  # The color of the prefix string, i.e. the string that is to be completed.
  set --universal fish_pager_color_prefix cyan

  # The color of the completion itself.
  set --universal fish_pager_color_completion normal

  # The color of the completion description.
  set --universal fish_pager_color_description 555 # Gray.

  # The color of the progress bar at the bottom left corner.
  set --universal fish_pager_color_progress cyan

  # The background color of the every second completion.
  # set --universal fish_pager_color_secondary
end
