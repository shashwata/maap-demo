#!/bin/bash
host=${1:-$(hostname)}
val=$(($RANDOM % 3))

log_level=INFO
if [ $val -lt 2 ] ; then
    log_level=ERROR
fi

echo ${host} $(date +"[%Y-%m-%d %H:%M:%S]") [$log_level] GET http://localhost/some/random/url/${RANDOM} $(($RANDOM / 1000))
