#!/bin/bash
#Restore my dev environment
unzip /media/sf_VB-LX-Shared/*-devEnv.zip -d /tmp/devEnv
cp /tmp/devEnv/invheader-customer_39.sql /home/sij/Documents/
chown sij:sij /home/sij/Documents/* -R
cp -r /tmp/devEnv/2stpf/ /var/www/
chown www-data:www-data /var/www/2stpf -R

#create tmp directory
mkdir -p /tmp/$Timestamp-devEnv
#copy web directory and sql backup file
cp -r /var/www/2stpf /tmp/$Timestamp-devEnv
cp -r /home/sij/Dokumente/invheader-customer_39.sql /tmp/$Timestamp-devEnv
#change directory
cd /tmp/$Timestamp-devEnv
#create tar.gz on shared storage with host os
zip -r /media/sf_VB-LX-Shared/$Timestamp-devEnv.zip *
#tar -zcf /media/sf_VB-LX-Shared/$Timestamp-devEnv.tar.gz *



GRANT ALL PRIVILEGES ON myFirstGrid.* TO 'jqgrid'@'localhost';
