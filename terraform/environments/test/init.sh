#!/bin/bash

sudo amazon-linux-extras install -y  nginx1
sudo service nginx start
INSTANCE_ID=$(wget -q -O- http://169.254.169.254/latest/meta-data/instance-id)
echo $INSTANCE_ID
sudo rm -f /usr/share/nginx/html/index.html
sudo /bin/sh -c 'echo "Hi,  this is '"$INSTANCE_ID"'" >> /usr/share/nginx/html/index.html'
