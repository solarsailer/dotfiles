function me
  echo -n 'Hello, I\'m '

  set_color green --bold
  echo -n (whoami)"@"(hostname -s)

  set_color normal
  echo '.'
end
