#!/bin/bash

# Stop Docker Container
docker-compose stop

#Remove exited container
docker container rm $(docker container ls -q -f "status=exited")

#remove useless images
docker rmi -f $(docker images | grep "<none>" | awk "{print \$3}")

#build new docker image
docker-compose build

#start docker contsiner
docker-compose up -d
#show the docker container status
docker-compose ps