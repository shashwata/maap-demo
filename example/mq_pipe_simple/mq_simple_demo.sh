#!/bin/bash

set -x
. $(dirname $0)/../setup.sh

${BIN_DIR}/maap-execute.sh pipe "cat ${1:-$(dirname $0)/../event.log} | grep --line-buffered ERROR | sed -e 's/.*\(http\:\/\/.*\) .*/\1/g'"
set +x
