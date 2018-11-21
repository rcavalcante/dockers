FROM bioconductor/release_core2:R3.5.1_Bioc3.8

RUN apt-get update -qq && apt-get -y install libssl-dev libssh2-1-dev libcurl4-openssl-dev libxml2-dev python3-pip

RUN pip3 install snakemake psutil

RUN Rscript -e "install.packages(c('dendextend', 'devtools', 'dplyr', 'kableExtra', 'knitr', 'ggplot2', 'ggpubr', 'openxlsx', 'optparse', 'RColorBrewer', 'yaml')); BiocManager::install(c('annotatr', 'DMRcate', 'ENmix', 'IlluminaHumanMethylationEPICanno.ilm10b2.hg19', 'limma', 'minfi', 'org.Hs.eg.db', 'TxDb.Hsapiens.UCSC.hg19.knownGene'), ask = FALSE); devtools::install_github('ncchung/svdvis');"
