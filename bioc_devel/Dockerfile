FROM bioconductor/devel_core2

## Install R packages for development
RUN Rscript -e "install.packages(c('devtools','optparse','rmarkdown','roxygen2','testthat')); source('http://bioconductor.org/biocLite.R'); biocLite(c('BiocStyle','annotatr','chipenrich'));"
