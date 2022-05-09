#!/bin/sh
set -e

service=$1

echo "Dockerizing $service"

cd $service

repo=deryeger/dse-$service

docker build --build-arg BACKEND_URL=${BACKEND_URL} -t $repo .
docker push $repo
