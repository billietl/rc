#!/bin/bash

test $SHELL = "/bin/bash" || return

update_prompt () {
        lastRC=$?
        G="\[\033[1;32m\]"
        R="\[\033[1;31m\]"
        B="\[\033[1;34m\]"
        C="\[\033[1;36m\]"
        M="\[\033[1;35m\]"
        Y="\[\033[1;33m\]"
        B="\[\033[1;30m\]"
        W="\[\033[1;37m\]"
        N="\[\033[0m\]"
        if [ $lastRC -eq 0 ]; then
                PS1_RC="${C}[${G}✓${N}${C}]${N}"
        else
                PS1_RC="${C}[${R}྾${N}${C}]${N}"
        fi
        if git status > /dev/null 2>&1 ; then
                PS1_GIT="${C}-[${G}GIT${W}$(git branch | grep '*' | awk '{print $2}')${C}]${N}"
        else
                PS1_GIT=""
        fi
        if [[ -d .terraform ]] ; then
                PS1_TF="${C}-[${G}TF${W}$(terraform workspace show)${C}]${N}"
        else
                PS1_TF=""
        fi
        if [[ "${VIRTUAL_ENV}" ]] ; then
                PS1_VENV="${C}-[${G}VENV${W}$( basename $VIRTUAL_ENV )${C}]${N}"
        else
                PS1_VENV=""
        fi
        PS1_HOST="${C}-[${W}\u${C}@${W}\h${C}]${N}"
        PS1_PATH="${C}-[${W}\w${C}]${N}"
        PS1="${PS1_RC}${PS1_HOST}${PS1_PATH}${PS1_GIT}${PS1_TF}${PS1_VENV}\n-\$ "
}
PROMPT_COMMAND="update_prompt"

