#!/bin/bash
source ~/.bashrc

docker-compose build

docker push junaidsidat95/sfia2-images:service_1
docker push junaidsidat95/sfia2-images:service_2
docker push junaidsidat95/sfia2-images:service_3
docker push junaidsidat95/sfia2-images:service_4

docker stack deploy -c docker-compose.yaml sfia2