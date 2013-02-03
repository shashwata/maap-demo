#!/bin/bash

. $(dirname $0)/maap-env.sh

batch_size=$1
shift

expression="$@"

while true ; do
    batch_file=${TEMP_DIR}/batch_$$
    cat /dev/null >  $batch_file

    for ((i=0;i<${batch_size};i++)) ; do
        read line
        result=$?
        if [ $result -eq 0 ] ; then
            echo $line >> $batch_file
        fi
    done
    echo "** Processing batch file **" 1>&2
    eval "cat $batch_file | $expression"

done

