#!/bin/sh

#Start e Stop na VM conforme horário
#Author : Paulo Amaral

#CRON - Adjust 
#00 8 * * 1-5 /tmp/script.sh
#00 18 * * 1-5 /tmp/script.sh

HORA=$(date +%H%M)

# -GE maior ou igual

# -LE menor ou igual

# -A and


if [ $HORA -ge 800 ]; then

    #gcloud compute instances start NAMES [NAMES …] [--csek-key-file=FILE] [--zone=ZONE] [GLOBAL-FLAG …]

    gcloud compute instances start paulo-vm --zone=projects/XYZ/zones/us-east1-a

elif [ $HORA -ge 1800 ]; then

    #gcloud compute instances stop NAMES [NAMES …] [--discard-local-ssd] [--zone=ZONE] [GLOBAL-FLAG …]

  	gcloud compute instances stop paulo-vm --zone=projects/XYZ/zones/us-east1-a

fi
