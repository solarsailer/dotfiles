# Ask confirmation and return `0` (true) if success, `1` (false) otherwise.
#
# Example
#   if ask
#     echo "Continue!"
#   end
#
# Example
#   ask; and echo "Continue!"
function ask -d "Ask for confirmation"
  while read --prompt __prompt --local input
    switch $input
      case Y y
        return 0
      case '' N n
        return 1
    end
  end
end

function __prompt
  set_color red
  echo -n "Do you want to continue?"
  set_color normal
  echo -n " [y/N] "
end
