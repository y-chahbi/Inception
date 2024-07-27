#!/bin/bash

sleep 10

useradd $FTPUSER

echo $FTPUSER:$FTPPASS | chpasswd
mkdir /home/$FTPUSER

chmod -R 755 /home/$FTPUSER
chown -R 1000:1000 /home/$FTPUSER


mkdir /etc/vsftpd.user_list
sed -i '/^root/s/^/#/' /etc/ftpusers
service vsftpd reload

vsftpd
