#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


shopt -s cdspell 

shopt -s histappend
export HISTSIZE=1000
export HISTIGNORE='ls:cd ~:cd ..:exit:c:clear:history'
export HISTCONTROL=erasedups

alias grep='grep -i --color=auto'
PS1='[\u@\h \W]\$ '
trap 'eval "$PROMPT_COMMAND"' WINCH


#Personal
echo ""
fastfetch

alias c="clear"
alias sshpi='TERM=xterm-256color ssh flori@pi.fritz.box'
alias rm='trash -v'
alias cp='cp -v'
alias cp='cp -v'
alias ls='lsd --header'

export EDITOR=nvim
export TERM=xterm-256color
export PATH=".local/bin:$HOME/scripts:$PATH"

eval $(gnome-keyring-daemon --start 2>/dev/null)

#Starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init bash)"

# OpenClaw Completion
#source "/home/florian/.openclaw/completions/openclaw.bash"
#export ANDROID_HOME=$HOME/Android/Sdk
#export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
