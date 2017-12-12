#!/bin/bash

# ------------------------------------------
# Set Up life VkScript
# ------------------------------------------

if [ ! -f /trigger.sh ]
then
    echo 'while true; do php /var/www/artisan vk:messages; sleep 1; done' > /trigger.sh
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