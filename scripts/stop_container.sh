#!/bin/bash
set -e

echo "Stopping running Docker container (if any)..."

# Get container ID of running app
containerid=$(sudo docker ps -q --filter "name=samplepython")

# Stop and remove container if found
if [ -n "$containerid" ]; then
  echo "Stopping container ID: $containerid"
  sudo docker stop "$containerid"
  sudo docker rm "$containerid"
  echo "Container stopped and removed successfully."
else
  echo "No running container found."
fi

