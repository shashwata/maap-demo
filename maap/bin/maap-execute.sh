#!/bin/bash

#set -x

. $(dirname $0)/maap-env.sh

name=$1
shift

exp="$@"

if [ "x$exp" == "x" ] ; then
    echo "please specify "name" of the pipe and the expression separated by '|' character. Example: $0 my_pipe 'cat A.txt | grep b'"
    exit 1
fi

from=
to=
prefix=$name
index=0

IFS="|"
for i in $exp ; do
    index=$((index+1))
    to=${prefix}_${index}
    if [ "x$from" == "x" ] ; then
        ${BIN_DIR}/producer.sh $to $i &> ${LOG_DIR}/logs_$$_producer_${from}_${to} &
    else
        ${BIN_DIR}/actor.sh $from $to $i &
    fi
    from=$to
done

wait

#set +x
