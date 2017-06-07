FROM ubuntu:xenial
#FROM nimbix/ubuntu-base
#FROM nimbix/ubuntu-base:xenial
#FROM ubuntu:trusty
#

ENV TESTENV teststring
RUN apt-get -y update && \
    apt-get -y install curl && \
    curl -H 'Cache-Control: no-cache' \
        https://raw.githubusercontent.com/nimbix/image-common/master/install-nimbix.sh \
        | bash -s -- --setup-nimbix-desktop

#RUN dpkg-divert --local --rename --add /sbin/initctl
#RUN ln -s /bin/true /sbin/initctl

EXPOSE 22

ADD AppDef.json /etc/NAE/AppDef.json
ADD test.sh /usr/local/bin/test.sh

#RUN rm -f /usr/sbin/policy-rc.d /sbin/initctl && \
#    dpkg-divert --rename --remove /sbin/initctl

