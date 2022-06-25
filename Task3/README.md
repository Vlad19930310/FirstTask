# Task 3 Iac Terraform AWS
1. Install terraform : Download terraform.exe; Edit environment variables -Path </terraform.exe>
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
9. Create .sh script for install: apache, create custom **index.html**, install docker.
10. Configure terraform.tf with ```.sh``` attached to ubuntu instance
