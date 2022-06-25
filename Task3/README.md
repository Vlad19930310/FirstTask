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
17. Connect to Red Hat instance by SSH from Ubuntu instance
18. Copy by ```scp``` Nginx package 
19. Install Nginx with custom web page
20. Install ``curl`` to ubuntu 
21. Get content from index.html(RedHat) from ubuntu using ```curl`` 
22. ```52.90.241.73``` To check custom page Apache2