#!/bin/bash
sudo apt update && sudo apt upgrade -y && sudo apt install docker.io -y && sudo apt install iptraf -y && sudo apt install speedtest-cli -y

for (( c=$1; c<=$2; c++ ))
do  
   sudo docker run --restart=always --name=db1000n$((c)) --detach --pull=always ghcr.io/arriven/db1000n:latest
   echo "Started db1000n$c docker <------------"
done
