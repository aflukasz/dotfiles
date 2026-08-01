export PS1='\[\033[32m\][$(date +%H:%M:%S)]\e[m ${debian_chroot:+($debian_chroot)}\u:\w$(__git_ps1):\n\$ '
