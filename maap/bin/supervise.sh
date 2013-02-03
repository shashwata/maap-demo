#!/bin/bash
expression="$@"
wait=2
while true ; do
    eval "$expression"
    echo "==Application stopped! restarting after $wait sec =="
    sleep $wait
done

