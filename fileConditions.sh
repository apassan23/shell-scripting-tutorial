#! /usr/bin/bash

# FILE CONDITIONS
######
# -d file   True of the file is a directory
# -e file   True of the file exists (note that this 
# is not particulary portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on the file
# -r file   True if the file is readable
# -s file   True if the file has anon-zero size
# -u        True if the user id is set on the file
# -w        True if the file is writable
# -x        True if the file is an executable
######
FILE="test.txt"
if [ -f "$FILE" ]
then 
    echo "$FILE is a file"
else 
    echo "$FILE is not a file"
fi