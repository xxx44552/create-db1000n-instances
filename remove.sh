#!/bin/bash
for (( c=$1; c<=$2; c++ ))
do  
   sudo docker rm $(sudo docker stop $(sudo docker ps -a -q --filter name=db1000n$((c))))
   echo "Removed db1000n$c container"
done
