#!/bin/bash

echo running script at `date`
#timeout --signal=SIGINT 10s docker container run --rm pingtest -c 20
timeout --signal=SIGINT 2m docker container run --rm pingtest
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