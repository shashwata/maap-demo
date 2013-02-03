#/bin/bash

. $(dirname $0)/../setup.sh

${BIN_DIR}/tap_pipe.sh pipe_2 2> /dev/null | awk '{print $1; fflush}' | ${BIN_DIR}/batch.sh 10 "sort | uniq -c"
