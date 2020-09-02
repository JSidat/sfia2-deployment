#!/bin/bash
sudo groupadd docker

sudo usermod -aG docker $USER

 ## allowing jenkins user to run sudo commands
sudo su
echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
 ## avoid typing sudo in command line
echo "alias docker='sudo docker '" >> /home/jenkins/.bashrc



