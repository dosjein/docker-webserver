FROM debian:jessie
MAINTAINER Ronalds Sovas <vk@dosje.in>

RUN set -xe \
    && apt-get update \
    && apt-get install -y autoconf \
                          build-essential \
                          git \
                          wget \
                          sudo \
                          python-pip \
                          screen \
                          python-dev \
    && pip install https://storage.googleapis.com/tensorflow/linux/cpu/tensorflow-0.12.0-cp27-none-linux_x86_64.whl \
    && pip install protobuf 

ADD start.sh /start.sh
ADD alias.txt /.alias
RUN chmod 755 /start.sh
CMD ["/start.sh"]
