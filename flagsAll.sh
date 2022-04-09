#!/usr/bin/env bash

# when there is nothing preceding :
# it does print error messages but exits with
# non zero status code

ARG_INVALID='-.*'

while getopts :u:a: opt
    do
        case $opt in
        u) 
            if [[ $OPTARG =~ $ARG_INVALID ]]
            then
                echo "Option -u expects a value" 
                # OPTIND=$OPTIND-1, use this for reassessing this
                exit 1
            fi
            echo "-u was triggered, value: '$OPTARG'"
        ;;
        a)  if [[ $OPTARG =~ $ARG_INVALID ]]
            then
                echo "Option -a expects a value"
                exit 1
            fi
            echo "-a was triggered, value: '$OPTARG'";;
        :) echo "Option -$OPTARG expects a value" && exit 1;;
        *) echo "Invalid option -$OPTARG" && exit 1;;
        esac
done

# : after a letter tells it to expect an argument value
# if there is no argument value, then it returns : in $opt