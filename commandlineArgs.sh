#!/usr/bin/env bash

# print the PID
echo "PID: $$"

# Name of the script
echo "Name of the script: $0"

# arguments -- positional args
if [ "$1" != "" ]
then
    echo "Argument1: $1"
fi

if [ "$2" != "" ]
then
    echo "Argument2: $2"
fi

# and so on..

# NUMBER OF ARGUMENTS
echo "Number of args: $#"

# PRINT ALL THE ARGUMENTS
echo "Args Passed: $*"

# Exit status of last command
echo "Exit status of last command: $?"

# PID of last background command
echo hello &
echo "PID of last background command: $!"

# Print each arg
for TOKEN in "$@"
do
   echo "$TOKEN"
done
