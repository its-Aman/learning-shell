#! /bin/bash

RETURN_CODE=$?

cat etc/shadow

if [ RETURN_CODE = "0" ]; then
    echo "Command Succeeded"
    exit 0
else
    echo "Command Failed"
    exit 1
fi
