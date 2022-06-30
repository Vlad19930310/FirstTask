resource "aws_instance" "ubuntu_ansible1" {
ami                     = "ami-052efd3df9dad4825"
instance_type           = "t2.micro"
key_name                = "linux"
vpc_security_group_ids  = ["sg-0d1b9a46cb1643095"]
subnet_id               = "subnet-0acbdc5c3cd89f3a9"
tags                    = {
Name                    = "ubuntu_ansible1"
}
}
resource "aws_instance" "ubuntu_ansible2" {
ami                     = "ami-052efd3df9dad4825"
instance_type           = "t2.micro"
key_name                = "linux"
vpc_security_group_ids  = ["sg-0d1b9a46cb1643095"]
subnet_id               = "subnet-0acbdc5c3cd89f3a9"
tags                    = {
Name                    = "ubuntu_ansible2"
}
}
resource "aws_instance" "ubuntu_ansible3" {
ami                     = "ami-052efd3df9dad4825"
instance_type           = "t2.micro"
key_name                = "linux"
vpc_security_group_ids  = ["sg-0d1b9a46cb1643095"]
subnet_id               = "subnet-0acbdc5c3cd89f3a9"
tags                    = {
Name                    = "ubuntu_ansible3"
}
}