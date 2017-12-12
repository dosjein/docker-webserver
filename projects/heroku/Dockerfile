FROM debian:jessie
MAINTAINER Ronalds Sovas <vk@dosje.in>

RUN set -xe \
    && apt-get update \
    && apt-get install -y autoconf \
                          build-essential \
                          git \
                          wget \
                          sudo \
    && wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh 

ADD start.sh /start.sh
ADD alias.txt /.alias
RUN chmod 755 /start.sh
CMD ["/start.sh"]