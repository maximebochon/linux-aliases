# Restart the display manager
alias restartDisplayManager="sudo systemctl restart display-manager.service"

# Get information on the process associated to a window by clicking on it
alias getWindowProcessInformation='echo "Click on a window to get its process information"; ps -p $(xprop | awk '\''/PID/ {print $3}'\'') -o user,pid,args'

# Find non-empty duplicated files, recursively from the current directory
alias findDuplicatesExcludingEmptyFiles="fdupes -n -R ."

# List file extensions found recursively from the current directory, ignoring case
alias listFileExtensionsIgnoringCase="find . -type f -name '*[!.]?.[!.]?[!.]*' -printf '%f\n' | sed -E 's/^.+\.([^.]+)$/\1/g' | tr [:upper:] [:lower:] | sort -u"

# Delete empty directories found recursively from the current directory
alias deleteEmptyDirectoriesRecursively="find . -type d -empty -delete"

# Enable or disable extended path name expansion (known as 'globbing') in Bash
# Additional patterns are: ** ?(...) *(...) +(...) @(...) !(...) 
alias enableBashExtendedPathnameExpansion="shopt -s extglob globstar"
alias disableBashExtendedPathnameExpansion="shopt -u extglob globstar"
