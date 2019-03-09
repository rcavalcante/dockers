#!/usr/bin/env bash

# Change tag with each version of Bioconductor
docker build --no-cache -t rcavalcante/r3.4.4_bioc3.6 .

docker push rcavalcante/r3.4.4_bioc3.6:latest

# Run with
# docker run --interactive --tty --volume /path/to/folder/on/system:/path/within/docker rcavalcante/r3.4.4_bioc3.6 bash
