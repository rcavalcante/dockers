#!/usr/bin/env bash

# Change tag with each version of Bioconductor
docker build --no-cache -t rcavalcante/orochi_epic:R3.5.1_R3.8v1 .

# Run with
# docker run --interactive --tty --volume /path/to/folder/on/system:/path/within/docker orochi_epic bash

# Also need to install customized DMRcate in Orochi_EPIC/envs
# Also need to install annotatr from devtools::install_github()
