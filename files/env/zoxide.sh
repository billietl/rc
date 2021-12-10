#!/bin/bash

eval "$(zoxide init bash)"

zcode () {
  z $1 && code .
}

zhub () {
  z $1 && gh browse
}
