#!/bin/bash

while [ "$(docker-cloud service ps | grep mysql-for-trac | awk '{print $4}')" != 'Running' ]
do
        sleep 20
done


echo "mysql-for-trac service is up and running"