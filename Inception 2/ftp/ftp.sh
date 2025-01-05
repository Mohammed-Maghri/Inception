#!/bin/bash
echo "Entering !"
mkdir -p /var/run/vsftpd/empty
chmod 755 /var/run/vsftpd/empty
touch -p /var/run/vsftpd/empty/file
echo "File Generated"
adduser --quiet --disabled-password --gecos "" "maghri"
echo "maghri:325006" | chpasswd
vsftpd
