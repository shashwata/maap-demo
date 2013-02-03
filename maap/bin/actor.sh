#!/bin/bash

#set -x

. $(dirname $0)/maap-env.sh

from=$1
shift
to=$1
shift

expression="$@"

if [ "x$from" == "x" -o "x$to" == "x" ] ; then
    echo "Please provide 'from queue' and 'to queue' and 'the command' to execute"
    exit 1
fi

${BIN_DIR}/tap_pipe.sh $from 2> ${LOG_DIR}/logs_actor_$$_tap_$from_$to | producer.sh $to "$expression" &> ${LOG_DIR}/logs_actor_$$_producer_$from_$to

#set +x

