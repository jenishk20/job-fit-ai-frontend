#!/bin/bash

# navigate to app folder
cd /home/ec2-user/frontend-app

# install dependencies
npm install
npm run build
cp -r dist/* /var/www/html
npm install pm2 -g