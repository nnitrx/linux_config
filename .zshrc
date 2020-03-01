# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nnitrx/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#Needed to have emacsclient automatically start a daemon if one doesn't exist
export ALTERNATE_EDITOR=""

#React-native
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

#Local bin
export PATH=$PATH:$HOME/bin

#Aliases
alias ls="ls --color"
alias la="ls -a"
alias ll="ls -al"
alias urxvt="urxvtc"
alias emacs="emacsclient -c"

PS1="%~> "
