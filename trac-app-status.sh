#!/bin/bash

while [ "$(docker-cloud service ps | grep trac-app | awk '{print $4}')" != 'Running' ]
do
        sleep 1
done


echo "trac-app service is up and running"
