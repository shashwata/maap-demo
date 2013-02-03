#!/bin/bash

. $(dirname $0)/../setup.sh

echo "Starting event log generation to host ***PF-ENG1*** pipe 1"
${BIN_DIR}/producer.sh pipe_1 "${BIN_DIR}/repeat.sh ${EXAMPLE_DIR}/generate_event_log.sh PF_ENG1.FLIPKART.COM" &> /dev/null &

