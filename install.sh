#!/bin/bash

apt update && apt upgrade -y && apt install sudo locales --yes
dpkg-reconfigure -f noninteractive tzdata
apt update && apt upgrade -y

apt install nano -y
apt install lighttpd -y
apt install systemctl -y

echo "dir-listing.activate = \"enable\"" | tee -a /etc/lighttpd/lighttpd.conf
echo "dir-listing.encoding = \"utf-8\"" | tee -a /etc/lighttpd/lighttpd.conf

systemctl enable lighttpd
