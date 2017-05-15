FROM bioconductor/release_core2

RUN Rscript -e "install.packages(c('devtools','optparse','rmarkdown','roxygen2','testthat')); source('http://bioconductor.org/biocLite.R'); biocLite(c('BiocStyle','annotatr','chipenrich'));"
