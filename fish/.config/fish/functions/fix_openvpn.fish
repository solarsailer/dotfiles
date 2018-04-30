function fix_openvpn
  echo "Fix issues with OpenVPN (this will reboot the Wifi interface and flush the routing tables)?"
  echo ""

  if not ask
    echo "Abort…"
    return -1
  end

  # http://codefromabove.com/quickies/osx-cant-assign-requested-address-code49/
  sudo ifconfig en0 down
  sudo route flush
  sudo ifconfig en0 up
end
