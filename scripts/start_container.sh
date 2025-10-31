#!/bin/bash
set -e
export PATH=$PATH:/usr/bin

echo "Starting Docker container..."

# Pull latest image
/usr/bin/docker pull vishwasm0881/simple-python-flask-app:latest

# Stop old container if running
containerid=$(/usr/bin/docker ps -q --filter "name=samplepython")
if [ -n "$containerid" ]; then
  echo "Stopping old container ID: $containerid"
  /usr/bin/docker stop "$containerid"
  /usr/bin/docker rm "$containerid"
fi

# Start new container
/usr/bin/docker run -d -p 5000:5000 --name samplepython vishwasm0881/simple-python-flask-app:latest

echo "Container started successfully!"
