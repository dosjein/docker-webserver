#!/bin/bash

# ------------------------------------------
# Create Trigger file
# ------------------------------------------

if [ ! -f /trigger.sh ]
then
	#Simple Heroku with no PreAuth
	if [ ! -f ~/.netrc ]
	then
	    echo 'tail -f /dev/null' > /trigger.sh
	fi

	if [ -f ~/.netrc ]
	then
	    echo 'cd /opt; while true; do git push heroku master; sleep 300; done' > /trigger.sh
	fi
    chmod -fR 777 /trigger.sh
fi

# ------------------------------------------
# Add Envimental Setup for Aliases
# ------------------------------------------
echo 'Add Envimental Setup for Aliases'

if [ ! -f ~/.bashrc ]
then
    echo "source /.alias" >> ~/.bashrc
fi

/trigger.sh