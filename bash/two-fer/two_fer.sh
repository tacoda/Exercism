#!/usr/bin/env bash

main () {
  NAME='you'
  if [[ -n $1 ]]; then
    NAME=$1
  fi
  echo "One for $NAME, one for me."
}

main "$@"
