#! /bin/bash

: <<'EOF'
Case statement is used in place of if-elseif-elseif-if statement
This is an alternate and better approach instead of using if-elseif-elseif-else.
Much more readable and manageable

example:

case "$VAR" in 
    pattern_1) # pattern_1 is case sensetive
        # commands goes here.
        ;;
    pattern_N)
        # commands goes here.
        ;;
esac

EOF
