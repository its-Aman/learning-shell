#! /bin/bash

LINE_NUM=0

while read LINE; do
    ((LINE_NUM++))
    echo "${LINE_NUM}: ${LINE}"
done < /etc/passwd
