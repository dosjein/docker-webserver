#!/bin/bash

# ------------------------------------------
# Set Up life VkScript
# ------------------------------------------

if [ ! -f /send.sh ]
then
    echo 'while true; do php /var/www/artisan vk:messages; sleep 1; done' > /send.sh
    chmod -fR 777 /send.sh
    /send.sh &

fi

if [ ! -f /trigger.sh ]
then
    echo 'while true; do php /var/www/artisan vk:trigger 1 1 1; sleep 40; done' > /trigger.sh
    chmod -fR 777 /trigger.sh
    /trigger.sh &
fi


#Run Original start 
/start.sh