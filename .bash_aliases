#!/bin/bash


# -------------------------------------------------------------------
# Change Directory
# -------------------------------------------------------------------
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# -------------------------------------------------------------------
# HDD
# -------------------------------------------------------------------
alias df='df -h'
alias du='du -h'

# -------------------------------------------------------------------
# Utilities
# -------------------------------------------------------------------
# open with system default application
alias o='thunar'
alias afk="i3lock -c 000000"
alias notify=notify-send "$1"
alias dl="cd ~/Téléchargements"
alias g="git"
alias h="history"
#end of day
alias eod="notify 'Heyyy ! End Of Day dude' && sudo shutdown now"

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# List all files colorized in long format
alias l="ls -laFH ${colorflag}"

# Always enable colored `grep` output
alias grep='grep --color=auto '

# IP addresses
alias pubip="curl https://ifconfig.me"

# vhosts
alias hosts='sudo vim /etc/hosts'

# copy working directory
alias cwd='pwd | tr -d "\r\n" | xclip -selection clipboard'

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | xclip -selection clipboard | echo '=> Public key copied to pasteboard.'"
