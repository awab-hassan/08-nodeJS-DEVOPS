#!/usr/bin/bash

export IMAGE_ADDRESS=$1

echo "Starting script"

docker-compose -f dockercompose.yaml up -d