#!/bin/bash

#Description : Script to clean up the image in docker_host
#Author :annick A.
#Date :March 2020

for i in $(docker images |awk '{print$3}')
do 
docker rmi -f ${i}
done
