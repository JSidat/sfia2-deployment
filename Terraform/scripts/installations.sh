#!/bin/bash
sudo apt update -y

# Installing Ansible
sudo apt install python3-pip -y
mkdir -p ~/.local/bin
echo 'PATH=$PATH:~/.local/bin' >> ~/.bashrc
source ~/.bashrc
pip3 install --user ansible 

sleep 20

#install jenkins
sudo apt install openjdk-8-jdk -y 

wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update -y
sudo apt-get install jenkins -y

sleep 20

#AWS CLI Install
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo apt install unzip -y
unzip awscliv2.zip
sudo ./aws/install








