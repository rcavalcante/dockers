FROM bioconductor/release_core2:R3.4.4_Bioc3.6

RUN apt-get update && apt-get -y install libssl-dev libssh2-1-dev libcurl4-openssl-dev libxml2-dev python3-pip rsync

RUN pip3 install snakemake psutil

RUN Rscript -e "install.packages(c('devtools', 'optparse', 'rmarkdown', 'roxygen2', 'testthat', 'knitr', 'boot', 'gplots')); source('http://bioconductor.org/biocLite.R'); biocLite(c('BiocCheck', 'BiocStyle', 'annotatr', 'bsseq', 'chipenrich', 'DelayedArray', 'DSS', 'GO.db', 'org.Dm.eg.db', 'org.Dr.eg.db', 'org.Hs.eg.db', 'org.Mm.eg.db', 'org.Rn.eg.db', 'TxDb.Dmelanogaster.UCSC.dm6.ensGene', 'TxDb.Drerio.UCSC.danRer10.refGene', 'TxDb.Hsapiens.UCSC.hg19.knownGene', 'TxDb.Hsapiens.UCSC.hg38.knownGene', 'TxDb.Mmusculus.UCSC.mm10.knownGene', 'TxDb.Rnorvegicus.UCSC.rn6.refGene'), ask = FALSE); devtools::install_github('sartorlab/methylSig');"
