# Alias
alias ls='ls --color'
alias cat='bat'

# Colors
green=$'\e[0;32m'
cyan=$'\e[0;36m'
red=$'\e[0;31m'
ulOn=$'\e[4m'
ulOff=$'\e[24m'
cl=$'\e[0m'

# Git Prompt
source /etc/bash_completion.d/git-prompt

# CLI Prompt
export PS1=$'${cyan}$(whoami)${red}@${green}${HOSTNAME%%.*}${red}:${cyan}$(dirs +0)${red}$(__git_ps1)${cl}\n $ '

export TERM=xterm-256color
LS_COLORS=$LS_COLORS:'di=0;35:'
export LS_COLORS

cd ~

# Docker WSL Support
export DOCKER_HOST=tcp://localhost:2375

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/bjax/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/bjax/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/bjax/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/bjax/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
