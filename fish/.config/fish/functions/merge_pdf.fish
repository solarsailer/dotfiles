function merge_pdf -d "Merge PDFs"
  set -l first "$argv[1]"

  if test "$first" = "-h"
    __print_help
    return 0
  end

  if test "$first" = "--help"
    __print_help
    return 0
  end

  if not test (count $argv) -ge 2
    set_color --bold red
    echo 'Not enough arguments.'
    set_color normal
    echo ''

    __print_help
    return 1
  end

  "/System/Library/Automator/Combine PDF Pages.action/Contents/Resources/join.py" -o $argv
end

function __print_help
  echo 'Examples:'
  echo ''
  echo '  $ merge_pdf path/to/final.pdf list.pdf of.pdf pdf.pdf file.pdf'
  echo '  $ merge_pdf path/to/final.pdf path/to/dir/with/*.pdf'
end
