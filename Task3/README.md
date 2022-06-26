# Task 3 Iac Terraform AWS
1. Install terraform : Download terraform.exe; Edit environment ```variables -Path </terraform.exe>```(Windows)
2. Verify terraform: ```terraform --version```
3. Install AWS CLI
4. Verify AWS CLI: ```aws --version```
5. Create AWS account IAM with Administrator polices
6. Create Terraform directory 
7. Create terraform.tf file
8. Configure terraform.tf: VPC; Internet Gateway; Public Subnet; Private Subnet; <br /> 
Route table from Internet Gateway to Internet; Association public route table with public subnet; <br /> 
Two instance (Ubuntu, RedHat) with parametrs security group, existing ssh key. One of them with public subnet  <br /> 
Second with private subnet; Securiry group with inbound and outbound rules ssh,icmp,http,https
9. Create .sh script for install: apache, create custom ```index.html```, install docker.
10. Configure terraform.tf with ```.sh``` attached to ubuntu instance
11. Put Access keys and Region from IAM User to PowerShell session(Windows) or terminal as Variable
12. Make ```terraform init``` in folder where terraform.tf contained
13. Make ```terraform plan``` to look what will craeting
14. Make ```terraform apply``` to create infrastructure
15. Connect to Ubuntu instance by SSH
16. Put SSH key to ssh folder
17. Download ```rpm``` package from Nginx website to ubuntu servrer
18. By ```scp``` command copy ```.rpm``` to RedHat My Ex: ```scp -i linux.pem nginx-1.22.0-1.el8.ngx.x86_64.rpm ec2-user@10.0.16.139:```
19. Connect to RedHat from Ubuntu via ssh with ssh key
20. Install nginx from package with ```rpm``` command My Ex:```sudo rpm -i nginx-1.22.0-1.el8.ngx.x86_64.rpm```
21. Start nginx ```sudo service nginx start```
22. Edit ```index.htm``` from defalt directory
23. Go back to ubuntu and check ```curl <nginxhost ip>``` content from web page 
24. And you also can use ```.sh``` My Ex: ```installnginx.sh, installnginx2.sh```

