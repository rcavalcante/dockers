FROM bioconductor/release_core2:R3.5.1_Bioc3.8

RUN apt-get update -qq && apt-get -y install libssl-dev libssh2-1-dev libcurl4-openssl-dev libxml2-dev python3-pip 

RUN pip3 install snakemake psutil

RUN Rscript -e "install.packages(c('readr','ggplot2','reshape2','devtools','optparse','gplots','RColorBrewer','openxlsx','rmarkdown')); BiocManager::install(c('annotatr','chipenrich','bsseq','limma','org.Hs.eg.db','org.Mm.eg.db','DSS','BSgenome.Hsapiens.UCSC.hg19','BSgenome.Hsapiens.UCSC.hg38','BSgenome.Mmusculus.UCSC.mm10'), ask = FALSE); devtools::install_github('sartorlab/methylSig@v0.5.0-beta');"
