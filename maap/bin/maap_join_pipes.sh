#!/bin/bash

#set -x
. $(dirname $0)/maap-env.sh

from=$1
shift
to=$1
shift

if [ "x$from" == "x" -o "x$to" == "x" ] ; then
    echo "Please provide 'from queue' and 'to queue'" 
    exit 1
fi

${BIN_DIR}/tap_pipe.sh $from 2> /dev/null | ${BIN_DIR}/producer.sh &> /dev/null

#set +x

