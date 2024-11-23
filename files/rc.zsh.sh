#!/bin/zsh

source /usr/share/oh-my-zsh/oh-my-zsh.sh
eval "$(starship init zsh)"
{% if "zoxide" in modules_to_manage %}
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
{% endif %}
unsetopt share_history
