#!/usr/bin/env bash

# Change tag with each version of Bioconductor
docker build -t bioc_release_36 .

# Run with
# docker run --interactive --tty --volume /path/to/folder/on/system:/path/within/docker bioc_release_36 bash
