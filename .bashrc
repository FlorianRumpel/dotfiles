#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
alias cp='cp -v'
alias ls='lsd --header'

shopt -s cdspell 

shopt -s histappend
export HISTSIZE=1000
export HISTIGNORE='ls:cd ~:cd ..:exit:c:clear:history'
export HISTCONTROL=erasedups

alias grep='grep -i --color=auto'
PS1='[\u@\h \W]\$ '
trap 'eval "$PROMPT_COMMAND"' WINCH
#Personal
fastfetch
alias c="clear"
alias sshpi='TERM=xterm-256color ssh flori@pi.fritz.box'
#alias rm=trash -v
alias cw=$HOME/scripts/wallpapers.sh
alias rm='trash -v'
alias cp='cp -v'
export EDITOR=nvim
export TERM=xterm-256color
export PATH=".local/bin:$HOME/scripts:$PATH"

eval $(gnome-keyring-daemon --start)

#Starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
eval "$(starship init bash)"



#Volume control

brave-vol() {
  ID=$(pactl list sink-inputs | grep -B 20 'application.name = "Brave"' | grep "Sink Input" | grep -o '[0-9]*')
  pactl set-sink-input-volume "$ID" "$1"
}
export PATH="$HOME/.npm-global/bin:$PATH"

# OpenClaw Completion
source "/home/florian/.openclaw/completions/openclaw.bash"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
