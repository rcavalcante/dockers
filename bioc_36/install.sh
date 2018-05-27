#!/usr/bin/env bash

# Change tag with each version of Bioconductor
docker build -t bioc_release_36 .

# Run with
# docker run --interactive --tty --volume /Users/rcavalca/Projects:/Projects bioc_release_37 bash
