# Geth Blue Thessia (v1.9.2)
# --datadir /root/edu
# example: docker build -t eth-edu:0.1 .

FROM ubuntu:xenial

MAINTAINER foo <eth@kosmo.com>

ENV HOME /root
ENV DATADIR /root/edu
ENV TZ Asia/Seoul

RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections

# Install Geth from PPA
RUN apt-get update \ 
      && apt-get install -y software-properties-common \
      && add-apt-repository -y ppa:ethereum/ethereum \
      && apt-get update \
      && apt-get install -y ethereum

# Always combine RUN apt-get update with apt-get install in the same RUN
RUN apt-get update && apt-get install -y git curl tree vim

RUN echo $TZ > /etc/timezone && \
    apt-get update && apt-get install -y tzdata && \
    rm /etc/localtime && \
    ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

RUN mkdir $HOME/edu && mkdir $HOME/shared

# genesis.json
COPY ./genesis.json $HOME/genesis.json

RUN geth --datadir=$DATADIR --nousb init $HOME/genesis.json

COPY ./.vimrc $HOME/.vimrc

CMD ["/bin/bash"]
