#!/bin/bash

export EDITOR=vim
export PATH=$PATH:~/.scripts

for f in {{ modules_to_manage | join(' ') }};
do
    source ~/.scripts/env/$f
done

