FROM ubuntu:20.04

RUN apt update && apt upgrade -y

RUN apt install git curl -y

RUN curl -L https://github.com/jgm/pandoc/releases/download/2.14.0.3/pandoc-2.14.0.3-1-amd64.deb > pandoc.deb &&  dpkg -i pandoc.deb

RUN curl -L https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64 > jq &&  cp jq /usr/bin/jq &&  chmod +x /usr/bin/jq

RUN mkdir /app

WORKDIR /app

RUN git clone https://github.com/fuadnafiz98/bash-pandoc-ssg.git  .

RUN rm -rfd src

CMD bash ssg.sh
# CMD ls -lah /app/src
