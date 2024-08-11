#! /bin/bash

jpg_files=$(ls *.jpg)

CNT=$(ls *.jpg | wc -l)

echo "${CNT}"

if [ -z CNT ]; then
    echo "No jpg files."
    exit 0
fi

for jpg_file in $jpg_files; do
    # echo "file=$jpg_file is being renamed"
    # echo "$(date +%Y%m%d)${jpg_file}"
    mv ${jpg_file} "$(date +%Y%m%d)${jpg_file}"
done
