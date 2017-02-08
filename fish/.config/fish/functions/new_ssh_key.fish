# Create a new SSH key.
#
# Example:
#   new_ssh_key 'path/to/test_key' 'krokmou@berk.com'
function new_ssh_key -a filename email -d "new_ssh_key path/to/filename email@domain.com"
  ssh-keygen -t rsa -b 4096 -C $email -f $filename
end
