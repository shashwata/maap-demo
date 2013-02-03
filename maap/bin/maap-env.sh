#!/bin/bash

DIRNAME=$(cd $(dirname "${BASH_SOURCE[0]:-\.}") && pwd)

export CONF_DIR=$DIRNAME
export BIN_DIR=${CONF_DIR}

export LOG_DIR=${LOG_DIR:-/tmp/maap/log}
mkdir -p ${LOG_DIR}

export TEMP_DIR=${TEMP_DIR:-/tmp/maap/temp}
mkdir -p ${TEMP_DIR}

#export PATH=${PATH}:${BIN_DIR}:${CONF_DIR}

# comma separated list: localhost:2181
export zookeeper_servers="localhost:2181"

KAFKA_BIN=$(which kafka-server-start.sh)
if [ "x$KAFKA_BIN}" == "x" -a "x${KAFKA_HOME}" == "x" ] ; then
    echo "Please specify Kafka home dir. It is the directory inside which there is a bin dir"
    exit 1
fi

KAFKA_BIN_DIR="$(dirname $KAFKA_BIN)/.."
export KAFKA_HOME=${KAFKA_HOME:-$KAFKA_BIN_DIR}

