#!/bin/bash
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt install apache2 -y
sudo chown -R ubuntu /var/www/html -y
echo "<h3>Hello World!</h3>">/var/www/html/index.html
echo "<h2>">>/var/www/html/index.html
uname -a>>/var/www/html/index.html
echo "</h2>">>/var/www/html/index.html
sudo service apache2 start -y
sudo service apache2 status -y
sudo apt install curl 
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
