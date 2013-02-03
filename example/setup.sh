#!/bin/bash
DIRNAME=$(cd $(dirname "${BASH_SOURCE[0]:-\.}") && pwd)

if [ "x${DIRNAME}" == "x" ] ; then
    DIRNAME="$PWD"
fi

export BIN_DIR="${DIRNAME}/../maap/bin"
export EXAMPLE_DIR="${DIRNAME}"
