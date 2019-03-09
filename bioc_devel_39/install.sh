#!/usr/bin/env bash

# Change tag with each version of Bioconductor
docker build -t rcavalcante/rdev_bioc3.9 .

docker push rcavalcante/rdev_bioc3.9:latest

# docker run --interactive --tty --volume /path/to/folder/on/system:/path/within/docker rcavalcante/rdev_bioc3.9 bash
