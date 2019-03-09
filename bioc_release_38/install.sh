#!/usr/bin/env bash

# Change tag with each version of Bioconductor
docker build -t rcavalcante/r3.5.2_bioc3.8 .

docker push rcavalcante/r3.5.2_bioc3.8:latest

# Run with
# docker run --interactive --tty --volume /path/to/folder/on/system:/path/within/docker rcavalcante/r3.5.2_bioc3.8 bash
