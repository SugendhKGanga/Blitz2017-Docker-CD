#!/bin/bash

while [ "$(docker-cloud service ps | grep loadbalancerdb | awk '{print $4}')" != 'Running' ]
do
        sleep 20
done


echo "loadbalancerdb service is up and running"
