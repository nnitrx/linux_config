# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nnitrx/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#Aliases
alias ls="ls --color"
alias la="ls -a"
alias ll="ls -al"
alias urxvt="urxvtc"