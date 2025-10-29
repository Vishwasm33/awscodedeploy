#!/bin/bash
set -e

echo "Starting Docker container..."

# Pull latest image
sudo docker pull vishwasm0881/simple-python-flask-app:latest

# Stop old container if running
containerid=$(sudo docker ps -q --filter "name=samplepython")
if [ -n "$containerid" ]; then
  echo "Stopping old container ID: $containerid"
  sudo docker stop "$containerid"
  sudo docker rm "$containerid"
fi

# Start new container
sudo docker run -d -p 5000:5000 --name samplepython vishwasm0881/simple-python-flask-app:latest

echo "Container started successfully!"

