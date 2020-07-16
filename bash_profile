# Colors
green=$'\e[0;32m'
cyan=$'\e[0;36m'
red=$'\e[0;31m'
ulOn=$'\e[4m'
ulOff=$'\e[24m'
cl=$'\e[0m'

# CLI Prompt
export PS1=$'${cyan}$(whoami)${red}@${green}${HOSTNAME%%.*}${red}:${cyan}$(dirs +0)${red}$(__git_ps1)${cl}\n $ '

export TERM=xterm-256color
LS_COLORS=$LS_COLORS:'di=0;35:'
export LS_COLORS
