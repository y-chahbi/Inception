#!/bin/bash

useradd $FTPUSER

echo $FTPUSER:$FTPPASS | chpasswd
mkdir /home/$FTPUSER
mkdir /etc/vsftpd.user_list
sed -i '/^root/s/^/#/' /etc/ftpusers
service vsftpd reload

# service vsftpd reload
# Start vsftpd in the background
vsftpd
