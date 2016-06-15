FROM debian
FROM bowtie2
MAINTAINER Raymond Cavalcante <rcavalca@umich.edu>

RUN apt-get update && \
apt-get install -y \
  perl \
  curl \
  zip && \
rm -rf /var/lib/apt/lists/* && \
apt-get clean autoclean && \
apt-get autoremove -y

RUN cd apps && \
	curl -L \
	"https://github.com/FelixKrueger/Bismark/archive/0.16.1.zip" \
	> Bismark-0.16.1.zip && \
	unzip Bismark-0.16.1.zip && \
	rm Bismark-0.16.1.zip

ENV PATH=${PATH}:/apps/Bismark-0.16.1
