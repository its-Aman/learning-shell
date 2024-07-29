#! /bin/bash

function sayHi2() {
    echo "Hi!"
    now
}

function sayHi() {
    now
    echo "Hello $1"
}

sayHiAll() {
    for NAME in $@
    do
        echo "Hello $NAME"
    done
}

now() {
    echo "It's $(date)"
}

# sayHi2

# sayHi $1 || Aman

# sayHiAll $@

setVar() {
    local NAMEE="Aman"
}

echo $NAMEE

setVar

echo $NAMEE


# function have exit status
# we can return proper exit status by using keyword `return`
# by default the exit status of function is of the last executed command
# valid return exit status code range betweeen 0-255, 
#   with 0 being represented success else not successs
# $? -> exit status

