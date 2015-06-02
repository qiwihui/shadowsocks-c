# Docker with shadowsocks in pure c

FROM ubuntu:14.04
MAINTAINER Chris Qiu <qwh005007@gmail.com>

RUN apt-get install -y wget
RUn wget -O- http://shadowsocks.org/debian/1D27208A.gpg | sudo apt-key add -
RUN echo "deb http://shadowsocks.org/debian wheezy main" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y --force-yes shadowsocks-libev

ENTRYPOINT ["/usr/bin/ss-server"]
