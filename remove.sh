#!/bin/bash
sudo apt update && sudo apt upgrade -y && sudo apt install docker.io -y
for (( c=$1; c<=$2; c++ ))
do  
   docker rm $(docker stop $(docker ps -a -q --filter ancestor=db1000n$((c)) --format="{{.ID}}"))
   echo "Removed db1000n$c container"
done
