#!/bin/bash

# Update repositories and install necessary packages
yum install wget unzip httpd -y

# Start the Apache HTTP Server
systemctl start httpd

# Enable the Apache HTTP Server to start on boot
systemctl enable httpd

# Download and unzip the website content
wget https://www.tooplate.com/zip-templates/2117_infinite_loop.zip
unzip -o 2117_infinite_loop.zip

# Copy the unzipped content to the web server's document root
cp -r 2117_infinite_loop/* /var/www/html/

# Restart the Apache HTTP Server to apply changes
systemctl restart httpd