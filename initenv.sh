#!/bin/bash
n=1
for (( c=1; c<=scaled_to; c++ ))
do
    docker-cloud exec trac-app-$n trac-admin /opt/test initenv test mysql://root:mysql@mysql-for-trac-$n/trac
    n=$(( n+1 ))
done
