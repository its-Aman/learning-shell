#! /bin/bash

# Positional parameters
# $0 -> name of the script
# $1 -> param1
# $2 -> param2
# $3 -> param3
# $@ -> param1, param2, param2.......... param_n

read -p "Enter name of file or dir: " FILE_OR_DIR

if [ -e FILE_OR_DIR ]; then
    echo "${FILE_OR_DIR} does not exists"
elif [ -f FILE_OR_DIR ]; then
    echo "${FILE_OR_DIR} is a regular file"
elif [ -d FILE_OR_DIR ]; then
    echo "${FILE_OR_DIR} is a directory"
else
    echo "${FILE_OR_DIR} is an other type of file"
fi
