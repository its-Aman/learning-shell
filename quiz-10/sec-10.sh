#! /bin/bash -x

# -x flag is used to debug the shell script

# set -x will start the debugging
# set +x will stop the debugging

VAR="Hi"
echo "$VAR"

# -e = Exit on error
# can be used in combination with -x. Order does not matter
# #! /bin/bash -xe
# #! /bin/bash -ex
# #! /bin/bash -e -x
# #! /bin/bash -x -e


# -v = Print shell inputs lines as they are read
# If used with -x, then the command line will print the actual command and the command with substitued values

#  use `help set` for more information regarding built in bash option