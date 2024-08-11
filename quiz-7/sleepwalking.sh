#! /bin/bash

read -p "" CMD

case "$CMD" in
start | START)
    /tmp/sleepwalkingserver &
    ;;
stop | STOP)
    kill $(cat /tmp/sleepwalkingserver.pid)
    ;;
*)
    echo "Usage sleepwalking start|stop"
    ;;
esac
