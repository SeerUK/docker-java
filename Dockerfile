FROM ubuntu:xenial
MAINTAINER Elliot Wright <elliot@elliotwright.co>

ENV JAVA_VERSION 8u91

RUN \
    apt-get update && \
    apt-get install --no-install-recommends -y \
        openjdk-8-jre=${JAVA_VERSION}* && \
    apt-get autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64

CMD [ "bash" ]
