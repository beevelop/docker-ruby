FROM beevelop/base

MAINTAINER Maik Hummel <m@ikhummel.com>

RUN apt-get -qq update && apt-get -qq install -y software-properties-common && \
    apt-get -qq update && \
    apt-add-repository -y ppa:brightbox/ruby-ng && \
    apt-get -qq update && \
    apt-get install -y ruby2.1 ruby2.1-dev && \
    apt-get purge -y software-properties-common && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    apt-get clean

CMD ["ruby"]
