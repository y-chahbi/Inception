#!/bin/bash

useradd $FTPUSER

echo $FTPUSER:$FTPPASS | chpasswd
apt-get install ftp -y
# Add FTP user to vsftpd userlist
echo $FTPUSER >> /etc/vsftpd.userlist
echo $FTPUSER >> /etc/shells
cp /etc/vsftpd.userlist /etc/vsftpd.user_list
mkdir -p /var/run/vsftpd/empty
chown -R $FTPUSER:$FTPUSER /srv/ftp
sed -i '/^root/s/^/#/' /etc/ftpusers
# service vsftpd reload
# Start vsftpd in the background
vsftpd
