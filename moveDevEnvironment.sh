#!/bin/bash
#Backup my dev environment and prepare for movement to another
#system
Timestamp=$(date +%Y%m%d_%H-%M)
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
