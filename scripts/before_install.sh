cd /home/ec2-user/frontend-app

# install node and npm
yum install curl
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
yum install nodejs -y
yum install npm -y
yum install nginx -y
# ufw allow 'Nginx HTTP'