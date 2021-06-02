# Dockerhub Push Script

A Bash script for pushing a container image to Dockerhub.

## What it does
1. Build the docker image on the host machine
2. Push the docker image to Dockerhub
3. Remove the docker image from the host machine

## Input arguments
1. `dockerhub_username` - Dockerhub username
2. `docker_image_name` - Name to give to the docker image

## How to run
Enable the permission to execute the script (in Linux/Ubuntu): \
`chmod +x dockerhub_push.sh`

Run the script: \
`./dockerhub_push.sh <dockerhub_username> <docker_image_name>`