alias ll="ls -l"
alias la="ls -a"
alias lla="ls -la"

# alias cdf="cd /T/F/Firefly/Users/Jackson_B"
alias vimrc="vim ~/.vimrc"

# alias tldr="tldr -c"

# alias newpy="cookiecutter https://github.com/audreyr/cookiecutter-pypackage.git"

alias wpy="winpty python"
alias nvim="winpty nvim"

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

# # >>> conda initialize >>>
# # !! Contents within this block are managed by 'conda init' !!
# eval "$('/C/MyApps/conda3/Scripts/conda.exe' 'shell.bash' 'hook')"
# # <<< conda initialize <<<
# 
# export http_proxy=http://eastproxy.northgrum.com:80
# export https_proxy=http://eastproxy.northgrum.com:80
# export GOROOT=~/code/.goroot
# 
# conda activate workbox

echo "Howdy Bacchus!"
echo "Shortcuts"
echo "ll la lla cdf vimrc tldr newpy wpy nvim"
