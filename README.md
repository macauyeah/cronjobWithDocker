# demo how to create a singleton cronjob with flock and timeout command

build a docker image with ping command, and timeout in two minutes
```
./preBuild.sh
```

run following command in multiple terminals, only the first one will output ping message
```
sudo flock -n /tmp/pingtest.filelock ${PWD}/run.sh
```

set root crontab to run it in every one minutes;
```
*/1 * * * * flock -n /tmp/pingtest.filelock /pathToYourScript/run.sh >> /tmp/pingtest.out
```
