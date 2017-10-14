FROM bioconductor/devel_core2

RUN apt-get update -qq && apt-get -y install libssl-dev libssh2-1-dev libcurl4-openssl-dev libxml2-dev

RUN Rscript -e "install.packages(c('devtools','optparse','rmarkdown','roxygen2','testthat')); source('http://bioconductor.org/biocLite.R'); biocLite(c('BiocStyle','annotatr','chipenrich'), ask = FALSE);"
