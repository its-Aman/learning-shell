#! /bin/bash

FILE_OR_DIR=$1

# read -p "Enter the name of file or dir: " FILE_OR_DIR

if [ -e FILE_OR_DIR ]; then
    echo "File not exists"
elif [ -f FILE_OR_DIR ]; then
    echo "${FILE_OR_DIR} is a regular file"
    exit 0
elif [ -d FILE_OR_DIR ]; then
    echo "${FILE_OR_DIR} is a directory"
    exit 1
else
    echo "${FILE_OR_DIR} is other type of file"
    exit 2
fi
