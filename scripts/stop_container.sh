#!/bin/bash
set -e

echo "Stopping running Docker container (if any)..."

# Get container ID of running app
containerid=$(docker ps -q --filter "name=samplepython")

# Stop and remove container if found
if [ -n "$containerid" ]; then
  echo "Stopping container ID: $containerid"
  docker stop "$containerid"
  docker rm "$containerid"
  echo "Container stopped and removed successfully."
else
  echo "No running container found."
fi
