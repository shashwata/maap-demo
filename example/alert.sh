#!/bin/bash
while read line; do 
    echo "$line" | grep ERROR &> /dev/null
    result=$?
    if [ $result -eq 0 ] ; then 
        echo "Received Alert: $line"
    fi
done
