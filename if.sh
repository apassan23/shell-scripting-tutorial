#! /usr/bin/bash

# USER INPUT
read -r -p "Enter your name: " NAME
echo "Hello $NAME"

# SIMPLE IF STATEMENT
# WHITESPACES ARE IMPORTANT
if [ "$NAME" == "Abhishek" ]
then 
    echo 'Your name is Abhishek'
elif [ "$NAME" == "Ankit" ]
then
    echo 'Your name is Ankit'
else
    echo 'Your name is NOT Abhishek or Ankit'
fi