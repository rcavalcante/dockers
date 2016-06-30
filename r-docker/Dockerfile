# A Dockerfile for installing the most recent version of R, including developer version
# for local, containerized build testing for debugging Travis errors when no local build errors
FROM debian:testing
MAINTAINER Raymond Cavalcante <rcavalca@umich.edu>
## Remain current
RUN apt-get update -qq
RUN apt-get dist-upgrade -y
RUN apt-get install -y --no-install-recommends libssl-dev libcurl4-openssl-dev libssh2-1-dev libxml2-dev pkg-config pandoc pandoc-citeproc r-base r-base-dev r-recommended littler
RUN ln -s /usr/share/doc/littler/examples/install.r /usr/local/bin/install.r

# Create R package install script
RUN touch r_packages.R && \
	echo "install.packages(c('curl','httr','knitr','git2r','devtools','optparse','readr','dplyr','ggplot2','rmarkdown','roxygen2','testthat'), repos='http://cran.rstudio.com')" >> r_packages.R && \
	echo "source('http://bioconductor.org/biocLite.R')" >> r_packages.R && \
	echo "biocLite(c('BiocStyle','GenomeInfoDb','GenomicRanges','IRanges','regioneR'))" >> r_packages.R && \
	Rscript r_packages.R

#	echo "devtools::install_github('rcavalcante/annotatr@v0.7.4')" >> r_packages.R && \
#	echo "devtools::install_github('sartorlab/methylSig@v0.4.3')" >> r_packages.R && \
