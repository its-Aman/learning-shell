#! /bin/bash

function file_count() {
    local dir=$1

    if [ -d "$dir" ]; then # -d checks if given file is a directory
        local CNT=$(ls -1 "$dir" | wc -l)
        echo "File count in the ${dir} dir are ${CNT}"
    else
        echo "${dir} is not a directory"
    fi
}

if [ -z "$1" ]; then # -z checks if given string is empty
    echo "Please provide a directory"
else
    file_count "$1"
fi
