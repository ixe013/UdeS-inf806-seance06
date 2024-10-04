#!/bin/bash

for recording in $@
do
  REPLY="r"
  while [ "${REPLY}" == "r" ]; do
    asciinema play -i 1 ${recording}
    read -n1 -s REPLY
    unset REPLY
  done
done
