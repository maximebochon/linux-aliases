# Mount shared directory in a Virtual Box Linux virtual machine
alias shrmnt="sudo mount -t vboxsf -o uid=1000,gid=1000 shr /mnt/shr"
alias shrcd="cd /mnt/shr"
alias shr="shrmnt && shrcd"
