#!/bin/bash

ps aux | grep kafka | grep '\-\-topic' | awk '{print $2}' | xargs kill 
ps aux | egrep "maap.*\.sh" | awk '{print $2}' | xargs kill

