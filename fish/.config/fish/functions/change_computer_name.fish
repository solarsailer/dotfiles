function change_computer_name -d "Change ComputerName, HostName, LocalHostName, NetBIOSName (as done via System Preferences >> Sharing)."
  if test (count $argv) -gt 0
    set name $argv[1]
    echo "Root access required."

    echo "Computer name: $name"
    sudo scutil --set ComputerName $name

    echo "HostName: $name"
    sudo scutil --set HostName $name

    echo "LocalHostName: $name"
    sudo scutil --set LocalHostName $name

    echo "NetBIOSName: $name"
    sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string $name
  else
    echo 'No computer name provided.'
  end
end
