#!/bin/bash
cd /home/ec2-user/frontend-deployment

# Stop existing containers
docker-compose down

# Build and start new containers
docker-compose up -d --build
