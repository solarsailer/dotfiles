function new_ssh_key -d "new_ssh_key destination name"
  ssh-keygen -t rsa -b 4096 -C $argv[2] -f $argv[1]
end
