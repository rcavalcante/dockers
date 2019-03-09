#!/usr/bin/env bash

# Change tag with each version of Bioconductor
docker build --no-cache -t rcavalcante/r3.5.1_bioc3.7 .

docker push rcavalcante/r3.5.1_bioc3.7:latest

# Run with
# docker run --interactive --tty --volume /path/to/folder/on/system:/path/within/docker rcavalcante/r3.5.1_bioc3.7 bash
