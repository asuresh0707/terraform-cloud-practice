#!/bin/bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl enable httpd
sudo service httpd start
echo "<h1>welcome to us-east-1 region of usa</h1>" | sudo tee /var/www/html/index.html