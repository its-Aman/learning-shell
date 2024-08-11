#! /bin/bash

LINE_NUM=0

read -p "Enter the number of lines: " MAX_LINE

while read LINE; do
    echo "${LINE_NUM}: ${LINE}"

    ((LINE_NUM++))

    if [ $LINE_NUM -eq $MAX_LINE ]; then
        echo "===================BREAK==================="
        break
    fi

done </etc/passwd
