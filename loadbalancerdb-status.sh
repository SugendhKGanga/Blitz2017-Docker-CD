#!/bin/bash

while [ "$(docker-cloud service ps | grep loadbalancerdb | awk '{print $4}')" != 'Running' ]
do
        echo "loadbalancerdb service is Starting.."
        sleep 1
done


echo "loadbalancerdb service is up and running"
