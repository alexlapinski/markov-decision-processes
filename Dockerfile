FROM ubuntu:16.04

# Install 'graph-tool'
# ref: https://git.skewed.de/count0/graph-tool/wikis/installation-instructions

# Add Sources
RUN echo 'deb http://downloads.skewed.de/apt/xenial xenial universe\n' >> /etc/apt/sources.list
RUN echo 'deb-src http://downloads.skewed.de/apt/xenial xenial universe\n' >> /etc/apt/sources.list

RUN apt-key adv --keyserver pgp.skewed.de --recv-key 612DEFB798507F25

# Update
RUN apt-get update

# Install graph tool
RUN apt-get install -y python3-graph-tool
