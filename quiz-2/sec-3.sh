#! /bin/bash

# exit status / return code
# every command returns an exit status, which range from 0 to 255. 
# 0=success
# other then 0 is error condition
# use for error checking
# use `man` or `info` to find meaning of exit status
# $? contains the return code of the previously executed command 
# $? can be used with arithmatic operator to check the condition and select the next flow

# for ex. if [ "$?" -eq "0"]
# then
#     echo "last command is sueccessfully executed"

# Also, $? can be assigned to a variable for further use
# RETURN_CODE=$?

# for ex. if [ "$RETURN_CODE" -ne "0"]
# then
#     echo "last command is failed to execute"

# Logical AND and OR can be used with the commands 
# && = AND
# mkdir /temp/bak && cp test.txt /temp/bak
# Above copy command will only be execute when mkdir command exits with return code 0

# || = OR
# cp test.txt /temp/bak || cp test.txt /temp
# here if test.txt can't be copied to /temp/bak, it'll be copied to /temp
# if test.txt can be copied to /temp/bak, it'll not me copied to /temp

# seperate commands with semicolons to ensure all commands are executed.
# cp test.txt /temp/bak ; cp test.txt /temp
# the above statement is similar to the following 2 commands
# cp test.txt /temp/bak 
# cp test.txt /temp

# Explicitly define the return code from your script to ensure 
# other system reading your script has the correct exit status
# exit status will stop the execution of the script and return from there
# use `exit` command to return the appropriate return code.
# ex: `exit 0`
# the default value of the exit code is that of the last executed command


ls /

echo "$?"
