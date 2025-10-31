function ledger_default --description 'Set default hledger journal'
    if test -z "$argv[1]"
      echo "Error: A journal file path must be provided"
      return 1
    end

    if not test -f "$argv[1]"
      echo "Error: Journal '$argv[1]' does not exist"
      return 1
    end

    echo "Default hledger journal set to '$argv[1]'"
    ln -sf (realpath "$argv[1]") ~/.hledger.journal
end
