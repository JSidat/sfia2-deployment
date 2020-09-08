#!/bin/bash
source ~/.bashrc

sudo docker-compose build

sudo docker push junaidsidat95/sfia2-images:service_1
sudo docker push junaidsidat95/sfia2-images:service_2
sudo docker push junaidsidat95/sfia2-images:service_3
sudo docker push junaidsidat95/sfia2-images:service_4

sudo docker stack deploy -c docker-compose.yaml sfia2