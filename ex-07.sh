#! /bin/bash

FILE_OR_DIR=$1

if [ -e FILE_OR_DIR ]; then
    echo "${FILE_OR_DIR} does not exists"
elif [ -f FILE_OR_DIR ]; then
    echo "${FILE_OR_DIR} is a regular file"
elif [ -d FILE_OR_DIR ]; then
    echo "${FILE_OR_DIR} is a directory"
else
    echo "${FILE_OR_DIR} is other file"
fi
