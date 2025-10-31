function kill_interactive --description "Kill a process interactively"
  set signal (gum choose --limit 1 --header "Select a signal to send:" \
    "INT  (Please terminate, but gently)" \
    "QUIT (Please finish what you are doing)" \
    "TERM (Please kill yourself)" \
    "KILL (You do not exist anymore)" \
  )

  switch $signal
    case "INT*"
      set signal_name "INT"
      set signal_flag "-2"
    case "QUIT*"
      set signal_name "QUIT"
      set signal_flag "-3"
    case "TERM*"
      set signal_name "TERM"
      set signal_flag "-15"
    case "KILL*"
      set signal_name "KILL"
      set signal_flag "-9"
  end

  set process (ps -e | fzf)
  set pid (echo $process | awk '{print $1}')

  echo "Process to kill:"
  echo "$process"
  echo ""

  if gum confirm "Confirm kill?"
    kill $signal_flag $pid
    echo "Process $pid killed with $signal_name"
  else
    echo "Cancelled"
  end
end
