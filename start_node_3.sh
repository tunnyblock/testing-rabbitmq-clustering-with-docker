#!/bin/bash

source common.sh . 

nodename="rabbit3"

startcommand="pushd cluster ; docker-compose start $nodename ; popd"

echo "Starting $nodename with command: $startcommand"

pushd cluster >> /dev/null ; docker-compose start $nodename ; popd >> /dev/null

exit 0
