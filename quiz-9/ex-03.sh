#! /bin/bash

echo "1: Disk Usage"
echo "2: Uptime"
echo "3: Current users"
echo "q: Exit"

read -p "Select action: " SELECTED_OPTION

case $SELECTED_OPTION in
    1)
        echo "Showing disk usage: "
        df
    ;;
    2)
        echo "Showing uptime:"
        uptime
    ;;
    3)
        echo "Showing current users"
        who
    ;;
    q)
        exit 0
    ;;
    *)
        echo "Invalid option."
esac
