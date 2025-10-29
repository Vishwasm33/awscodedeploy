#!/bin/bash
echo "Cleaning up old Docker containers and images..."
sudo docker stop $(sudo docker ps -a -q) 2>/dev/null || true
sudo docker rm $(sudo docker ps -a -q) 2>/dev/null || true
sudo docker rmi $(sudo docker images -q) 2>/dev/null || true
echo "Cleanup complete."
