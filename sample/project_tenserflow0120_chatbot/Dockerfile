FROM shivergard/tenserflow0120
MAINTAINER Ronalds Sovas <sovas@greenbox.lv>

ADD 000-default.conf /000-default.conf
ADD chat.sh /chat.sh

RUN useradd -ms /bin/bash docker \
	&& echo "docker\ndocker"  |passwd docker \
	&& echo "docker\ndocker"  |passwd root \
	&& git clone https://github.com/dosjein/chatbot-rnn.git \
	&& cd chatbot-rnn \
	&& apt-get -y install openssh-server apache2 php5 libapache2-mod-php5 expect \
	&& mv /000-default.conf /etc/apache2/sites-enabled/ \
	&& mkdir /var/run/sshd \
	&& sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' \
	&& chmod 755 /chat.sh

ADD ssh_config /etc/ssh/ssh_config

EXPOSE 22 80

CMD ["/chat.sh"]