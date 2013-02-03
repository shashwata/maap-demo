#!/bin/bash

. $(dirname $0)/maap-env.sh

to=$1
shift
expression="$@"

if [ "x$to" == "x" ] ; then
    echo "Please provide to queue and optionally an expression whose ouput will be send to pipe. Example: $0 my_pip "cat abcd.txt""
    exit 1
fi


producer="${KAFKA_HOME}/bin/kafka-console-producer.sh --topic $to --zookeeper localhost:2181 --batch-size 1"

if [ "x$expression}" != "x" ] ; then
    ${expression} | $producer
else
    $producer 
fi
