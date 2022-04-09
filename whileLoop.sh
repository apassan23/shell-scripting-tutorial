#!/usr/bin/env bash

LINE=1
while read -r CURRENT_LINE 
    do
        echo "$LINE: $CURRENT_LINE"
        ((LINE++))
done < "./test.txt"