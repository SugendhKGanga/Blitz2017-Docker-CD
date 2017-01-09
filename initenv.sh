#!/bin/bash

for (( c=1; c<=scaled_to; c++ ))
do
    n=1
    n=$(( n+1 ))

    docker-cloud exec trac-app-$n trac-admin /opt/test initenv test mysql://root:mysql@mysql-for-trac-$n/trac
done
