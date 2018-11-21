#!/usr/bin/env bash

# Change tag with each version of Bioconductor
docker build -t bioc_devel_39 .

# docker run --interactive --tty --volume /path/to/folder/on/system:/path/within/docker bioc_devel_39 bash
