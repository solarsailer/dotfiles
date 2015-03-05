# This function requires the "wakeonlan" package.
# Install it with `brew install wakeonlan`.
#
# Then, run the function with the hostname you want to wake up:
# $ wake_and_vnc my_awesome_computer
function wake_and_vnc --description 'Wake a computer with a given hostname. Then, start a VNC session with it.'  
  if test -z $argv[1] 
    echo "No hostname provided. Abort."
  else
    arp $argv[1] | awk '{print $4}' | xargs wakeonlan

    if test $status -eq 0
      open vnc://$argv[1]
    else
      echo "Impossible to wake the computer. Retry later."
    end
  end
end
