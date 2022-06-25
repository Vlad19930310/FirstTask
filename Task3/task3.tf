provider "aws" {
}
#Create VPC
resource "aws_vpc" "terraform" {                
cidr_block              = "10.0.0.0/16"     
instance_tenancy        = "default"
enable_dns_hostnames    = true
enable_dns_support      = true
tags                    = {
Name                    = "terraform_vpc"
}  
}
#Create Internet Gateway for VPC
resource "aws_internet_gateway" "IGW" {    
vpc_id                  = aws_vpc.terraform.id  
tags                    = {
Name                    = "terraform_gateway"
}            
}
#Create public subnet
resource "aws_subnet" "publicsubnets" {    
vpc_id                  = aws_vpc.terraform.id
cidr_block              = "10.0.10.0/24" 
map_public_ip_on_launch = true
tags                    = {
Name                    = "terraform_public_subnet"
}         
}
#Create private subnet
resource "aws_subnet" "privatesubnets" {
vpc_id                  = aws_vpc.terraform.id
cidr_block              = "10.0.16.0/24"  
tags                    = {
Name                    = "terraform_private_subnet"
}       
}
#Create Attach route table from Internet Gateway to Internet(0.0.0.0/0)
resource "aws_route_table" "PublicRT" {    
vpc_id                  = aws_vpc.terraform.id
route {
cidr_block              = "0.0.0.0/0"               
gateway_id              = aws_internet_gateway.IGW.id
}
tags                    = {
Name                    = "terraform_route_table"
}
}
#Association public route table with public subnet
resource "aws_route_table_association" "PublicRTassociation" {
subnet_id               = aws_subnet.publicsubnets.id
route_table_id          = aws_route_table.PublicRT.id
}
#Create instance ubuntu
resource "aws_instance" "ubuntu_terraform" {
ami                     = "ami-052efd3df9dad4825"
instance_type           = "t2.micro"
key_name                = "linux"
vpc_security_group_ids  = [aws_security_group.terraform_security.id]
subnet_id               = aws_subnet.publicsubnets.id
user_data               = file("httpinstall.sh")
tags                    = {
Name                    = "ubuntu_terraform"
}
}
#Create instance redhat
resource "aws_instance" "redhat_terraform" {
ami                     = "ami-06640050dc3f556bb"
instance_type           = "t2.micro"
key_name                = "linux"
vpc_security_group_ids  = [aws_security_group.terraform_security.id]
subnet_id               = aws_subnet.privatesubnets.id
tags                    = {
Name                    = "redhat_terraform"
}
}
#Create security group with rules
resource "aws_security_group" "terraform_security" {
name                    = "terraform_security"
description             = "tcp22,tcp80,tcp443,icmpv4"
vpc_id                  = aws_vpc.terraform.id
ingress {
from_port               = "80"
to_port                 = "80"
protocol                = "tcp"
cidr_blocks            = ["0.0.0.0/0"]
}
ingress {
from_port               = "443"
to_port                 = "443"
protocol                = "tcp"
cidr_blocks             = ["0.0.0.0/0"]
}
ingress {
from_port               = "22"
to_port                 = "22"
protocol                = "tcp"
cidr_blocks             = ["0.0.0.0/0"]
}
ingress {
from_port               = "-1"
to_port                 = "-1"
protocol                = "icmp"
cidr_blocks             = ["0.0.0.0/0"]
}
egress {
from_port               = "0"
to_port                 = "0"
protocol                = "-1"
cidr_blocks             = ["0.0.0.0/0"]
}
}