#!/bin/bash
#Restore my dev environment
unzip /media/sf_VB-LX-Shared/*-devEnv.zip -d /tmp/devEnv
cp /tmp/devEnv/invheader-customer_39.sql /home/sij/Documents/
chown sij:sij /home/sij/Documents/* -R
cp -r /tmp/devEnv/2stpf/ /var/www/
chown www-data:www-data /var/www/2stpf -R
chmod 775 /var/www/2stpf -R
