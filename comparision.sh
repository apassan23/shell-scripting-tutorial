#! /usr/bin/bash

# COMPARISION
#########
# relation operators / arguments:
# -eq, -gt, -lt, -ge, -le, -ne
#########
NUM1=31
NUM2=5
if [ "$NUM1" -gt "$NUM2" ]
then
    echo "$NUM1 is greater than $NUM2"
else
    echo "$NUM1 is less than or equal to $NUM2"
fi