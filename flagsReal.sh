#!/usr/bin/env bash

ARG_INVALID='-.*'

function validate(){
    if [[ $1 =~ $ARG_INVALID ]]
    then 
        echo "Option $2 expects a value"
        exit 1
    fi
}

# silent error reporting (non 0 exit status)
# 'u' and 'a' expects an argument
while getopts :u:a:f options
    do
        case $options in
        u)
            validate "$OPTARG" -u
            username=$OPTARG
        ;;
        a) 
            validate "$OPTARG" -a
            age=$OPTARG
        ;;
        f) echo '-f was triggered';;
        :)
            echo "Option -$OPTARG expects a value"
            exit 1
        ;;
        *)
            echo "Invalid Option -$OPTARG"
        ;;
    esac
done

echo "Username: $username"
echo "Age: $age"
