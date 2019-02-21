FROM ubuntu:bionic
MAINTAINER Elliot Wright <hello@elliotdwright.com>

RUN set -x \
    && apt-get update \
    && apt-get install -y curl \
    && apt-get autoremove \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN set -x \
    && curl -v https://download.java.net/java/GA/jdk11/9/GPL/openjdk-11.0.2_linux-x64_bin.tar.gz -o /tmp/openjdk11.tar.gz

RUN set -x \
    && mkdir -p /usr/lib/jvm \
    && tar xzvf /tmp/openjdk11.tar.gz --directory /usr/lib/jvm \
    && rm -f /tmp/openjdk11.tar.gz

RUN set -x \
    && for bin in /usr/lib/jvm/jdk-11.0.2/bin/*; do \
        update-alternatives --install /usr/bin/$(basename $bin) $(basename $bin) $bin 100; \
    done \
    && for bin in /usr/lib/jvm/jdk-11.0.2/bin/*; do \
        update-alternatives --set $(basename $bin) $bin; \
    done

ENV JAVA_HOME /usr/lib/jvm/jdk-11.0.2

CMD [ "bash" ]
