#!/usr/bin/env bash

read -r -p "Are you 21 or over ? (Y/N) " ANSWER
case "$ANSWER" in
    [yY] | [yY][eE][sS]) 
        echo "You can have a beer :)"
    ;;
    [nN] | [nN][oO])
        echo "Sorry No Drinking!"
    ;;
    *)
        echo "Please enter y/yes or n/no"
        ;;
esac