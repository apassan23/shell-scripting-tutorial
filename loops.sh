#!/usr/bin/env bash

#SIMPLE FOR LOOP
NAMES="Brad Kevin Alice Mark"
for NAME in $NAMES
    do
        echo "Hello $NAME"
done

# FOR LOOP TO RENAME FILES
FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES
    do
        echo "Renaming $FILE to new-$FILE"
        mv "$FILE" "$NEW"-"$FILE"
done