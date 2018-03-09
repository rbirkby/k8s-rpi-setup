#!/bin/sh -ex

export DOCKER_HOST=localhost
docker run -d -p 5000:5000 -e "REGISTRY_proxy_remoteurl=https://registry-1.docker.io" --restart=always --name registry registry:2
