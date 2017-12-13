#!/bin/bash
screen -S 'sshd' -dm bash -c "sleep 10; /usr/sbin/sshd -D"

chown -fR www-data:www-data /chatbot-rnn/

# ------------------------------------------
# Add Envimental Setup for Aliases
# ------------------------------------------
echo 'Add Envimental Setup for Aliases'

if [ ! -f ~/.bashrc ]
then
    echo "source /.alias" >> ~/.bashrc
fi

service apache2 start

if [ ! -d /chatbot-rnn/models/reddit ]
then
	cd /chatbot-rnn/models
	wget http://greenbox.lv/chuck.zip
	apt-get install -y zip
	unzip chuck.zip
fi

if [ ! -f /chatbot-rnn/.env ]
then
	cp /chatbot-rnn/.env.example /chatbot-rnn/.env
fi

while true
do 
	chown -fR www-data:www-data /chatbot-rnn/
    eval "/chatbot-rnn/shell/cron.sh"
    sleep 1
done