#!/bin/bash

. $(dirname $0)/maap-env.sh
${BIN_DIR]/producer.sh $@ &> /dev/null
