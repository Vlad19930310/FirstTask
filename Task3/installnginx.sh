#!/bin/bash
sudo wget https://nginx.org/packages/rhel/8/x86_64/RPMS/nginx-1.16.0-1.el8.ngx.x86_64.rpm
scp -i linux.pem nginx-1.16.0-1.el8.ngx.x86_64.rpm ec2-user@10.0.16.139:
ssh -i "linux.pem" ec2-user@10.0.16.139 'bash -s' < installnginx2.sh
