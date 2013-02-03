#!/bin/bash

. $(dirname $0)/../setup.sh

${BIN_DIR}/repeat.sh ${EXAMPLE_DIR}/generate_event_log.sh | grep --line-buffered ERROR | awk '{print $6; fflush}' | ${BIN_DIR}/batch.sh 5 "sort | uniq -c"
