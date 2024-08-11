#! /bin/bash

: <<'EOF'
Write a script that renames files based on the file extension. 
The script should prompt the user for a file extension. 
Next, it should ask the user what prefix to prepend to the file name(s). 
By default the prefix should be the current date in YYYYMMDD format. 
So, if the user simply presses enter the date will be used. Otherwise, 
whatever the user entered will be used as the prefix. Next, 
it should display the original file name and the new name of the file. 
Finally, it should rename the file.

Example output 1:

Please enter a file extension: jpg Please enter a file prefix: (Press ENTER for 20150810). 
vacation Renaming mycat.jpg to vacationmycat.jpg.

Example output 2:

Please enter a file extension: jpg Please enter a file prefix: (Press ENTER for 20150810). 
Renaming mycat.jpg to 20150810mycat.jpg.

This is a multiline comment.
It spans multiple lines.
EOF


read -p "Please enter the file extension you want to rename: " ext
echo "You entered: ${ext}"

if [ -z $ext ]; then 
    echo "No extension was entered. Exiting !"
    exit 1
fi

read -p "Please enter the prefix you want prepend to the filename: " prefix
echo "You entered: ${prefix}"

if [ -z $prefix ]; then 
    echo "No prefix was entered. Using default value of prefix = YYYYMMDD"
fi

files=$(ls *.$ext)
cnt=0

for file in $files; do 

    if [ -z $prefix ]; then 
        echo "original name=${file} | new name=$(date +%Y%m%d)${file}"
        mv "${file}" "$(date +%Y%m%d)${file}"
    else
        echo "original name=${file} | new name=${prefix}${file}"
        mv "${file}" "${prefix}${file}"
    fi

    let cnt++
done

echo "Done. File modified=$cnt"

