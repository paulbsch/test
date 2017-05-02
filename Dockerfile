FROM ubuntu:16.04
#FROM nimbix/ubuntu-base:trusty

RUN apt-get -y update && \
    apt-get -y install curl && \
    curl -H 'Cache-Control: no-cache' \
        https://raw.githubusercontent.com/nimbix/image-common/master/install-nimbix.sh \
        | bash

EXPOSE 22

ADD AppDef.json /etc/NAE/AppDef.json
ADD test.sh /usr/local/bin/test.sh

