#!/bin/bash

#->  cd ~/ && rm -f ~/nastavi-ip.sh && wget -q https://raw.githubusercontent.com/BLBMS/Android-Mining/main/nastavi-ip.sh && chmod +x nastavi-ip.sh && ~/nastavi-ip.sh

#sudo apt-get -y update
#sudo apt-get -y upgrade
pkg install net-tools -y 
sudo apt install -y net-tools nano

# Nastavi IP
ifconfig_out=$(ifconfig)
ip_line=$(echo "$ifconfig_out" | grep 'inet 192')
phone_ip=$(echo "$ip_line" | cut -d'.' -f4 | cut -c1-3)
echo "IP=" $phone_ip
rm -f ~/*.ip
cat << EOF > ~/$phone_ip.ip
EOF
echo $$phone_ip >> ~/$phone_ip.ip
