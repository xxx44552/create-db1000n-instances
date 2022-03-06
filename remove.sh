#!/bin/bash
for (( c=$1; c<=$2; c++ ))
do  
   sudo docker rm $(sudo docker stop $(docker ps -a -q --filter ancestor=db1000n$((c)) --format="{{.ID}}"))
   echo "Removed db1000n$c container"
done
