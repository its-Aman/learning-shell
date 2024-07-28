#! /bin/bash

LIST_OF_FILE_OR_DIR=$@

for FILE_OR_DIR in $LIST_OF_FILE_OR_DIR; do
    echo "Checking file: ${FILE_OR_DIR}"

    if [ -e FILE_OR_DIR ]; then
        echo "${FILE_OR_DIR} does not exists"
    elif [ -f FILE_OR_DIR ]; then
        echo "${FILE_OR_DIR} is a regular file"
    elif [ -d FILE_OR_DIR ]; then
        echo "${FILE_OR_DIR} is a directory"
    else
        echo "${FILE_OR_DIR} is other file"
    fi
done
