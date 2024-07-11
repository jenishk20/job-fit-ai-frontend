#!/bin/bash
cd /home/ec2-user/frontend

# Stop existing containers
docker-compose down

# Build and start new containers
docker-compose up -d --build
