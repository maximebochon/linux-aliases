# Get information on the process associated to a window by clicking on it
alias getWindowProcessInformation='echo "Click on a window to get its process information"; ps -p $(xprop | awk '\''/PID/ {print $3}'\'') -o user,pid,args'

# Find non-empty duplicated files, recursively from the current directory
alias findDuplicatesExcludingEmptyFiles="fdupes -n -R ."

# List file extensions, from 1 to 5 characters, found recursively from the current directory, ignoring case
alias listFileExtensionsIgnoreCase="find . -type f -regextype posix-extended -regex '.+\.[^.]{1,5}' | sed --regexp-extended 's/.+\.([^.]{1,5})/\1/g' | tr [:upper:] [:lower:] | sort -u"

