1 Create 2 instance: Linux Amazon, Linux Ubuntu with Key pair
2 Create VPC 
3 Create subnet
4 Create security group
5 Configure Route Table
6 Create, Attach Internet Gateway
7 Configure Inbound rules: SSH:22, HTTP:80, ICMP IPv4
8 Connect to Instances from client "MobaExterm"
9 Check ping from host to instances, from instance to instance
10 Configure,connect SSH from instance to instance with key pair
11 Install Apache to Amazon Linux "sudo yum install httpd; sudo service httpd start; sudo service httpd status; chkconfig on (Apache will autostart after rebooting OS)
12 Create html web page "var/www/html/index.html" 
13 Check web page from host
14 Check web page from Ubuntu instance (sudo apt-get install curl wget lynx w3m elinks - utilti to display web page)
15 Put web page content to variable (page="$(curl http://34.228.59.210/))" 
16 Print web page content in terminal echo $page

