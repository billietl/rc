#!/bin/zsh

source /usr/share/oh-my-zsh/oh-my-zsh.sh
eval "$(starship init zsh)"
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
unsetopt share_history
