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

# Rename files, replacing with an underscore characters outside of this set:
# - lower or upper case letters without accent ("a" to "z", "A" to "Z")
# - digits ("0" to "9")
# - underscore, dash, dot ("_", "-", ".")
alias restrictCharactersInFileNames="rename --filename 's/[^0-9a-zA-Z_\-\.]/_/g'"

# Convert a text file from ISO-8859-1 to UTF-8 encoding, and the other way around
# (does not work for several files at a time / `iso2utf *.txt` won't work)
alias iso2utf="ex -sc '%!iconv --from-code=ISO-8859-1 --to-code=UTF-8' -cx"
alias utf2iso="ex -sc '%!iconv --from-code=ISO-8859-1 --to-code=UTF-8' -cx"
