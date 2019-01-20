FROM ubuntu:bionic
MAINTAINER Elliot Wright <hello@elliotdwright.com>

RUN \
    apt-get update && \
    apt-get install --no-install-recommends -y \
        openjdk-11-jdk && \
    apt-get autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64

CMD [ "bash" ]
