#!/bin/bash
NET=my_network
SUBNET=12.12.0.0/16
IP=12.12.0.
IPCOUNT=3

docker network create --subnet=$SUBNET $NET


for ((c=1; c<=$IPCOUNT; c++ ))
do
    #docker run --net $NET --ip $IP$c -it ubuntu bash
    docker run --net $NET --ip $IP$c ubuntu
    echo $IP$c
done




# References
# Create a docker subnet: https://stackoverflow.com/questions/27937185/assign-static-ip-to-docker-container
