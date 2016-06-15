FROM debian
MAINTAINER Raymond Cavalcante <rcavalca@umich.edu>

RUN apt-get update && \
apt-get install -y \
	python \
	samtools &&\
rm -rf /var/lib/apt/lists/* && \
apt-get clean autoclean && \
apt-get autoremove -y
