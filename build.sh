#!/usr/bin/env bash

docker build -f Dockerfile.master -t rms1000watt/salt-master .
docker build -f Dockerfile.minion -t rms1000watt/salt-minion .

read -p "Would you like to push these images? (y/n)" -n 1 -r -t 10
echo ""

if [[ ! -z $REPLY ]] && [[ $REPLY = "y" ]]; then
  docker push rms1000watt/salt-master
  docker push rms1000watt/salt-minion
fi
