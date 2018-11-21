#!/usr/bin/env bash

# Whenever packages are updated with:
# BiocManager::install(ask = FALSE, update = TRUE)
# You should commit the changes with the latest tag

# This should only be run when ONE container is running and it is for bioc_devel_38
docker container commit --pause $(docker ps -q) bioc_devel_39:latest
