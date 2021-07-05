#!/bin/bash

export EDITOR=vim

for f in {{ modules_to_manage | join(' ') }};
do
    source ~/.scripts/env/$f
done

