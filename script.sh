#!bin/bash
#!/usr/bin/env bash
#Install SSM Agent 
sudo yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm

sudo systemctl status amazon-ssm-agent

sudo systemctl start amazon-ssm-agent
sudo echo "ec2-user:ec2@user" | sudo chpasswd
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo service ssh restart