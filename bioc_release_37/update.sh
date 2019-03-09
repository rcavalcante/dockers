#!/usr/bin/env bash

# Whenever packages are updated with:
# biocLite(ask=FALSE)
# You should commit the changes with the latest tag

# This should only be run when ONE container is running and it is for bioc_devel_38
docker container commit --pause $(docker ps -q) rcavalcante/r3.5.1_bioc3.7

docker push rcavalcante/r3.5.1_bioc3.7:latest
