#! /bin/bash

read -p "Enter y or n: " ANSWER

case $ANSWER in
[yY] | [yY][eE][sS])
    echo "You entered yes."
    ;;
[nN] | [nN][oO])
    echo "You entered no."
    ;;
*)
    echo "Invalid answer."
    ;;
esac
