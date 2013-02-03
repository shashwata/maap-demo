#!/bin/bash

cat ${1:-$(dirname $0)/../event.log} | grep --line-buffered ERROR | sed -e 's/.*\(http\:\/\/.*\) .*/\1/g' | head
