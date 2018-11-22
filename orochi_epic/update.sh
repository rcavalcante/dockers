#!/usr/bin/env bash

# Whenever packages are updated with:
# BiocManager::install(ask = FALSE, update = TRUE)
# You should commit the changes with the latest tag

# This should only be run when ONE container is running
docker container commit --pause $(docker ps -q) rcavalcante/orochi_epic:R3.5.1_R3.8v1
