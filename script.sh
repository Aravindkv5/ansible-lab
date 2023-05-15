#!bin/bash
sudo echo "ec2-user:ec2@user" | sudo chpasswd
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo service ssh restart