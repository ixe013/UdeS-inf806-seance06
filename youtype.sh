#!/bin/bash

for recording in $@
do
  REPLY="r"
  while [ "${REPLY}" == "r" ]; do
    asciinema play -i 1 ${recording}
    unset REPLY
    read -n1 -p "$(tput blink).$(tput sgr0)" -s REPLY
    printf "\b \n"
  done
done
