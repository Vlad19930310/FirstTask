#!/bin/bash
sudo rpm -i nginx-1.16.0-1.el8.ngx.x86_64.rpm
sudo chown -R ec2-user /usr/share/nginx/html 
echo '<h2>' > /usr/share/nginx/html/index.html 
echo 'HELLO from  Uladzislau Zhaludkovich' >> /usr/share/nginx/html/index.html
echo '</h2>' >> /usr/share/nginx/html/index.html 
sudo service nginx start