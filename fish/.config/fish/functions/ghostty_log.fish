# Output Ghostty logs.
function ghostty_log
  log stream --info --debug --predicate 'subsystem=="com.mitchellh.ghostty"'
end
