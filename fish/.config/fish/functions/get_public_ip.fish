function get_public_ip
  if test -z "$argv[1]"
    set fn (status function)
    echo "Usage: $fn <domain>"
    return 1
  end

  nslookup $argv[1] | awk '/^Address: / { print $2 }'
end
