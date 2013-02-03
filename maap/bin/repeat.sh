#!/bin/bash

expression="$@"

while [ 1 ] ; do 
    eval "$expression"
    sleep 1
done

