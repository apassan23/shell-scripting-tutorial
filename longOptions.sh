#!/bin/bash

while [ $# -gt 0 ] ; do
  case $1 in
    -s | --state) S="$2" ;;
    -u | --user) U="$2" ;;
    -a | --aarg) A="$2" ;;
    -b | --barg) B="$2" ;;

  esac
  shift 2 # shifts the positional arguments
done

echo "$S" "$U", "$A" "$B"