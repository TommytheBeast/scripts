#!/bin/bash
echo "Executing script."
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
sudo apt-get install clamtk
freshclam
sudo apt-get install ufw
ufw enable
ufw status
echo "sudo nano /etc/ssh/sshd_config |PermRootLogin no| LoginGraceTime 60| Protocol 2| PermitEmptyPasswords no| PasswordAuthentication| X11Forwarding no| UsePAM yes| UsePrivilegeSeperation yes|"