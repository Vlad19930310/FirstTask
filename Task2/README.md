# Task 2 Working with AWS Cloud, install Apache web server
1. Create 2 instance: Linux Amazon, Linux Ubuntu with Key pair in AWS cloud
2. Create VPC 
3. Create subnet
4. Create security group
5. Configure Route Table (Destination 0.0.0.0/0, Target<your Internet Gateway>)
6. Create, Attach Internet Gateway
7. Configure Inbound rules Security Groups: SSH:22, HTTP:80, ICMP IPv4
8. Connect to Instances from client **_MobaExterm_**
9. Check ping from host to instances, from instance to instance
10. Configure,connect SSH from instance to instance with key pair
11. Install Apache to Amazon Linux ```sudo yum install httpd``` ```sudo service httpd start``` ```sudo service httpd status``` 
12. ```chkconfig on``` (Apache will autostart after rebooting OS)
13. Create html web page ```var/www/html/index.html```
14. Check web page from host
15. Check web page from Ubuntu instance ```sudo apt-get install curl wget lynx w3m elinks``` - utilti to display web page
16. Put web page content to variable. Exemple: ``` page="$(curl http://34.228.59.210/) ```
17. Print web page content in terminal ```echo $page```
18. The result is **http://34.228.59.210/**
