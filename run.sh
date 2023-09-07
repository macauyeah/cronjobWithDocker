#!/bin/bash

echo running script at `date`
timeout 5s sudo docker container run --rm pingtest -c 100 
exitCode=$?
if [[ $exitCode -eq 124 ]]; then
    echo "timeout"
    # enter email alert with timeout
elif [[ $exitCode -gt 0 ]]; then
    echo "exit with error"
    # enter email alert with timeout
else
    echo "exit normal"
fi