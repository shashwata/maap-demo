#!/bin/bash 

. $(dirname $0)/../setup.sh

echo "Tapping and joining consumer to filter event to pipe 2"
${BIN_DIR}/tap_pipe.sh pipe_1 2> /dev/null | ${BIN_DIR}/producer.sh pipe_2 "grep --line-buffered INFO" &> /dev/null & 

