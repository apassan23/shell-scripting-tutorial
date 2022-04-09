#!/usr/bin/env bash

# will store -a as a and every other option as ?
# in opt
while getopts ":a:b" opt
    do 
        case $opt in
        a) echo "-a was triggered"
        ;;
        *) echo "Invalid option: -$OPTARG"
        ;;
    esac
done



