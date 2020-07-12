#!/usr/bin/env bash

#simply ufw setup script
echo 'Installing and setting up uncomplicated firewall...'
sudo apt install ufw
echo 'Your IPV6 setting is:'
cat /etc/default/ufw | grep IPV6
echo 'If it is incorrect please edit in /etc/default/ufw'
sudo ufw default deny incoming
sudo ufw default allow outgoing
echo 'ssh is not currently allowed'
#sudo ufw allow ssh
#sudo ufw allow port# if ssh not using 22
sudo ufw enable
sudo ufw status verbose
#sudo ufw disable
