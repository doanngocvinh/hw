#!/bin/bash
docker exec namenode sh -c "stop-all.sh"
docker stop hadoop-master
docker stop hadoop-slave1
docker stop hadoop-slave2
