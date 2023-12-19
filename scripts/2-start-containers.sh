#!/bin/bash


docker network create hadoop

docker run -itd \
           --net=hadoop \
           -p 9870:9870 \
           -p 8088:8088 \
           --name hadoop-master \
           --hostname hadoop-master \
           docker_hadoop 
docker run -itd --net=hadoop --name hadoop-slave1 --hostname hadoop-slave1 docker_hadoop
docker run -itd --net=hadoop --name hadoop-slave2 --hostname hadoop-slave2 docker_hadoop


docker exec -it namenode bash
# start-all.sh

