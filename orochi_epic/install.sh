#!/usr/bin/env bash

# Change tag with each version of Bioconductor
docker build --no-cache -t orochi_epic .

# Run with
# docker run --interactive --tty --volume /path/to/folder/on/system:/path/within/docker orochi_epic bash
