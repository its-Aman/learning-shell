#! /bin/bash

# FILE Operators
# -d FILE -> True if file is a directory
# -e FILE -> True if file exists
# -f FILE -> True if file exists and file is a regular file
# -r FILE -> True if file is a readable by you
# -s FILE -> True if file exists and is not empty
# -w FILE -> True if file exists and writable by you
# -x FILE -> True if file exists and executable by you

# STRING Operators
# -z STRING -> True if the string is empty
# -n STRING -> True if the string is not empty
# STRING1 = STRING2 -> True if the strings are equal
# STRING1 != STRING2 -> True if the strings are not equal

# Arithmetic Operator
# arg1 -eq arg2 -> True if arg1 is equal to arg2
# arg1 -ne arg2 -> True if arg1 is not equal to arg2
# arg1 -lt arg2 -> True if arg1 is less then arg2
# arg1 -le arg2 -> True if arg1 is less then or equal to arg2
# arg1 -gt arg2 -> True if arg1 is greater then arg2
# arg1 -ge arg2 -> True if arg1 is greater then or equal to arg2

if [ -e /etc/shadow ]
then
    echo "Shadow passwords are enabled"
fi

if [ -w /etc/shadow ]
then
    echo "You have permissions to edit /etc/shadow."
else
    echo "You do NOT have permissions to edit /etc/shadow."
fi