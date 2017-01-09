
while [ "$(docker-cloud service ps | grep loadbalancerdb | awk '{print $4}')" != 'Running' ]
do
        echo "loadbalancertrac service is Starting.."
        sleep 1
done


echo "loadbalancertrac service is up and running"
