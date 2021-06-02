#!/bin/bash
declare dockerhub_username=$1;
declare docker_image_name=$2;

if [ "$#" -ne 2 ]
then
        echo "script requires 2 arguments: a dockerhub username and docker image name" >&2
        exit 1
fi

echo "Dockerhub username: $dockerhub_username";
echo "Docker image name : $docker_image_name";

docker build -t $docker_image_name .
docker tag $docker_image_name $dockerhub_username/$docker_image_name
docker push $dockerhub_username/$docker_image_name
docker rmi $dockerhub_username/$docker_image_name
docker rmi $docker_image_name
