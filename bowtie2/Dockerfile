FROM debian
FROM samtools
MAINTAINER Raymond Cavalcante <rcavalca@umich.edu>

RUN apt-get update && \
apt-get install -y \
  curl \
  zip && \
rm -rf /var/lib/apt/lists/* && \
apt-get clean autoclean && \
apt-get autoremove -y

RUN mkdir apps &&\
	cd apps && \
	curl -L \
	"https://github.com/BenLangmead/bowtie2/releases/download/v2.2.9/bowtie2-2.2.9-linux-x86_64.zip" \
	> bowtie2-2.2.9-linux-x86_64.zip && \
	unzip bowtie2-2.2.9-linux-x86_64.zip && \
	rm bowtie2-2.2.9-linux-x86_64.zip

ENV PATH=${PATH}:/apps/bowtie2-2.2.9
