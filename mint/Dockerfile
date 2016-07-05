FROM debian:testing
FROM java
FROM python:2
MAINTAINER Raymond Cavalcante <rcavalca@umich.edu>

# Install apt-get stuff
RUN apt-get update && \
apt-get install -y \
	pkg-config \
	libfreetype6-dev \
	curl \
	tar \
	zip \
	r-base \
	r-base-dev \
	r-recommended \
	bedtools \
	samtools &&\
rm -rf /var/lib/apt/lists/* && \
apt-get clean autoclean && \
apt-get autoremove -y && \
mkdir apps && \
mkdir apps/bin

# Install stand-alones
# bowtie2
RUN cd apps && \
	curl -L \
	"https://github.com/BenLangmead/bowtie2/releases/download/v2.2.9/bowtie2-2.2.9-linux-x86_64.zip" \
	> bowtie2-2.2.9-linux-x86_64.zip && \
	unzip bowtie2-2.2.9-linux-x86_64.zip && \
	rm bowtie2-2.2.9-linux-x86_64.zip

# bismark
RUN cd apps && \
	curl -L \
	"https://github.com/FelixKrueger/Bismark/archive/0.16.1.zip" \
	> Bismark-0.16.1.zip && \
	unzip Bismark-0.16.1.zip && \
	rm Bismark-0.16.1.zip

# UCSC tools
RUN curl -L "http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/bedGraphToBigWig" > apps/bin/bedGraphToBigWig && \
	curl -L "http://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/bedToBigBed" > apps/bin/bedToBigBed && \
	chmod 755 apps/bin/bedGraphToBigWig && \
	chmod 755 apps/bin/bedToBigBed

# bedops
RUN cd apps && \
	curl -L \
	"https://github.com/bedops/bedops/releases/download/v2.4.14/bedops_linux_x86_64-v2.4.14.tar.bz2" \
	> bedops_linux_x86_64-v2.4.14.tar.bz2 && \
	tar -jxvf bedops_linux_x86_64-v2.4.14.tar.bz2 && \
	rm bedops_linux_x86_64-v2.4.14.tar.bz2

# FastQC
RUN cd apps && \
	curl -L \
	"http://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.5.zip" \
	> fastqc_v0.11.5.zip && \
	unzip fastqc_v0.11.5.zip && \
	chmod 755 FastQC/fastqc && \
	rm fastqc_v0.11.5.zip

# trim_galore
RUN cd apps && \
	curl -L \
	"http://www.bioinformatics.babraham.ac.uk/projects/trim_galore/trim_galore_v0.4.1.zip" \
	> trim_galore_v0.4.1.zip && \
	unzip trim_galore_v0.4.1.zip && \
	mv trim_galore_zip trim_galore && \
	rm trim_galore_v0.4.1.zip

# Python packages
 RUN pip install numpy && \
	pip install scipy && \
	pip install pysam==0.8.0 && \
	pip install --upgrade pysam && \
	pip install multiqc==0.6.0 && \
	pip install MACS2==2.1.0.20140616 && \
	pip install cutadapt==1.10 && \
	pip install PePr==1.1.11

# Create R package install script
RUN touch /apps/r_packages.R && \
	echo "install.packages(c('devtools','optparse','readr','dplyr','ggplot2'), repos='http://cran.rstudio.com')" >> /apps/r_packages.R && \
	echo "source('http://bioconductor.org/biocLite.R')" >> /apps/r_packages.R && \
	echo "biocLite(c('BiocStyle','GenomeInfoDb','GenomicRanges','IRanges','regioneR'))" >> /apps/r_packages.R && \
	echo "devtools::install_github('rcavalcante/annotatr@v0.8.0')" >> /apps/r_packages.R && \
	echo "devtools::install_github('sartorlab/methylSig@v0.4.3')" >> /apps/r_packages.R && \
	Rscript /apps/r_packages.R

ENV PATH=${PATH}:/apps/Bismark-0.16.1:/apps/bowtie2-2.2.9:/apps/bedtools2/bin:/apps/FastQC:/apps/trim_galore:/apps/bin
