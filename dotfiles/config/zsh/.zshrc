
# history
HISTSIZE=110000
SAVEHIST=100000
HISTFILE=~/.histfile

autoload -U colors && colors
autoload -U compinit && compinit
autoload -U promptinit && promptinit

prompt walters

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme