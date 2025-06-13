#!/bin/bash
set -e

# Stop the container if it's running
if [ "$(docker ps -q -f name=simple-python-app)" ]; then
    echo "Stopping running container: simple-python-app"
    docker stop simple-python-app
    docker rm simple-python-app
else
    echo "No running container named simple-python-app"
fi
