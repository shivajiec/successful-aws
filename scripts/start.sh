#!/bin/bash
set -e

#pull the docker image#
echo "pulling docker image from docker hub"
docker pull shivadmin/adi-janu:latest

echo "creating docker container
docker run -d -p 5000:5000 shivadmin/adi-janu:latest