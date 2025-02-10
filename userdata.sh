#!/bin/bash

# Update the instance and install necessary packages
yum update -y
yum install -y httpd wget unzip

# Start Apache and enable it to start on boot
systemctl start httpd
systemctl enable httpd

# Navigate to the web root directory
cd /var/www/html

# Download a CSS template directly
wget https://www.free-css.com/assets/files/free-css-templates/download/page284/built-better.zip

# Unzip the template and move the files to the web root
unzip built-better.zip -d /var/www/html/
mv /var/www/html/html/* /var/www/html/

# Clean up unnecessary files
rm -r /var/www/html/html
rm built-better.zip

# Restart Apache to apply changes
systemctl restart httpd