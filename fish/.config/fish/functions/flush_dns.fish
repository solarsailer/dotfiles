function flush_dns --description "Flush the DNS cache on macOS"
  echo "Flushing DNS cache on macOS…"
  sudo dscacheutil -flushcache
  sudo killall -HUP mDNSResponder

  echo "DNS cache flushed."
end
