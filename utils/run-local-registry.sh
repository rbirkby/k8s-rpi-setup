#!/bin/sh -ex

export DOCKER_HOST=localhost
docker run -d -p 5000:5000 -e "REGISTRY_PROXY_REMOTEURL=https://registry-1.docker.io" --restart=always --name caching-registry registry:2
docker run -d -p 5001:5001 --restart=always --name local-registry registry:2
