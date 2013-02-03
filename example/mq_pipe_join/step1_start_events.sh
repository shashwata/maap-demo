#!/bin/bash

echo "Starting event log generation to pipe 1"
producer.sh pipe_1 "repeat.sh /Volumes/Source/hack/maap/scripts/generate_event_log.sh" &> /dev/null &

sleep 2
