#!/bin/bash

. $(dirname $0)/maap-env.sh
from=$1
shift
remaining="$@"

if [ "x$from" == "x" ] ; then
    echo "Please provide 'from queue'"
    exit 1
fi


consumer="${KAFKA_HOME}/bin/kafka-console-consumer.sh --zookeeper localhost:2181 --topic $from --group ${from}_$$_group ${remaining}"
$consumer
