#!/usr/bin/env bash

# Change tag with each version of Bioconductor
docker build -t bioc_devel_38 .

# docker run --interactive --tty --volume /Users/rcavalca/Projects:/Projects bioc_devel_38 bash
