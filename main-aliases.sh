# Get information on the process associated to a window by clicking on it
alias getWindowProcessInformation='echo "Click on a window to get its process information"; ps -p $(xprop | awk '\''/PID/ {print $3}'\'') -o user,pid,args'
